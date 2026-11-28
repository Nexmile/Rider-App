// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'تیز ڈیلیوری۔ تازہ مسکراہٹیں۔';

  @override
  String get chooseLanguageTitle => 'اپنی زبان منتخب کریں';

  @override
  String get chooseLanguageSubtitle =>
      'وہ زبان منتخب کریں جس میں آپ آسانی محسوس کرتے ہیں۔ آپ اسے کسی بھی وقت ترتیبات میں تبدیل کر سکتے ہیں۔';

  @override
  String get searchLanguageHint => 'زبان تلاش کریں';

  @override
  String get noLanguageFound => 'کوئی زبان نہیں ملی';

  @override
  String languagesAvailable(int count) {
    return '$count زبانیں دستیاب ہیں';
  }

  @override
  String get continueLabel => 'جاری رکھیں';

  @override
  String get selectedLabel => 'منتخب شدہ';

  @override
  String get defaultLabel => 'ڈیفالٹ';

  @override
  String get homeTitle => 'Nexmile میں خوش آمدید';

  @override
  String get homeSubtitle =>
      'تازہ گروسری، گرم کھانا اور روزمرہ کی ضروریات آپ کے قریبی دکانوں سے۔';

  @override
  String get changeLanguage => 'زبان تبدیل کریں';

  @override
  String get languageUpdated => 'زبان تبدیل ہو گئی';

  @override
  String get appLanguageLabel => 'ایپ کی زبان';

  @override
  String greetingNamed(String name) {
    return 'خوش آمدید، $name';
  }

  @override
  String get loginTitle => 'Nexmile میں سائن ان کریں';

  @override
  String get loginSubtitle =>
      'اپنا ای میل یا موبائل نمبر درج کریں، ہم آپ کو تصدیقی کوڈ بھیجیں گے۔';

  @override
  String get emailOrPhoneLabel => 'ای میل یا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com یا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'درست ای میل پتہ یا 10 ہندسوں کا موبائل نمبر درج کریں';

  @override
  String get loginHeadline =>
      'Nexmile کے ساتھ ڈیلیوری کریں۔ اپنے وقت پر کمائیں۔';

  @override
  String get loginOrSignUp => 'لاگ ان یا سائن اپ کریں';

  @override
  String get loginEmailHint => 'اپنا ای میل پتہ درج کریں';

  @override
  String get invalidEmail => 'درست ای میل پتہ درج کریں';

  @override
  String get loginHeroBadge => 'ڈیلیوری پارٹنر';

  @override
  String get sendCode => 'کوڈ بھیجیں';

  @override
  String get agreeToTermsOnContinue =>
      'جاری رکھنے سے آپ ہماری سروس کی شرائط اور رازداری کی پالیسی سے اتفاق کرتے ہیں۔';

  @override
  String get otpTitle => 'تصدیق کریں کہ یہ آپ ہی ہیں';

  @override
  String otpSubtitle(String target) {
    return '$target پر بھیجا گیا 6 ہندسوں کا کوڈ درج کریں';
  }

  @override
  String get otpHelpTitle => 'کوڈ نہیں ملا؟';

  @override
  String get otpHelpCheck =>
      'اوپر دیا گیا نمبر یا ای میل چیک کریں۔ اسے بدلنے کے لیے واپس جائیں۔';

  @override
  String get otpHelpWait =>
      'کوڈ آنے میں ایک منٹ تک لگ سکتا ہے۔ ٹائمر ختم ہونے پر آپ نیا کوڈ منگوا سکتے ہیں۔';

  @override
  String get otpHelpSpam => 'ای میل کے لیے اپنا اسپام فولڈر بھی دیکھیں۔';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'تصدیق کریں';

  @override
  String get resendCode => 'کوڈ دوبارہ بھیجیں';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سیکنڈ میں دوبارہ بھیجیں';
  }

  @override
  String get codeResent => 'نیا کوڈ بھیج دیا گیا ہے';

  @override
  String get incorrectCode =>
      'یہ کوڈ غلط ہے یا اس کی میعاد ختم ہو چکی ہے۔ نیا کوڈ منگوائیں۔';

  @override
  String get enterFullCode => 'پورے 6 ہندسے درج کریں';

  @override
  String get accountSuspended =>
      'یہ اکاؤنٹ معطل کر دیا گیا ہے۔ براہ کرم سپورٹ سے رابطہ کریں۔';

  @override
  String get tooManyAttempts =>
      'بہت زیادہ کوششیں ہو گئیں۔ براہ کرم کچھ دیر بعد دوبارہ کوشش کریں۔';

  @override
  String get sessionExpired =>
      'آپ کا سیشن ختم ہو گیا ہے۔ براہ کرم دوبارہ سائن ان کریں۔';

  @override
  String get networkError =>
      'انٹرنیٹ کنکشن نہیں ہے۔ اپنا کنکشن دیکھیں اور دوبارہ کوشش کریں۔';

  @override
  String get developmentCode => 'ڈیویلپمنٹ کوڈ';

  @override
  String get signOut => 'سائن آؤٹ';

  @override
  String get signedOut => 'آپ سائن آؤٹ ہو گئے ہیں';

  @override
  String get somethingWentWrong => 'کچھ غلط ہو گیا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get profileSectionDetails => 'آپ کی تفصیلات';

  @override
  String get profileSectionWork => 'کام';

  @override
  String get profileSectionApp => 'ایپ کی ترتیبات';

  @override
  String profileRiderId(String id) {
    return 'Rider ID $id';
  }

  @override
  String profileMemberSince(String date) {
    return 'Member since $date';
  }

  @override
  String get profileVerifiedPartner => 'Verified delivery partner';

  @override
  String get documentExpiredBadge => 'Expired';

  @override
  String get viewProfile => 'پروفائل دیکھیں';

  @override
  String get nameLabel => 'نام';

  @override
  String get emailLabel => 'ای میل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'اکاؤنٹ کی حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زیر التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصدیق شدہ';

  @override
  String get notProvided => 'شامل نہیں کیا گیا';

  @override
  String get retry => 'دوبارہ کوشش کریں';

  @override
  String get loginRiderNote => 'یہ ایپ Nexmile کے ڈیلیوری پارٹنرز کے لیے ہے۔';

  @override
  String get checkingYourAccount => 'آپ کا اکاؤنٹ چیک کیا جا رہا ہے';

  @override
  String get couldNotLoadAccount =>
      'ہم آپ کا اکاؤنٹ لوڈ نہیں کر سکے۔ اپنا کنکشن دیکھیں اور دوبارہ کوشش کریں۔';

  @override
  String get notARiderAccountTitle => 'یہ ڈیلیوری پارٹنر کا اکاؤنٹ نہیں ہے';

  @override
  String get notARiderAccount =>
      'یہ ای میل یا موبائل نمبر پہلے سے کسی اور Nexmile اکاؤنٹ پر رجسٹرڈ ہے۔ ڈیلیوری پارٹنر بننے کے لیے سائن آؤٹ کریں اور کوئی دوسرا ای میل یا نمبر استعمال کریں۔';

  @override
  String notARiderAccountFor(String role) {
    return 'یہ ای میل یا موبائل نمبر پہلے سے Nexmile $role کے طور پر رجسٹرڈ ہے۔ ڈیلیوری پارٹنر بننے کے لیے سائن آؤٹ کریں اور کوئی دوسرا ای میل یا نمبر استعمال کریں۔';
  }

  @override
  String get roleCustomer => 'گاہک';

  @override
  String get roleMerchant => 'مرچنٹ';

  @override
  String get roleAdmin => 'ایڈمن';

  @override
  String get useAnotherAccount => 'دوسرا اکاؤنٹ استعمال کریں';

  @override
  String get onboardingTitle => 'Nexmile پارٹنر بنیں';

  @override
  String get onboardingSubtitle =>
      'کچھ تفصیلات اور آپ کی دستاویزات، پھر ہماری ٹیم آپ کی تصدیق کرتی ہے۔ اس میں عام طور پر کام کے دو دن تک لگتے ہیں۔';

  @override
  String stepOfSteps(int current, int total) {
    return '$total میں سے مرحلہ $current';
  }

  @override
  String get stepIdentityTitle => 'آپ کے بارے میں';

  @override
  String get stepIdentitySubtitle =>
      'اپنا نام بالکل ویسا ہی درج کریں جیسا آپ کے آدھار کارڈ پر ہے۔';

  @override
  String get stepVehicleTitle => 'آپ کی گاڑی';

  @override
  String get stepVehicleSubtitle =>
      'بتائیں کہ آپ کیا چلاتے ہیں اور اس کی نمبر پلیٹ پر کیا نمبر ہے۔';

  @override
  String get stepIdentityNumbersTitle => 'شناختی نمبر';

  @override
  String get stepIdentityNumbersSubtitle =>
      'یہ ان دستاویزات سے میل کھانے چاہئیں جو آپ بعد میں اپ لوڈ کریں گے۔';

  @override
  String get stepLicenceTitle => 'لائسنس اور انشورنس';

  @override
  String get stepLicenceSubtitle =>
      'جس دن آپ ڈیلیوری شروع کریں، اس دن دونوں کارآمد ہونے چاہئیں۔';

  @override
  String get stepBankTitle => 'آپ کو ادائیگی کہاں ہو';

  @override
  String get stepBankSubtitle =>
      'آپ کی کمائی اسی اکاؤنٹ میں بھیجی جاتی ہے۔ اسے غور سے چیک کریں۔';

  @override
  String get stepDocumentsTitle => 'آپ کی دستاویزات';

  @override
  String get stepDocumentsSubtitle =>
      'ہر دستاویز کی تصویر اچھی روشنی میں لیں۔ JPG، PNG یا PDF، ہر ایک زیادہ سے زیادہ 5 MB۔';

  @override
  String get stepReviewTitle => 'چیک کریں اور جمع کرائیں';

  @override
  String get stepReviewSubtitle =>
      'جمع کرانے کے بعد آپ کی تفصیلات تب تک لاک رہیں گی جب تک ہماری ٹیم ان کا جائزہ نہ لے لے۔';

  @override
  String get saveAndContinue => 'محفوظ کریں اور جاری رکھیں';

  @override
  String get backLabel => 'واپس';

  @override
  String get fullNameLabel => 'پورا نام';

  @override
  String get fullNameHint => 'جیسا آپ کے آدھار پر لکھا ہے';

  @override
  String get dateOfBirthLabel => 'تاریخ پیدائش';

  @override
  String get selectDate => 'تاریخ منتخب کریں';

  @override
  String get vehicleTypeLabel => 'گاڑی کی قسم';

  @override
  String get vehicleMotorcycle => 'موٹر سائیکل';

  @override
  String get vehicleScooter => 'اسکوٹر';

  @override
  String get vehicleEv => 'الیکٹرک گاڑی';

  @override
  String get vehicleBicycle => 'سائیکل';

  @override
  String get vehicleWalk => 'پیدل';

  @override
  String get vehicleNoPapersNote =>
      'گاڑی کا نمبر یا RC ضروری نہیں۔ آپ سے صرف آدھار اور PAN مانگا جائے گا۔';

  @override
  String get vehicleNumberLabel => 'گاڑی کا نمبر';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC نمبر';

  @override
  String get aadhaarLabel => 'آدھار نمبر';

  @override
  String get aadhaarHint => '12 ہندسے';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ڈرائیونگ لائسنس نمبر';

  @override
  String get drivingLicenceExpiryLabel => 'لائسنس کب تک کارآمد ہے';

  @override
  String get insuranceNumberLabel => 'انشورنس پالیسی نمبر';

  @override
  String get insuranceExpiryLabel => 'انشورنس کب تک کارآمد ہے';

  @override
  String get bankAccountNameLabel => 'اکاؤنٹ ہولڈر کا نام';

  @override
  String get bankAccountNumberLabel => 'اکاؤنٹ نمبر';

  @override
  String get bankIfscLabel => 'IFSC کوڈ';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total میں سے $done اپ لوڈ شدہ';
  }

  @override
  String get uploadDocument => 'اپ لوڈ کریں';

  @override
  String get replaceDocument => 'تبدیل کریں';

  @override
  String get removeDocument => 'ہٹائیں';

  @override
  String get takePhoto => 'تصویر کھینچیں';

  @override
  String get chooseFromGallery => 'گیلری سے منتخب کریں';

  @override
  String get chooseFile => 'فائل منتخب کریں';

  @override
  String get uploadingLabel => 'اپ لوڈ ہو رہا ہے';

  @override
  String get documentRejected => 'مسترد';

  @override
  String get documentUploaded => 'اپ لوڈ شدہ';

  @override
  String get documentApproved => 'منظور';

  @override
  String get documentRequired => 'لازمی';

  @override
  String get documentOptional => 'اختیاری';

  @override
  String get fileTooLarge =>
      'یہ فائل 5 MB سے بڑی ہے۔ اسکین کے بجائے تصویر آزمائیں۔';

  @override
  String get unsupportedFileType => 'JPG، PNG یا PDF منتخب کریں۔';

  @override
  String get pickerUnavailable =>
      'یہ نہیں کھل سکا۔ ایپ کی کیمرہ اور تصویروں کی اجازتیں چیک کریں۔';

  @override
  String get uploadFailed =>
      'یہ اپ لوڈ نہیں ہو سکا۔ براہ کرم دوبارہ کوشش کریں۔';

  @override
  String get submitForVerification => 'تصدیق کے لیے جمع کرائیں';

  @override
  String get submitConfirmTitle => 'تصدیق کے لیے جمع کرائیں؟';

  @override
  String get submitConfirmBody =>
      'ہماری ٹیم کے جائزے کے دوران آپ کی تفصیلات اور دستاویزات لاک رہیں گی۔ فیصلہ ہونے تک آپ انہیں تبدیل نہیں کر سکیں گے۔';

  @override
  String get cancelLabel => 'منسوخ کریں';

  @override
  String get completeEverythingBeforeSubmitting =>
      'جمع کرانے سے پہلے ہر مرحلہ مکمل کریں اور تمام دستاویزات اپ لوڈ کریں۔';

  @override
  String get checkTheHighlightedFields =>
      'نمایاں کیے گئے خانے چیک کریں اور دوبارہ کوشش کریں۔';

  @override
  String get underReviewTitle => 'ہم آپ کی دستاویزات کی تصدیق کر رہے ہیں';

  @override
  String get underReviewBody =>
      'ہماری ٹیم عام طور پر کام کے دو دن میں جائزہ لے لیتی ہے۔ منظوری ملتے ہی ہم آپ کو بتا دیں گے۔';

  @override
  String get checkAgain => 'دوبارہ چیک کریں';

  @override
  String get stillUnderReview => 'ابھی جائزہ جاری ہے';

  @override
  String get rejectedTitle => 'ہم آپ کی تصدیق نہیں کر سکے';

  @override
  String get rejectedBody =>
      'نیچے ہماری ٹیم نے جو بتایا ہے اسے درست کریں، پھر اپنی دستاویزات دوبارہ بھیجیں۔';

  @override
  String get rejectionReasonLabel => 'وجہ';

  @override
  String get fixAndResubmit => 'درست کر کے دوبارہ جمع کرائیں';

  @override
  String get blockedTitle => 'آپ ابھی آن لائن نہیں جا سکتے';

  @override
  String get documentsExpiredMessage =>
      'آپ کے لائسنس یا انشورنس کی میعاد ختم ہو گئی ہے۔ آن لائن جانے کے لیے کارآمد دستاویزات اپ لوڈ کریں۔';

  @override
  String get awaitingVerificationMessage =>
      'آپ کی دستاویزات کی تصدیق ابھی جاری ہے۔';

  @override
  String get updateDocuments => 'دستاویزات اپ ڈیٹ کریں';

  @override
  String get riderHomeTitle => 'ڈیلیوری کے لیے تیار';

  @override
  String get shiftTodayEarnings => 'Today\'s earnings';

  @override
  String get shiftOrdersToday => 'Orders today';

  @override
  String get shiftCashCollected => 'Cash collected';

  @override
  String get shiftDetails => 'Details';

  @override
  String get dutyPillOn => 'ON';

  @override
  String get dutyPillOff => 'OFF';

  @override
  String get dutyPillBreak => 'BREAK';

  @override
  String get riderHomeSubtitle =>
      'آن لائن جائیں، ہم آپ کو قریب کی ڈیلیوریز بھیجیں گے۔';

  @override
  String get dutyStatusLabel => 'ڈیوٹی کی حالت';

  @override
  String get dutyOnline => 'آن لائن';

  @override
  String get dutyOffline => 'آف لائن';

  @override
  String get dutyOnBreak => 'بریک پر';

  @override
  String get goOnline => 'آن لائن جائیں';

  @override
  String get goOffline => 'آف لائن جائیں';

  @override
  String get takeABreak => 'بریک لیں';

  @override
  String get waitingForOrders => 'قریبی آرڈرز کا انتظار ہے';

  @override
  String get youAreOffline =>
      'آپ آف لائن ہیں۔ آپ کو کوئی ڈیلیوری نہیں بھیجی جائے گی۔';

  @override
  String get completedDeliveriesLabel => 'مکمل ڈیلیوریز';

  @override
  String get ratingLabel => 'ریٹنگ';

  @override
  String get notRatedYet => 'ابھی کوئی ریٹنگ نہیں';

  @override
  String get vehicleLabel => 'گاڑی';

  @override
  String get kycStatusLabel => 'تصدیق';

  @override
  String get kycPending => 'جمع نہیں کرایا';

  @override
  String get kycSubmitted => 'زیر جائزہ';

  @override
  String get kycVerified => 'منظور';

  @override
  String get kycRejected => 'مسترد';

  @override
  String get fieldRequired => 'یہ خانہ ضروری ہے';

  @override
  String get invalidAadhaar => 'اپنے آدھار نمبر کے 12 ہندسے درج کریں';

  @override
  String get invalidPan => 'درست PAN درج کریں، جیسے ABCDE1234F';

  @override
  String get invalidIfsc => 'درست IFSC کوڈ درج کریں، جیسے SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'نمبر بالکل ویسا ہی درج کریں جیسا پلیٹ پر لکھا ہے';

  @override
  String get invalidAccountNumber => 'درست اکاؤنٹ نمبر درج کریں';

  @override
  String get dateMustBeFuture => 'یہ تاریخ گزر چکی ہے';

  @override
  String get mustBeEighteen =>
      'ڈیلیوری کرنے کے لیے آپ کی عمر کم از کم 18 سال ہونی چاہیے';

  @override
  String get docAadhaarFront => 'آدھار کارڈ (سامنے)';

  @override
  String get docAadhaarBack => 'آدھار کارڈ (پیچھے)';

  @override
  String get docDrivingLicence => 'ڈرائیونگ لائسنس';

  @override
  String get docVehicleRc => 'گاڑی کا رجسٹریشن سرٹیفکیٹ';

  @override
  String get docInsurance => 'گاڑی کی انشورنس';

  @override
  String get docProfilePhoto => 'پروفائل تصویر';

  @override
  String get docPan => 'PAN کارڈ';

  @override
  String get docBankProof => 'منسوخ شدہ چیک یا بینک اسٹیٹمنٹ';

  @override
  String get ordersTab => 'آرڈرز';

  @override
  String get deliveryTab => 'ڈیلیوری';

  @override
  String get historyTab => 'ہسٹری';

  @override
  String get orderBoardTitle => 'آپ کے قریب آرڈرز';

  @override
  String get orderBoardSubtitle =>
      'سب سے قریبی ریستوران پہلے۔ فہرست خود بخود اپ ڈیٹ ہوتی ہے۔';

  @override
  String orderNumberLabel(String number) {
    return 'آرڈر $number';
  }

  @override
  String get pickupLabel => 'پک اپ';

  @override
  String get dropoffLabel => 'ڈیلیوری کا پتہ';

  @override
  String distanceMetres(String metres) {
    return '$metres میٹر';
  }

  @override
  String distanceKilometres(String km) {
    return '$km کلومیٹر';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چیزیں',
      one: '1 چیز',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'آپ کی کمائی';

  @override
  String get collectCashLabel => 'نقد وصول کریں';

  @override
  String get prepaidLabel => 'آن لائن ادا شدہ';

  @override
  String collectAtDoor(String amount) {
    return 'گاہک سے $amount نقد وصول کریں';
  }

  @override
  String get nothingToCollect => 'ادائیگی ہو چکی ہے۔ پیسے نہ مانگیں۔';

  @override
  String get acceptOrder => 'قبول کریں';

  @override
  String get viewOrder => 'دیکھیں';

  @override
  String get orderAccepted => 'آرڈر قبول ہو گیا۔ ریستوران کی طرف جائیں۔';

  @override
  String get orderAlreadyTaken =>
      'یہ آرڈر کسی اور رائیڈر نے لے لیا۔ یہ رہی تازہ فہرست۔';

  @override
  String get orderNoLongerYours => 'یہ آرڈر اب آپ کا نہیں ہے۔';

  @override
  String get boardEmptyTitle => 'ابھی کوئی آرڈر نہیں';

  @override
  String get boardEmptyBody =>
      'آن لائن رہیں۔ ریستوران مصروف ہوتے ہی فہرست خود بخود اپ ڈیٹ ہو جاتی ہے۔';

  @override
  String get boardOfflineTitle => 'آپ آف لائن ہیں';

  @override
  String get boardOfflineBody => 'آرڈرز ملنا شروع کرنے کے لیے آن لائن جائیں۔';

  @override
  String get boardBusyTitle => 'پہلے اپنی ڈیلیوری مکمل کریں';

  @override
  String get boardBusyBody =>
      'یہ آرڈر ڈیلیور ہونے کے بعد آپ دوسرا آرڈر لے سکتے ہیں۔';

  @override
  String get boardNoLocationTitle => 'ہمیں آپ کا مقام نہیں مل رہا';

  @override
  String get boardNoLocationBody =>
      'آرڈرز اس حساب سے ترتیب دیے جاتے ہیں کہ ریستوران کتنا قریب ہے، اس لیے کچھ بھی دکھانے کے لیے ہمیں آپ کا مقام چاہیے۔';

  @override
  String get boardNotVerifiedTitle => 'ابھی ڈیلیوری کی منظوری نہیں ملی';

  @override
  String get activeDeliveryTitle => 'آپ کی ڈیلیوری';

  @override
  String get headToRestaurant => 'ریستوران کی طرف جائیں';

  @override
  String get deliverToCustomer => 'گاہک کو ڈیلیور کریں';

  @override
  String get noActiveDeliveryTitle => 'ہاتھ میں کوئی آرڈر نہیں';

  @override
  String get noActiveDeliveryBody =>
      'آرڈرز کی فہرست سے کوئی آرڈر قبول کریں، وہ یہاں دکھائی دے گا۔';

  @override
  String get confirmPickupButton => 'میں نے آرڈر لے لیا';

  @override
  String get pickupCodeTitle => 'پک اپ کوڈ';

  @override
  String get pickupCodeSubtitle => 'ریستوران سے کوڈ پوچھیں اور یہاں درج کریں۔';

  @override
  String get pickupCodeHint => 'کوڈ';

  @override
  String get wrongPickupCode => 'یہ کوڈ درست نہیں۔ ریستوران سے چیک کریں۔';

  @override
  String get pickupConfirmed => 'آرڈر اٹھا لیا گیا۔ گاہک کو ڈیلیور کریں۔';

  @override
  String get confirmDeliveryButton => 'ڈیلیور ہو گیا';

  @override
  String get stepReachRestaurant => 'ریستوران پہنچیں';

  @override
  String get stepPickUp => 'پک اپ';

  @override
  String get stepReachCustomer => 'گاہک تک پہنچیں';

  @override
  String get stepDeliver => 'ڈیلیور کریں';

  @override
  String get swipePickUp => 'آرڈر لینے کے بعد سوائپ کریں';

  @override
  String get swipeDeliver => 'ڈیلیور کرنے کے لیے سوائپ کریں';

  @override
  String get cashToCollectLabel => 'گاہک سے نقد وصول کریں';

  @override
  String get confirmDeliveryTitle => 'ڈیلیوری کی تصدیق کریں';

  @override
  String get confirmDeliveryBody =>
      'تصدیق تبھی کریں جب آرڈر گاہک کے ہاتھ میں ہو۔';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'پہلے گاہک سے $amount وصول کریں، پھر تصدیق کریں۔';
  }

  @override
  String get deliveryConfirmed =>
      'ڈیلیور ہو گیا۔ شکریہ، آپ دوبارہ آن لائن ہیں۔';

  @override
  String get deliverySuccessTitle => 'Order delivered';

  @override
  String get deliverySuccessYouEarned => 'You earned';

  @override
  String nextStopDeliverTo(String name) {
    return 'Then deliver to $name';
  }

  @override
  String pickedUpFrom(String name) {
    return 'Picked up from $name';
  }

  @override
  String get releaseOrderButton => 'واپس کریں';

  @override
  String get releaseOrderTitle => 'یہ آرڈر واپس کریں؟';

  @override
  String get releaseOrderBody =>
      'یہ کسی اور رائیڈر کے لیے واپس فہرست میں چلا جائے گا۔ آپ ایسا صرف کھانا لینے سے پہلے کر سکتے ہیں۔';

  @override
  String get releaseReasonHint => 'وجہ (اختیاری)';

  @override
  String get orderReleased =>
      'واپس کر دیا گیا۔ یہ دوبارہ دوسرے رائیڈرز کے لیے دستیاب ہے۔';

  @override
  String get finishCurrentOrderFirst =>
      'پہلے اپنا موجودہ آرڈر مکمل کریں یا واپس کریں۔';

  @override
  String get callRestaurant => 'ریستوران کو کال کریں';

  @override
  String get callCustomer => 'گاہک کو کال کریں';

  @override
  String get openInMaps => 'راستہ دیکھیں';

  @override
  String get customerNoteLabel => 'گاہک کا نوٹ';

  @override
  String get orderItemsLabel => 'بیگ میں کیا ہے';

  @override
  String get orderDetailsTitle => 'آرڈر کی تفصیلات';

  @override
  String get historyTitle => 'پچھلی ڈیلیوریز';

  @override
  String get historyEmptyTitle => 'ابھی کوئی ڈیلیوری نہیں';

  @override
  String get historyEmptyBody =>
      'آپ کے مکمل کیے ہوئے آرڈرز یہاں دکھائی دیں گے۔';

  @override
  String get historySearchHint => 'آرڈر یا ریستوران تلاش کریں';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'آج';

  @override
  String get historyYesterday => 'کل';

  @override
  String get historyEarlier => 'اس سے پہلے';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڈیلیوریز',
      one: '1 ڈیلیوری',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” کے لیے کچھ نہیں ملا۔';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount نقد وصول کیے';
  }

  @override
  String get orderDelivered => 'ڈیلیور ہو گیا';

  @override
  String get orderCancelled => 'منسوخ ہو گیا';

  @override
  String get orderPreparing => 'تیار ہو رہا ہے';

  @override
  String get orderReadyForPickup => 'پک اپ کے لیے تیار';

  @override
  String get orderAssigned => 'آپ کو دیا گیا';

  @override
  String get orderPickedUp => 'اٹھا لیا گیا';

  @override
  String get orderOutForDelivery => 'راستے میں ہے';

  @override
  String get trackingOn => 'مقام شیئرنگ آن ہے';

  @override
  String get locationUnavailableMessage =>
      'ہم آپ کا مقام معلوم نہیں کر پا رہے۔ مقام آن کریں اور Nexmile Rider کو اس کی اجازت دیں۔';

  @override
  String get locationPermissionTitle => 'مقام کی ضرورت ہے';

  @override
  String get locationPermissionBody =>
      'آرڈرز اس حساب سے دیے جاتے ہیں کہ آپ کتنے قریب ہیں، اور گاہک نقشے پر آپ کو دیکھتا ہے۔ آن لائن جانے کے لیے مقام کی اجازت دیں۔';

  @override
  String get locationSettingsButton => 'ترتیبات کھولیں';

  @override
  String get enableLocationButton => 'مقام کی اجازت دیں';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'شفٹ';

  @override
  String get payoutsTitle => 'ادائیگیاں';

  @override
  String get payoutsEntryValue => 'ہفتہ وار کمائی';

  @override
  String get payoutDetailsTitle => 'ہفتہ وار ادائیگی';

  @override
  String get payoutsEmptyTitle => 'ابھی کوئی ادائیگی نہیں';

  @override
  String get payoutsEmptyBody =>
      'ہر ہفتے کا حساب ہونے کے بعد اس ہفتے کی آپ کی کمائی یہاں دکھائی دے گی۔';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'زیر التوا';

  @override
  String get payoutStatusProcessing => 'کارروائی جاری ہے';

  @override
  String get payoutStatusPaid => 'ادا ہو گیا';

  @override
  String get payoutNotSentNote =>
      'اس ہفتے کی آپ کی کمائی کا حساب ہو گیا ہے۔ پیسے ابھی آپ کے بینک میں نہیں بھیجے گئے۔';

  @override
  String payoutPaidOn(String date) {
    return '$date کو آپ کے بینک میں بھیج دیا گیا';
  }

  @override
  String get payoutPaidNote => 'اس ہفتے کا بینک ٹرانسفر مکمل ہو گیا ہے۔';

  @override
  String get payoutReferenceLabel => 'ٹرانسفر ریفرنس';

  @override
  String get payoutNetLabel => 'قابل ادائیگی رقم';

  @override
  String get payoutDeliveryEarnings => 'ڈیلیوری کی کمائی';

  @override
  String get payoutReferralEarnings => 'ریفرل کی کمائی';

  @override
  String get payoutCarriedIn => 'پچھلے ہفتے سے';

  @override
  String get payoutCarriedInNote =>
      '₹100 سے کم رقم الگ سے ٹرانسفر نہیں کی جاتی۔ اس کے بجائے اسے اگلے ہفتے میں شامل کر دیا جاتا ہے۔';

  @override
  String get payoutGross => 'کل کمائی';

  @override
  String get payoutDeductions => 'کٹوتیاں';

  @override
  String get payoutsLatestWeek => 'تازہ ترین ہفتہ';

  @override
  String get payoutsPaidSoFar => 'اب تک ادا شدہ';

  @override
  String get payoutsNotYetSent => 'ابھی نہیں بھیجا گیا';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'حساب ہو گیا';

  @override
  String get payoutStepSending => 'بھیجا جا رہا ہے';

  @override
  String get payoutStepInBank => 'آپ کے بینک میں';

  @override
  String get navToRestaurant => 'ریستوران کی طرف';

  @override
  String get navToCustomer => 'گاہک کی طرف';

  @override
  String navHeadTowards(String place) {
    return '$place کی طرف جائیں';
  }

  @override
  String navThen(String instruction) {
    return 'پھر: $instruction';
  }

  @override
  String get navArrived => 'آپ پہنچ گئے ہیں';

  @override
  String navArrivedAt(String place) {
    return '$place پر';
  }

  @override
  String get navFindingRoute => 'بہترین راستہ تلاش کیا جا رہا ہے…';

  @override
  String get navNoRoute =>
      'سڑک کا راستہ دستیاب نہیں۔ سیدھی لکیر کا فاصلہ دکھایا جا رہا ہے۔';

  @override
  String get navFindingLocation => 'آپ کا مقام معلوم کیا جا رہا ہے…';

  @override
  String get navLocationOff => 'نیویگیشن کے لیے مقام آن کریں۔';

  @override
  String get navEnd => 'نیویگیشن ختم کریں';

  @override
  String get navRecentre => 'دوبارہ مرکوز کریں';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes منٹ';
  }

  @override
  String get navStart => 'نیویگیٹ کریں';

  @override
  String get orderReachedRestaurant => 'ریستوران پر';

  @override
  String get orderReachedCustomer => 'گاہک کے پاس';

  @override
  String get reachedRestaurantButton => 'میں ریستوران پہنچ گیا ہوں';

  @override
  String get reachedCustomerButton => 'میں گاہک کے پاس پہنچ گیا ہوں';

  @override
  String get reachedRestaurantDone =>
      'ریستوران کو بتا دیا گیا کہ آپ پہنچ گئے ہیں';

  @override
  String get reachedCustomerDone => 'گاہک کو بتا دیا گیا کہ آپ باہر ہیں';

  @override
  String get offerTitle => 'نیا آرڈر';

  @override
  String get offerYouEarn => 'آپ کی کمائی';

  @override
  String get offerPickup => 'پک اپ';

  @override
  String get offerDrop => 'ڈراپ';

  @override
  String offerAway(String distance) {
    return '$distance دور';
  }

  @override
  String offerTrip(String distance) {
    return '$distance کا سفر';
  }

  @override
  String offerItems(String count) {
    return '$count چیزیں';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount نقد وصول کریں';
  }

  @override
  String get offerPrepaid => 'پہلے سے ادا شدہ · نقد نہیں';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'کھانا تقریباً $minutes منٹ میں تیار';
  }

  @override
  String get offerSwipeToAccept => 'قبول کرنے کے لیے سوائپ کریں';

  @override
  String get offerAccepting => 'قبول ہو رہا ہے…';

  @override
  String get offerReject => 'مسترد کریں';

  @override
  String get offerRejectTitle => 'آپ کیوں انکار کر رہے ہیں؟';

  @override
  String get offerReasonTooFar => 'بہت دور';

  @override
  String get offerReasonBusy => 'ابھی مصروف ہوں';

  @override
  String get offerReasonVehicle => 'گاڑی میں مسئلہ';

  @override
  String get offerReasonOther => 'کوئی اور وجہ';

  @override
  String get offerTaken => 'آرڈر کسی اور رائیڈر نے لے لیا';

  @override
  String get offerAutoOffline =>
      '3 آرڈرز چھوٹ جانے کی وجہ سے آپ کو آف لائن کر دیا گیا۔ تیار ہوں تو آن لائن جائیں۔';

  @override
  String get mockLocationBlocked =>
      'آرڈرز پانے کے لیے جعلی مقام (فیک لوکیشن) والی کوئی بھی ایپ بند کریں۔';

  @override
  String get dropoffDoorLabel => 'فلیٹ / منزل';

  @override
  String get dropoffStreetLabel => 'گلی';

  @override
  String get dropoffLandmarkLabel => 'نشانی';

  @override
  String get doorPhotoLabel => 'دروازے کی تصویر';

  @override
  String get doorPhotoHint => 'بڑا دیکھنے کے لیے ٹیپ کریں';

  @override
  String get doorPhotoUnavailable => 'تصویر ابھی دستیاب نہیں';

  @override
  String permStepCount(int step, int total) {
    return '$total میں سے $step';
  }

  @override
  String get permNotNow => 'ابھی نہیں';

  @override
  String get permLocationTitle => 'مقام آن کریں';

  @override
  String get permLocationBody =>
      'آرڈرز ریستوران کے سب سے قریبی رائیڈر کو جاتے ہیں، اور گاہک نقشے پر اپنا کھانا دیکھتے ہیں۔';

  @override
  String get permLocationNearTitle => 'آپ کے قریب آرڈرز';

  @override
  String get permLocationNearBody =>
      'ہم آپ کو قریبی ریستوران کے آرڈرز دیتے ہیں، تاکہ آپ کم چلائیں اور زیادہ کمائیں۔';

  @override
  String get permLocationTrackTitle => 'لائیو ٹریکنگ';

  @override
  String get permLocationTrackBody =>
      'گاہک آپ کو نقشے پر دیکھتے ہیں، اس لیے وہ آپ کو کم کال کرتے ہیں۔';

  @override
  String get permLocationOnlineTitle => 'صرف جب آپ آن لائن ہوں';

  @override
  String get permLocationOnlineBody =>
      'آف لائن جائیں تو یہ بند ہو جاتا ہے۔ جب بھی یہ استعمال میں ہو، ایک نوٹیفکیشن دکھائی دیتا ہے۔';

  @override
  String get permLocationAllow => 'مقام کی اجازت دیں';

  @override
  String get permNotifyTitle => 'کوئی آرڈر نہ چھوٹے';

  @override
  String get permNotifyBody =>
      'نئے آرڈرز فون کال کی طرح بجتے ہیں، چاہے آپ کی اسکرین لاک ہو۔';

  @override
  String get permNotifyRingTitle => 'بجنے والے آرڈر الرٹس';

  @override
  String get permNotifyRingBody => 'الرٹ سے ہی قبول یا انکار کریں۔';

  @override
  String get permNotifyUpdatesTitle => 'ادائیگیاں اور منظوریاں';

  @override
  String get permNotifyUpdatesBody =>
      'جانیں کہ آپ کی دستاویزات کب منظور ہوئیں اور پیسے کب بھیجے گئے۔';

  @override
  String get permNotifyControlTitle => 'کنٹرول آپ کے ہاتھ میں';

  @override
  String get permNotifyControlBody =>
      'اپنے فون کی ترتیبات میں اسے کسی بھی وقت بدلیں۔';

  @override
  String get permNotifyAllow => 'نوٹیفکیشن آن کریں';

  @override
  String get permBatteryTitle => 'آرڈرز آتے رہیں';

  @override
  String get permBatteryBody =>
      'فون بیٹری بچانے کے لیے پس منظر میں چلنے والی ایپس بند کر دیتے ہیں۔ آن لائن ہوتے ہوئے Nexmile Rider کو چلتا رہنے دیں۔';

  @override
  String get permBatteryOrdersTitle => 'کوئی آرڈر نہیں چھوٹے گا';

  @override
  String get permBatteryOrdersBody =>
      'ایپ بند ہو اور فون جیب میں ہو، تب بھی آرڈرز آپ تک پہنچتے ہیں۔';

  @override
  String get permBatteryLiveTitle => 'ٹریکنگ لائیو رہتی ہے';

  @override
  String get permBatteryLiveBody =>
      'ڈیلیوری تک گاہک آپ کو نقشے پر دیکھتے رہتے ہیں۔';

  @override
  String get permBatteryLightTitle => 'بیٹری پر ہلکی';

  @override
  String get permBatteryLightBody =>
      'یہ صرف تب زیادہ کام کرتی ہے جب آپ آن لائن ہوں۔';

  @override
  String get permBatteryAllow => 'پس منظر میں چلنے کی اجازت دیں';

  @override
  String get permFullScreenTitle => 'لاک اسکرین پر آرڈرز';

  @override
  String get permFullScreenBody =>
      'نئے آرڈرز کو آنے والی کال کی طرح لاک اسکرین پر دکھنے دیں، تاکہ آپ ایک ٹیپ میں قبول کر سکیں۔';

  @override
  String get permFullScreenCallTitle => 'کال کی طرح جواب دیں';

  @override
  String get permFullScreenCallBody =>
      'فون ان لاک کیے بغیر آرڈر دیکھیں اور قبول کریں۔';

  @override
  String get permFullScreenTimeTitle => 'وقت پر جواب دیں';

  @override
  String get permFullScreenTimeBody =>
      'جس آرڈر کا آپ جواب نہ دیں، وہ کسی اور رائیڈر کو چلا جاتا ہے۔';

  @override
  String get permFullScreenOnlyTitle => 'صرف نئے آرڈرز کے لیے';

  @override
  String get permFullScreenOnlyBody =>
      'اس کے علاوہ آپ کی لاک اسکرین پر کبھی کچھ نہیں دکھایا جاتا۔';

  @override
  String get permOverlayTitle => 'Show orders over other apps';

  @override
  String get permOverlayBody =>
      'When a new order comes in while you are using another app, Nexmile Rider comes to the front with the order card, so you can accept it straight away.';

  @override
  String get permOverlayCardTitle => 'The full order card';

  @override
  String get permOverlayCardBody =>
      'Pay, distance and pickup at a glance, not just a notification.';

  @override
  String get permOverlayFastTitle => 'Accept in one swipe';

  @override
  String get permOverlayFastBody =>
      'No hunting for the notification and opening the app first.';

  @override
  String get permOverlayOnlyTitle => 'Only for new orders';

  @override
  String get permOverlayOnlyBody =>
      'Nexmile Rider never opens over your apps for anything else.';

  @override
  String get setupTitle => 'فون سیٹ اپ';

  @override
  String get setupIntro =>
      'یہ مکمل کریں تاکہ ایپ بند ہونے یا فون لاک ہونے پر بھی نئے آرڈرز بجیں۔';

  @override
  String get setupNotifications => 'نوٹیفکیشنز';

  @override
  String get setupNotificationsBody => 'تاکہ نئے آرڈرز بج سکیں اور دکھائی دیں۔';

  @override
  String get setupFullScreen => 'فل اسکرین آرڈر الرٹس';

  @override
  String get setupFullScreenBody =>
      'نیا آرڈر کال کی طرح آپ کی لاک اسکرین پر دکھاتا ہے۔';

  @override
  String get setupOverlay => 'Show over other apps';

  @override
  String get setupOverlayBody =>
      'Opens the new order card on top of whatever app you are using.';

  @override
  String get setupBattery => 'بیٹری: آپٹمائز نہ کریں';

  @override
  String get setupBatteryBody =>
      'آن لائن ہوتے ہوئے آپ کا فون ایپ کو بند نہیں کرے گا۔';

  @override
  String get setupAutostart => 'آٹو اسٹارٹ';

  @override
  String setupAutostartBody(String brand) {
    return '$brand فونز میں Nexmile Rider کے لیے آٹو اسٹارٹ بھی آن ہونا چاہیے۔ ترتیبات کھولیں، آٹو اسٹارٹ تلاش کریں اور اسے آن کریں۔';
  }

  @override
  String get setupLocation => 'مقام';

  @override
  String get setupLocationBody => 'آپ کو قریبی آرڈرز بھیجنے کے لیے ضروری ہے۔';

  @override
  String get setupAllow => 'اجازت دیں';

  @override
  String get setupOpenSettings => 'ترتیبات کھولیں';

  @override
  String get setupMarkDone => 'میں نے یہ کر لیا';

  @override
  String get setupDoneStep => 'ہو گیا';

  @override
  String get setupBannerTitle => 'فون سیٹ اپ مکمل کریں';

  @override
  String setupBannerBody(String count) {
    return '$count باقی ہیں، تاکہ آرڈر الرٹس نہ چھوٹیں';
  }

  @override
  String get offerEstimatedEarnings => 'اندازاً کمائی';

  @override
  String offerPickupLine(String name) {
    return 'پک اپ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ڈراپ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'آپ سے تقریباً $distance دور';
  }

  @override
  String get exitTitle => 'Nexmile Rider سے باہر نکلیں؟';

  @override
  String get exitBody => 'کیا آپ واقعی ایپ سے باہر نکلنا چاہتے ہیں؟';

  @override
  String get exitConfirm => 'باہر نکلیں';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ڈیلیوری پارٹنر بنیں';

  @override
  String get onboardingWelcomeSubtitle =>
      'اپنے علاقے میں ڈیلیوری کریں، اپنے اوقات خود چنیں، اور ہر ہفتے ادائیگی پائیں۔';

  @override
  String get onboardingWelcomeNeed => 'یہ تیار رکھیں';

  @override
  String get onboardingNeedAadhaar => 'آدھار کارڈ';

  @override
  String get onboardingNeedPan => 'PAN کارڈ';

  @override
  String get onboardingNeedLicence => 'ڈرائیونگ لائسنس اور گاڑی کا RC';

  @override
  String get onboardingNeedInsurance => 'گاڑی کی انشورنس';

  @override
  String get onboardingNeedBank => 'بینک اکاؤنٹ کی تفصیلات';

  @override
  String get onboardingNeedNote =>
      'سائیکل چلاتے ہیں یا پیدل؟ آپ کو صرف آدھار، PAN اور بینک اکاؤنٹ چاہیے۔';

  @override
  String get onboardingWelcomeTime => 'تقریباً 10 منٹ لگتے ہیں';

  @override
  String get onboardingGetStarted => 'شروع کریں';

  @override
  String get onboardingSavedNote =>
      'ہر مرحلے کے بعد آپ کی معلومات حفاظت سے محفوظ ہو جاتی ہیں';

  @override
  String get docsTip =>
      'اچھی روشنی میں لی گئی صاف تصویریں سب سے جلدی منظور ہوتی ہیں۔';

  @override
  String get docsAllDone =>
      'تمام لازمی دستاویزات شامل ہو گئی ہیں۔ جائزے کے لیے آگے بڑھیں۔';

  @override
  String get docGroupIdentity => 'شناختی ثبوت';

  @override
  String get docGroupVehicle => 'لائسنس اور گاڑی کے کاغذات';

  @override
  String get docGroupMore => 'مزید دستاویزات';

  @override
  String get docTapToAdd => 'شامل کرنے کے لیے ٹیپ کریں';

  @override
  String get docUploading => 'اپ لوڈ ہو رہا ہے…';

  @override
  String get docView => 'دیکھیں';

  @override
  String get docSheetSubtitle => 'پہلی بار میں ہی منظوری کیسے پائیں';

  @override
  String get docTipCorners => 'چاروں کونے تصویر کے اندر ہوں';

  @override
  String get docTipGlare => 'صاف لکھائی، کوئی چمک یا سایہ نہ ہو';

  @override
  String get docTipOriginal => 'اصل دستاویز، فوٹو کاپی نہیں';

  @override
  String get docTipFace => 'آپ کا چہرہ صاف نظر آئے، سیدھا سامنے دیکھتے ہوئے';

  @override
  String get docTipBackground => 'سادہ پس منظر اور اچھی روشنی';

  @override
  String get docTipNoCap => 'ٹوپی، ماسک یا دھوپ کا چشمہ نہ ہو';

  @override
  String get docTipFullPage => 'پورا صفحہ، ہر لائن پڑھنے کے قابل ہو';

  @override
  String get docSourceCamera => 'کیمرہ';

  @override
  String get docSourceGallery => 'گیلری';

  @override
  String get docSourceFile => 'PDF یا فائل';

  @override
  String get reviewSectionDetails => 'آپ کی تفصیلات';

  @override
  String get reviewSectionDocuments => 'دستاویزات';

  @override
  String get reviewSectionBank => 'بینک اکاؤنٹ';

  @override
  String get reviewBankHidden => 'شامل ہو گیا · آپ کی حفاظت کے لیے چھپایا گیا';

  @override
  String get reviewEdit => 'ترمیم';

  @override
  String get reviewNextTitle => 'آگے کیا ہوگا';

  @override
  String get reviewNext1 => 'آپ اپنی درخواست جمع کرائیں';

  @override
  String get reviewNext2 => 'ہماری ٹیم آپ کی تفصیلات اور دستاویزات چیک کرتی ہے';

  @override
  String get reviewNext3 =>
      'آپ کو اطلاع ملتی ہے، آن لائن جائیں اور کمانا شروع کریں';

  @override
  String get kycStepSubmitted => 'درخواست جمع ہو گئی';

  @override
  String get kycStepVerifying => 'آپ کی دستاویزات کی تصدیق ہو رہی ہے';

  @override
  String get kycStepApproved => 'منظور — آن لائن جائیں اور کمانا شروع کریں';
}
