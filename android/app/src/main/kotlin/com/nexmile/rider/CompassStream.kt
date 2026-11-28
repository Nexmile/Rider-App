package com.nexmile.rider

import android.app.Activity
import android.content.Context
import android.hardware.GeomagneticField
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.os.Build
import android.os.SystemClock
import android.view.Surface
import io.flutter.plugin.common.EventChannel
import kotlin.math.abs
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.sin

/**
 * The phone's compass, read the way Google Maps reads it, for the
 * `nexmile/compass` event channel.
 *
 * Uses the fused rotation vector (gyroscope, magnetometer and accelerometer
 * together) rather than the raw magnetometer, so the arrow turns smoothly
 * and does not swing with every jolt of the road. Falls back to accelerometer
 * plus magnetometer on phones without it.
 *
 * Each event is a map: `heading` in degrees clockwise from true north,
 * `accuracy` as Android's sensor status (0 unreliable to 3 high), and
 * `accuracyDegrees` when the phone estimates it. The app asks for a figure-8
 * when the accuracy is poor.
 */
class CompassStream(private val activity: Activity) :
    EventChannel.StreamHandler, SensorEventListener {

    private val sensors =
        activity.getSystemService(Context.SENSOR_SERVICE) as SensorManager
    private val rotationSensor: Sensor? =
        sensors.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR)
    private val accelerometer: Sensor? =
        sensors.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)
    private val magnetometer: Sensor? =
        sensors.getDefaultSensor(Sensor.TYPE_MAGNETIC_FIELD)

    private var sink: EventChannel.EventSink? = null

    private val rotation = FloatArray(9)
    private val remapped = FloatArray(9)
    private val orientation = FloatArray(3)
    private var gravity: FloatArray? = null
    private var geomagnetic: FloatArray? = null

    /**
     * The smoothed heading as a unit vector, so 359° and 1° average to 0°
     * rather than to 180°.
     */
    private var smoothSin = 0.0
    private var smoothCos = 1.0
    private var hasHeading = false

    /** Upright on a mount rather than flat in the hand. */
    private var upright = false

    private var status = SensorManager.SENSOR_STATUS_ACCURACY_HIGH
    private var accuracyDegrees: Double? = null
    private var declination = 0f

    private var lastSent = Double.NaN
    private var lastStatus = Int.MIN_VALUE
    private var lastSentAt = 0L

    val isAvailable: Boolean
        get() = rotationSensor != null ||
            (accelerometer != null && magnetometer != null)

    /**
     * Magnetic north to true north for where the rider is: a degree or two
     * across India, but free to get right once a position is known.
     */
    fun setLocation(latitude: Double, longitude: Double) {
        declination = GeomagneticField(
            latitude.toFloat(),
            longitude.toFloat(),
            0f,
            System.currentTimeMillis(),
        ).declination
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        sink = events
        hasHeading = false
        lastSent = Double.NaN
        lastStatus = Int.MIN_VALUE
        val rate = SensorManager.SENSOR_DELAY_GAME
        if (rotationSensor != null) {
            sensors.registerListener(this, rotationSensor, rate)
            // Only for its calibration status: the magnetometer is the part
            // that drifts out of calibration, and it says so on its events.
            magnetometer?.let {
                sensors.registerListener(this, it, SensorManager.SENSOR_DELAY_UI)
            }
        } else {
            accelerometer?.let { sensors.registerListener(this, it, rate) }
            magnetometer?.let { sensors.registerListener(this, it, rate) }
        }
    }

    override fun onCancel(arguments: Any?) {
        sensors.unregisterListener(this)
        sink = null
    }

    override fun onAccuracyChanged(sensor: Sensor, accuracy: Int) {
        if (sensor.type == Sensor.TYPE_MAGNETIC_FIELD) status = accuracy
    }

    override fun onSensorChanged(event: SensorEvent) {
        when (event.sensor.type) {
            Sensor.TYPE_ROTATION_VECTOR -> {
                SensorManager.getRotationMatrixFromVector(rotation, event.values)
                // Index 4, where present, is the phone's own estimate of the
                // heading's error in radians; -1 when it has none.
                accuracyDegrees =
                    if (event.values.size > 4 && event.values[4] >= 0) {
                        Math.toDegrees(event.values[4].toDouble())
                    } else {
                        null
                    }
                update()
            }
            Sensor.TYPE_ACCELEROMETER -> {
                gravity = event.values.clone()
                fromRaw()
            }
            Sensor.TYPE_MAGNETIC_FIELD -> {
                status = event.accuracy
                if (rotationSensor == null) {
                    geomagnetic = event.values.clone()
                    fromRaw()
                }
            }
        }
    }

    private fun fromRaw() {
        val g = gravity ?: return
        val m = geomagnetic ?: return
        if (SensorManager.getRotationMatrix(rotation, null, g, m)) update()
    }

    private fun update() {
        SensorManager.getOrientation(rotation, orientation)
        // Flat in the hand, "ahead" is the top edge of the phone. Upright on
        // a handlebar mount it is the way the back of the phone faces, as in
        // Google Maps; read flat-style, the azimuth spins as the phone stands
        // up. Two thresholds so it does not flicker between the two near 45°.
        val pitch = Math.toDegrees(abs(orientation[1]).toDouble())
        upright = if (upright) pitch > 40 else pitch > 50
        if (upright) {
            SensorManager.remapCoordinateSystem(
                rotation,
                SensorManager.AXIS_X,
                SensorManager.AXIS_Z,
                remapped,
            )
            SensorManager.getOrientation(remapped, orientation)
        }

        val raw = Math.toRadians(
            Math.toDegrees(orientation[0].toDouble()) + declination + screenTurn(),
        )
        if (!hasHeading) {
            smoothSin = sin(raw)
            smoothCos = cos(raw)
            hasHeading = true
        } else {
            smoothSin += (sin(raw) - smoothSin) * SMOOTHING
            smoothCos += (cos(raw) - smoothCos) * SMOOTHING
        }
        var heading = Math.toDegrees(atan2(smoothSin, smoothCos))
        if (heading < 0) heading += 360.0

        // About 25 a second at most, and only for a real change: each event
        // rebuilds the map on the Dart side.
        val now = SystemClock.elapsedRealtime()
        val turned = lastSent.isNaN() || angleBetween(heading, lastSent) >= 0.5
        if (now - lastSentAt < 40 || (!turned && status == lastStatus)) return
        lastSent = heading
        lastStatus = status
        lastSentAt = now
        sink?.success(
            mapOf(
                "heading" to heading,
                "accuracy" to status,
                "accuracyDegrees" to accuracyDegrees,
            ),
        )
    }

    /** The app is portrait only; upside-down portrait turns everything 180°. */
    private fun screenTurn(): Double {
        val rotation = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            activity.display?.rotation ?: Surface.ROTATION_0
        } else {
            @Suppress("DEPRECATION")
            activity.windowManager.defaultDisplay.rotation
        }
        return when (rotation) {
            Surface.ROTATION_90 -> 90.0
            Surface.ROTATION_180 -> 180.0
            Surface.ROTATION_270 -> 270.0
            else -> 0.0
        }
    }

    private fun angleBetween(a: Double, b: Double): Double {
        val d = abs(a - b) % 360.0
        return if (d > 180.0) 360.0 - d else d
    }

    private companion object {
        /** Share of each new reading taken: steady, still quick to turn. */
        const val SMOOTHING = 0.2
    }
}
