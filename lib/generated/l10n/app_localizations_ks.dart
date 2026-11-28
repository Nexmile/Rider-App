// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kashmiri (`ks`).
class AppLocalizationsKs extends AppLocalizations {
  AppLocalizationsKs([String locale = 'ks']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'تیز ڈیلیوری۔ تازٕ مُسکراہٹ۔';

  @override
  String get chooseLanguageTitle => 'پنُن زبان ژارٕو';

  @override
  String get chooseLanguageSubtitle =>
      'یِم زبان چھِوٕ آسان محسوس کران سُہ ژارٕو۔ توہہِ ہیٚکِو یہ کُنہِ وقتہٕ سیٹِنگز منٛز بدلاوِتھ۔';

  @override
  String get searchLanguageHint => 'زبان ژھانڈٕو';

  @override
  String get noLanguageFound => 'کانہہ زبان نہ لبنہٕ آیہ';

  @override
  String languagesAvailable(int count) {
    return '$count زباناہ چھِ دستیاب';
  }

  @override
  String get continueLabel => 'برونہہ گژھِو';

  @override
  String get selectedLabel => 'ژارنہٕ آمُت';

  @override
  String get defaultLabel => 'ڈیفالٹ';

  @override
  String get homeTitle => 'Nexmile منٛز خوش آمدید';

  @override
  String get homeSubtitle =>
      'تازٕ گروسری، گرٕم کھَنہٕ تہٕ روزمرٕ ضرورتہٕ توہنٛدِن نزدیٚکی دُکانن پؠٹھٕ۔';

  @override
  String get changeLanguage => 'زبان بدلاوٕو';

  @override
  String get languageUpdated => 'زبان آیہ بدلاونہٕ';

  @override
  String get appLanguageLabel => 'ایپ زبان';

  @override
  String greetingNamed(String name) {
    return 'آداب، $name';
  }

  @override
  String get loginTitle => 'Nexmile منٛز سائن اِن کرِو';

  @override
  String get loginSubtitle =>
      'پنُن ای میل یا موبائل نمبر لیٚکھِو، اسہٕ سوزو توہہِ تصدیقی کوڈ۔';

  @override
  String get emailOrPhoneLabel => 'ای میل یا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com یا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'صحیح ای میل پتہٕ یا 10 ہندسن ہُند موبائل نمبر لیٚکھِو';

  @override
  String get loginHeadline =>
      'Nexmile سٕتؠ ڈیلیوری کرِو۔ پننِس وقتس مطابق کمٲے کرِو۔';

  @override
  String get loginOrSignUp => 'سائن اِن یا سائن اَپ کرِو';

  @override
  String get loginEmailHint => 'پنُن ای میل پتہٕ لیٚکھِو';

  @override
  String get invalidEmail => 'صحیح ای میل پتہٕ لیٚکھِو';

  @override
  String get loginHeroBadge => 'ڈیلیوری پارٹنر';

  @override
  String get sendCode => 'کوڈ سوزِو';

  @override
  String get agreeToTermsOnContinue =>
      'برونہہ گژھِتھ چھِوٕ توہہِ ساني سروس شرطن تہٕ پرائیویسی پالیسی سٕتؠ رٲضی گژھان۔';

  @override
  String get otpTitle => 'تصدیق کرِو زِ یہ چھِوٕ توہہِ';

  @override
  String otpSubtitle(String target) {
    return '$target پؠٹھٕ سوزنہٕ آمُت 6 ہندسن ہُند کوڈ لیٚکھِو';
  }

  @override
  String get otpHelpTitle => 'کوڈ میوٚل نہ؟';

  @override
  String get otpHelpCheck =>
      'پؠٹھِم نمبر یا ای میل چیک کرِو۔ بدلاونہٕ خٲطرٕ واپس گژھِو۔';

  @override
  String get otpHelpWait =>
      'کوڈ واتنس ہیٚکہِ اکھ مِنٹ تام لگِتھ۔ ٹائمر ختم گژھنہٕ پتہٕ ہیٚکِو توہہِ نوٚو کوڈ مَنٛگِتھ۔';

  @override
  String get otpHelpSpam => 'ای میل خٲطرٕ پنُن سپیم فولڈر تہِ وُچھِو۔';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'تصدیق کرِو';

  @override
  String get resendCode => 'کوڈ دوبارٕ سوزِو';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سیکنڈن منٛز دوبارٕ سوزِو';
  }

  @override
  String get codeResent => 'نوٚو کوڈ آو سوزنہٕ';

  @override
  String get incorrectCode =>
      'یہ کوڈ چھُ غلط یا اَمِ ہُند وقت چھُ گۆمُت۔ نوٚو کوڈ ژھۆنڈِو۔';

  @override
  String get enterFullCode => 'پورٕ 6 ہندسہٕ لیٚکھِو';

  @override
  String get accountSuspended =>
      'یہ کھاتہٕ چھُ معطل کرنہٕ آمُت۔ مہربٲنی کٔرِتھ سپورٹ سٕتؠ رٲبطہٕ کرِو۔';

  @override
  String get tooManyAttempts =>
      'زیادٕ کوششہٕ آیہ کرنہٕ۔ مہربٲنی کٔرِتھ کینٛہہ وقتہٕ پتہٕ دوبارٕ کوشش کرِو۔';

  @override
  String get sessionExpired =>
      'توہنٛد سیشن چھُ ختم گۆمُت۔ مہربٲنی کٔرِتھ دوبارٕ سائن اِن کرِو۔';

  @override
  String get networkError =>
      'انٹرنیٹ کنکشن چھُ نہ۔ پنُن کنکشن چیک کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get developmentCode => 'ڈیویلپمنٹ کوڈ';

  @override
  String get signOut => 'سائن آوٹ';

  @override
  String get signedOut => 'توہہِ چھِوٕ سائن آوٹ گژھمٕتؠ';

  @override
  String get somethingWentWrong =>
      'کینٛہہ غلط گو۔ مہربٲنی کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get profileSectionDetails => 'توہنٛز تفصیل';

  @override
  String get profileSectionWork => 'کٲم';

  @override
  String get profileSectionApp => 'ایپ سیٹِنگز';

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
  String get viewProfile => 'پروفائل وُچھِو';

  @override
  String get nameLabel => 'ناو';

  @override
  String get emailLabel => 'ای میل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'کھاتہٕ حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زیرِ التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصدیق شُدٕ';

  @override
  String get notProvided => 'شٲمِل کرنہٕ نہ آمُت';

  @override
  String get retry => 'دوبارٕ کوشش کرِو';

  @override
  String get loginRiderNote => 'یہ ایپ چھےٚ Nexmile ڈیلیوری پارٹنرن خٲطرٕ۔';

  @override
  String get checkingYourAccount => 'توہنٛد کھاتہٕ چھُ چیک گژھان';

  @override
  String get couldNotLoadAccount =>
      'توہنٛد کھاتہٕ ہیوٚک نہ لوڈ گٔژھِتھ۔ پنُن کنکشن چیک کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get notARiderAccountTitle => 'یہ چھُ نہ ڈیلیوری پارٹنر کھاتہٕ';

  @override
  String get notARiderAccount =>
      'یہ ای میل یا موبائل نمبر چھُ برونٛہہ ی Nexmile کِس بیٚیِس کھاتس پؠٹھ رجسٹر۔ ڈیلیوری پارٹنر بنٕنہٕ خٲطرٕ سائن آوٹ کٔرِتھ کانہہ بیٚاکھ استعمال کرِو۔';

  @override
  String notARiderAccountFor(String role) {
    return 'یہ ای میل یا موبائل نمبر چھُ برونٛہہ ی Nexmile پؠٹھ $role طورٕ رجسٹر۔ ڈیلیوری پارٹنر بنٕنہٕ خٲطرٕ سائن آوٹ کٔرِتھ کانہہ بیٚاکھ استعمال کرِو۔';
  }

  @override
  String get roleCustomer => 'گاہک';

  @override
  String get roleMerchant => 'دُکاندار';

  @override
  String get roleAdmin => 'ایڈمن';

  @override
  String get useAnotherAccount => 'بیٚاکھ کھاتہٕ استعمال کرِو';

  @override
  String get onboardingTitle => 'Nexmile پارٹنر بنِو';

  @override
  String get onboardingSubtitle =>
      'کینٛہہ تفصیل تہٕ توہنٛدؠ دستاویز، پتہٕ کرِ ساني ٹیم توہنٛز تصدیق۔ امہِ چھُ عام طور زٕ کٲمہٕ دۄہ تام وقت لگان۔';

  @override
  String stepOfSteps(int current, int total) {
    return '$total قدمن منٛزٕ $current';
  }

  @override
  String get stepIdentityTitle => 'توہنٛدِ بابت';

  @override
  String get stepIdentitySubtitle =>
      'پنُن ناو بالکل تِتھیٚ لیٚکھِو یِتھ کٔنؠ سُہ توہنٛدِس آدھار کارڈس پؠٹھ چھُ۔';

  @override
  String get stepVehicleTitle => 'توہنٛز گٲڑۍ';

  @override
  String get stepVehicleSubtitle =>
      'اسہِ وَنِو توہہِ کیٚاہ چھِوٕ چلاوان تہٕ امہِ پؠٹھ کیٚاہ نمبر چھُ۔';

  @override
  String get stepIdentityNumbersTitle => 'شناختی نمبر';

  @override
  String get stepIdentityNumbersSubtitle =>
      'یِم نمبر گژھن تِمن دستاویزن سٕتؠ مِلُن یِم توہہِ پتہٕ اپلوڈ کرِو۔';

  @override
  String get stepLicenceTitle => 'لائسنس تہٕ انشورنس';

  @override
  String get stepLicenceSubtitle =>
      'یِم دۄشوَے گژھن تَمہِ دۄہہ کارآمد آسُن یَمہِ دۄہہ توہہِ ڈیلیوری شُروع کرِو۔';

  @override
  String get stepBankTitle => 'توہنٛز کمٲے کۄتہٕ واتِ';

  @override
  String get stepBankSubtitle =>
      'توہنٛز کمٲے یِیہِ امہِ کھاتس منٛز سوزنہٕ۔ احتیاطہٕ سٕتؠ چیک کرِو۔';

  @override
  String get stepDocumentsTitle => 'توہنٛدؠ دستاویز';

  @override
  String get stepDocumentsSubtitle =>
      'ہر اکھ جانہِ گاشس منٛز فوٹو کڈِو۔ JPG، PNG یا PDF، ہر اکھ 5 MB تام۔';

  @override
  String get stepReviewTitle => 'چیک کٔرِتھ جمع کرِو';

  @override
  String get stepReviewSubtitle =>
      'جمع کرنہٕ پتہٕ رۄزِ توہنٛز تفصیل لاک، یوتام ساني ٹیم امہِ ہٕنٛز جانچ کرِ۔';

  @override
  String get saveAndContinue => 'محفوظ کٔرِتھ برونہہ گژھِو';

  @override
  String get backLabel => 'واپس';

  @override
  String get fullNameLabel => 'پورٕ ناو';

  @override
  String get fullNameHint => 'یِتھ کٔنؠ آدھارس پؠٹھ چھُ';

  @override
  String get dateOfBirthLabel => 'زامٕژ تاریخ';

  @override
  String get selectDate => 'تاریخ ژارٕو';

  @override
  String get vehicleTypeLabel => 'گٲڑِ ہُند قِسم';

  @override
  String get vehicleMotorcycle => 'موٹر سائیکل';

  @override
  String get vehicleScooter => 'سکوٹر';

  @override
  String get vehicleEv => 'الیکٹرک گٲڑۍ';

  @override
  String get vehicleBicycle => 'سائیکل';

  @override
  String get vehicleWalk => 'پَیدل';

  @override
  String get vehicleNoPapersNote =>
      'گٲڑِ ہُند نمبر یا RC چھُ نہ ضروری۔ توہہِ نِشہِ یِیہِ صرف آدھار تہٕ PAN مَنٛگنہٕ۔';

  @override
  String get vehicleNumberLabel => 'گٲڑِ ہُند نمبر';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC نمبر';

  @override
  String get aadhaarLabel => 'آدھار نمبر';

  @override
  String get aadhaarHint => '12 ہندسہٕ';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ڈرائیونگ لائسنس نمبر';

  @override
  String get drivingLicenceExpiryLabel => 'لائسنس ختم گژھنٕچ تاریخ';

  @override
  String get insuranceNumberLabel => 'انشورنس پالیسی نمبر';

  @override
  String get insuranceExpiryLabel => 'انشورنس ختم گژھنٕچ تاریخ';

  @override
  String get bankAccountNameLabel => 'کھاتہٕ دار سُند ناو';

  @override
  String get bankAccountNumberLabel => 'کھاتہٕ نمبر';

  @override
  String get bankIfscLabel => 'IFSC کوڈ';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total منٛزٕ $done اپلوڈ شُدٕ';
  }

  @override
  String get uploadDocument => 'اپلوڈ کرِو';

  @override
  String get replaceDocument => 'بدلاوِو';

  @override
  String get removeDocument => 'ہٹاوِو';

  @override
  String get takePhoto => 'فوٹو کڈِو';

  @override
  String get chooseFromGallery => 'گیلری منٛزٕ ژارٕو';

  @override
  String get chooseFile => 'فائل ژارٕو';

  @override
  String get uploadingLabel => 'اپلوڈ گژھان';

  @override
  String get documentRejected => 'مسترد';

  @override
  String get documentUploaded => 'اپلوڈ گو';

  @override
  String get documentApproved => 'منظور';

  @override
  String get documentRequired => 'ضروری';

  @override
  String get documentOptional => 'اختیاری';

  @override
  String get fileTooLarge =>
      'یہ فائل چھےٚ 5 MB کھۄتہٕ زیادٕ۔ سکین بجاے فوٹو آزماوِو۔';

  @override
  String get unsupportedFileType => 'JPG، PNG یا PDF ژارٕو۔';

  @override
  String get pickerUnavailable =>
      'یہ ہیوٚک نہ کھُلِتھ۔ ایپ ہٕنٛز کیمرہ تہٕ فوٹو اجازت چیک کرِو۔';

  @override
  String get uploadFailed => 'یہ اپلوڈ گو نہ۔ مہربٲنی کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get submitForVerification => 'تصدیق خٲطرٕ جمع کرِو';

  @override
  String get submitConfirmTitle => 'تصدیق خٲطرٕ جمع کرٕو؟';

  @override
  String get submitConfirmBody =>
      'ییٚلہِ تام ساني ٹیم توہنٛز تفصیل تہٕ دستاویز جانچان آسہِ، تِم رۄزن لاک۔ فیصلہٕ گژھنہٕ تام ہیٚکِو نہ توہہِ تِم بدلٲوِتھ۔';

  @override
  String get cancelLabel => 'منسوخ کرِو';

  @override
  String get completeEverythingBeforeSubmitting =>
      'جمع کرنہٕ برونٛہہ ہر قدم مکمل کرِو تہٕ سٲری دستاویز اپلوڈ کرِو۔';

  @override
  String get checkTheHighlightedFields =>
      'نِشان کرنہٕ آمٕتؠ خانہٕ چیک کٔرِتھ دوبارٕ کوشش کرِو۔';

  @override
  String get underReviewTitle => 'أسؠ چھِ توہنٛدؠ دستاویز تصدیق کران';

  @override
  String get underReviewBody =>
      'ساني ٹیم چھےٚ عام طور زٕ کٲمہٕ دۄہن اندر جانچ کران۔ منظوری میلنہٕ سٕتی دِمَو أسؠ توہہِ خبر۔';

  @override
  String get checkAgain => 'دوبارٕ چیک کرِو';

  @override
  String get stillUnderReview => 'جانچ چھےٚ وُنی تہِ جاری';

  @override
  String get rejectedTitle => 'توہنٛز تصدیق ہیچ نہ گٔژھِتھ';

  @override
  String get rejectedBody =>
      'ساني ٹیمہِ ہٕنٛدؠ تَل دِتمٕتؠ نوٹ وُچھِتھ ٹھیک کرِو، پتہٕ سوزِو پنٕنؠ دستاویز دوبارٕ۔';

  @override
  String get rejectionReasonLabel => 'وجہ';

  @override
  String get fixAndResubmit => 'ٹھیک کٔرِتھ دوبارٕ جمع کرِو';

  @override
  String get blockedTitle => 'توہہِ ہیٚکِو نہ ناوُ آن لائن گٔژھِتھ';

  @override
  String get documentsExpiredMessage =>
      'توہنٛد لائسنس یا انشورنس چھُ ختم گۆمُت۔ آن لائن گژھنہٕ خٲطرٕ نٔوؠ کارآمد دستاویز اپلوڈ کرِو۔';

  @override
  String get awaitingVerificationMessage =>
      'توہنٛدِن دستاویزن ہٕنٛز تصدیق چھےٚ وُنی جاری۔';

  @override
  String get updateDocuments => 'دستاویز اپ ڈیٹ کرِو';

  @override
  String get riderHomeTitle => 'ڈیلیوری خٲطرٕ تیار';

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
      'آن لائن گژھِو تہٕ أسؠ سوزَو توہہِ نزدیٚکی ڈیلیوری۔';

  @override
  String get dutyStatusLabel => 'ڈیوٹی حالت';

  @override
  String get dutyOnline => 'آن لائن';

  @override
  String get dutyOffline => 'آف لائن';

  @override
  String get dutyOnBreak => 'بریک پؠٹھ';

  @override
  String get goOnline => 'آن لائن گژھِو';

  @override
  String get goOffline => 'آف لائن گژھِو';

  @override
  String get takeABreak => 'بریک ہیٚیِو';

  @override
  String get waitingForOrders => 'نزدیٚکی آرڈرن ہُند انتظار';

  @override
  String get youAreOffline =>
      'توہہِ چھِوٕ آف لائن۔ توہہِ یِیہِ نہ کانہہ ڈیلیوری سوزنہٕ۔';

  @override
  String get completedDeliveriesLabel => 'مکمل ڈیلیوری';

  @override
  String get ratingLabel => 'ریٹنگ';

  @override
  String get notRatedYet => 'ناوُ کانہہ ریٹنگ نہ';

  @override
  String get vehicleLabel => 'گٲڑۍ';

  @override
  String get kycStatusLabel => 'تصدیق';

  @override
  String get kycPending => 'جمع کرنہٕ آمُت نہ';

  @override
  String get kycSubmitted => 'جانچ جاری';

  @override
  String get kycVerified => 'منظور';

  @override
  String get kycRejected => 'مسترد';

  @override
  String get fieldRequired => 'یہ چھُ ضروری';

  @override
  String get invalidAadhaar => 'پننِس آدھار نمبرٕکؠ 12 ہندسہٕ لیٚکھِو';

  @override
  String get invalidPan => 'صحیح PAN لیٚکھِو، مثلاً ABCDE1234F';

  @override
  String get invalidIfsc => 'صحیح IFSC کوڈ لیٚکھِو، مثلاً SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'نمبر بالکل تِتھیٚ لیٚکھِو یِتھ کٔنؠ سُہ نمبر پلیٹس پؠٹھ چھُ';

  @override
  String get invalidAccountNumber => 'صحیح کھاتہٕ نمبر لیٚکھِو';

  @override
  String get dateMustBeFuture => 'یہ تاریخ چھےٚ گُزرمٕژ';

  @override
  String get mustBeEighteen =>
      'ڈیلیوری کرنہٕ خٲطرٕ چھےٚ کم از کم 18 ؤری عمر ضروری';

  @override
  String get docAadhaarFront => 'آدھار کارڈ (برونٛہِم پاسہٕ)';

  @override
  String get docAadhaarBack => 'آدھار کارڈ (پتِم پاسہٕ)';

  @override
  String get docDrivingLicence => 'ڈرائیونگ لائسنس';

  @override
  String get docVehicleRc => 'گٲڑِ ہُند رجسٹریشن سرٹیفکیٹ';

  @override
  String get docInsurance => 'گٲڑِ ہُند انشورنس';

  @override
  String get docProfilePhoto => 'پروفائل فوٹو';

  @override
  String get docPan => 'PAN کارڈ';

  @override
  String get docBankProof => 'منسوخ شُدٕ چیک یا بینک سٹیٹمنٹ';

  @override
  String get ordersTab => 'آرڈر';

  @override
  String get deliveryTab => 'ڈیلیوری';

  @override
  String get historyTab => 'ہسٹری';

  @override
  String get orderBoardTitle => 'توہنٛدِن نزدیٚکی آرڈر';

  @override
  String get orderBoardSubtitle =>
      'سٲری کھۄتہٕ نزدیٚکی ریستوران گۄڈٕ۔ لِسٹ چھےٚ پانے ریفریش گژھان۔';

  @override
  String orderNumberLabel(String number) {
    return 'آرڈر $number';
  }

  @override
  String get pickupLabel => 'پِک اپ';

  @override
  String get dropoffLabel => 'ڈیلیوری پتہٕ';

  @override
  String distanceMetres(String metres) {
    return '$metres m';
  }

  @override
  String distanceKilometres(String km) {
    return '$km km';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count چیزٕ',
      one: '1 چیز',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'توہنٛز کمٲے';

  @override
  String get collectCashLabel => 'نقد وصول کرِو';

  @override
  String get prepaidLabel => 'آن لائن أدا گۆمُت';

  @override
  String collectAtDoor(String amount) {
    return 'گاہکس نِشہِ $amount نقد وصول کرِو';
  }

  @override
  String get nothingToCollect =>
      'أدایگی چھےٚ برونٛہہ ی گۆمٕژ۔ پونسہٕ مہ مَنٛگِو۔';

  @override
  String get acceptOrder => 'قبول کرِو';

  @override
  String get viewOrder => 'وُچھِو';

  @override
  String get orderAccepted => 'آرڈر گو قبول۔ ریستورانس کُن گژھِو۔';

  @override
  String get orderAlreadyTaken =>
      'یہ آرڈر ہیوٚت کُنہِ بیٚیِ رائِڈرن۔ یہ چھےٚ تازٕ لِسٹ۔';

  @override
  String get orderNoLongerYours => 'یہ آرڈر چھُ نہ وُنی توہنٛد۔';

  @override
  String get boardEmptyTitle => 'وُنی چھُ نہ کانہہ آرڈر';

  @override
  String get boardEmptyBody =>
      'آن لائن رۄزِو۔ ییٚلہِ ریستوران مصروف گژھن، لِسٹ گژھِ پانے اپ ڈیٹ۔';

  @override
  String get boardOfflineTitle => 'توہہِ چھِوٕ آف لائن';

  @override
  String get boardOfflineBody => 'آرڈر حٲصل کرنہٕ خٲطرٕ آن لائن گژھِو۔';

  @override
  String get boardBusyTitle => 'گۄڈٕ پنٕنۍ ڈیلیوری مکمل کرِو';

  @override
  String get boardBusyBody =>
      'یہ آرڈر ڈیلیور گژھنہٕ پتہٕ ہیٚکِو توہہِ بیٚاکھ آرڈر ہیٚتھ۔';

  @override
  String get boardNoLocationTitle => 'توہنٛز جاے چھےٚ نہ لبنہٕ یِوان';

  @override
  String get boardNoLocationBody =>
      'آرڈر چھِ ریستورانُک فاصلہٕ وُچھِتھ ترتیب دِنہٕ یِوان، تَوَے چھےٚ اسہِ کینٛہہ ہاونہٕ خٲطرٕ توہنٛز جاے ضروری۔';

  @override
  String get boardNotVerifiedTitle =>
      'ڈیلیوری ہٕنٛز منظوری چھےٚ نہ ناوُ میٚلمٕژ';

  @override
  String get activeDeliveryTitle => 'توہنٛز ڈیلیوری';

  @override
  String get headToRestaurant => 'ریستورانس کُن گژھِو';

  @override
  String get deliverToCustomer => 'گاہکس تام ڈیلیور کرِو';

  @override
  String get noActiveDeliveryTitle => 'اتھس منٛز چھُ نہ کینٛہہ';

  @override
  String get noActiveDeliveryBody =>
      'آرڈر لِسٹ منٛزٕ کانہہ آرڈر قبول کرِو، سُہ ییٚیہ یَتہِ ہاونہٕ۔';

  @override
  String get confirmPickupButton => 'مےٚ ہیوٚت آرڈر';

  @override
  String get pickupCodeTitle => 'پِک اپ کوڈ';

  @override
  String get pickupCodeSubtitle =>
      'ریستورانس نِشہِ کوڈ پرٛژھِو تہٕ یَتہِ لیٚکھِو۔';

  @override
  String get pickupCodeHint => 'کوڈ';

  @override
  String get wrongPickupCode =>
      'یہ کوڈ چھُ غلط۔ ریستورانس سٕتؠ دوبارٕ چیک کرِو۔';

  @override
  String get pickupConfirmed => 'پِک اپ گو۔ گاہکس تام ڈیلیور کرِو۔';

  @override
  String get confirmDeliveryButton => 'ڈیلیور گو';

  @override
  String get stepReachRestaurant => 'ریستورانس واتُن';

  @override
  String get stepPickUp => 'پِک اپ';

  @override
  String get stepReachCustomer => 'گاہکس واتُن';

  @override
  String get stepDeliver => 'ڈیلیور کرُن';

  @override
  String get swipePickUp => 'پِک اپ پتہٕ سوائپ کرِو';

  @override
  String get swipeDeliver => 'ڈیلیوری خٲطرٕ سوائپ کرِو';

  @override
  String get cashToCollectLabel => 'نقد وصول کرُن';

  @override
  String get confirmDeliveryTitle => 'ڈیلیوری تصدیق کرِو';

  @override
  String get confirmDeliveryBody =>
      'ییٚلہِ آرڈر گاہکس اتھس منٛز آسہِ، تیٚلہِ کرِو تصدیق۔';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'گۄڈٕ گاہکس نِشہِ $amount وصول کرِو، پتہٕ کرِو تصدیق۔';
  }

  @override
  String get deliveryConfirmed =>
      'ڈیلیور گو۔ شکریہ، توہہِ چھِوٕ دوبارٕ آن لائن۔';

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
  String get releaseOrderButton => 'واپس کرِو';

  @override
  String get releaseOrderTitle => 'یہ آرڈر واپس کرٕو؟';

  @override
  String get releaseOrderBody =>
      'یہ گژھِ بیٚیِس رائِڈرس خٲطرٕ دوبارٕ لِسٹس منٛز۔ یہ ہیٚکِو توہہِ صرف کھَنہٕ ہیٚنہٕ برونٛہہ کٔرِتھ۔';

  @override
  String get releaseReasonHint => 'وجہ (اختیاری)';

  @override
  String get orderReleased =>
      'آرڈر گو واپس۔ یہ چھُ بیٚین رائِڈرن خٲطرٕ دوبارٕ دستیاب۔';

  @override
  String get finishCurrentOrderFirst =>
      'گۄڈٕ پنُن موجودٕ آرڈر مکمل یا واپس کرِو۔';

  @override
  String get callRestaurant => 'ریستورانس کال کرِو';

  @override
  String get callCustomer => 'گاہکس کال کرِو';

  @override
  String get openInMaps => 'وَتھ وُچھِو';

  @override
  String get customerNoteLabel => 'گاہک سُند نوٹ';

  @override
  String get orderItemsLabel => 'بیگس منٛز کیٚاہ چھُ';

  @override
  String get orderDetailsTitle => 'آرڈر تفصیل';

  @override
  String get historyTitle => 'پرانہٕ ڈیلیوری';

  @override
  String get historyEmptyTitle => 'ناوُ کانہہ ڈیلیوری نہ';

  @override
  String get historyEmptyBody =>
      'یِم آرڈر توہہِ مکمل کرِو، تِم ییٚنہٕ یَتہِ ہاونہٕ۔';

  @override
  String get historySearchHint => 'آرڈر یا ریستوران ژھانڈٕو';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'اَز';

  @override
  String get historyYesterday => 'راتھ';

  @override
  String get historyEarlier => 'برونہہ کٕنؠ';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڈیلیوری',
      one: '1 ڈیلیوری',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” سٕتؠ چھُ نہ کینٛہہ میلان۔';
  }

  @override
  String historyCashTaken(String amount) {
    return 'نقد وصول $amount';
  }

  @override
  String get orderDelivered => 'ڈیلیور گو';

  @override
  String get orderCancelled => 'منسوخ گو';

  @override
  String get orderPreparing => 'تیار گژھان';

  @override
  String get orderReadyForPickup => 'پِک اپ خٲطرٕ تیار';

  @override
  String get orderAssigned => 'توہہِ دِنہٕ آمُت';

  @override
  String get orderPickedUp => 'پِک اپ گو';

  @override
  String get orderOutForDelivery => 'وَتہِ پؠٹھٕ';

  @override
  String get trackingOn => 'جاے چھےٚ شیئر گژھان';

  @override
  String get locationUnavailableMessage =>
      'توہنٛز جاے چھےٚ نہ لبنہٕ یِوان۔ جاے آن کرِو تہٕ Nexmile Rider خٲطرٕ اجازت دِیِو۔';

  @override
  String get locationPermissionTitle => 'جاے ضروری';

  @override
  String get locationPermissionBody =>
      'آرڈر چھِ توہنٛدِس فاصلس مطابق ترتیب دِنہٕ یِوان، تہٕ گاہک چھُ توہہِ نقشس پؠٹھ وُچھان۔ آن لائن گژھنہٕ خٲطرٕ جاے ہٕنٛز اجازت دِیِو۔';

  @override
  String get locationSettingsButton => 'سیٹِنگز کھولٕو';

  @override
  String get enableLocationButton => 'جاے ہٕنٛز اجازت دِیِو';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'شِفٹ';

  @override
  String get payoutsTitle => 'أدایگی';

  @override
  String get payoutsEntryValue => 'ہفتہٕ وار کمٲے';

  @override
  String get payoutDetailsTitle => 'ہفتہٕ وار أدایگی';

  @override
  String get payoutsEmptyTitle => 'ناوُ کانہہ أدایگی نہ';

  @override
  String get payoutsEmptyBody =>
      'ہر ہفتُک حساب گژھنہٕ پتہٕ ییٚیہ توہنٛز کمٲے یَتہِ ہاونہٕ۔';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'زیرِ التوا';

  @override
  String get payoutStatusProcessing => 'پروسیس گژھان';

  @override
  String get payoutStatusPaid => 'أدا گو';

  @override
  String get payoutNotSentNote =>
      'امہِ ہفتہٕ ہٕنٛز توہنٛز کمٲے ہُند حساب گو۔ پونسہٕ چھِ نہ ناوُ توہنٛدِس بینکس سوزنہٕ آمٕتؠ۔';

  @override
  String payoutPaidOn(String date) {
    return 'پونسہٕ آیہ $date توہنٛدِس بینکس سوزنہٕ';
  }

  @override
  String get payoutPaidNote => 'امہِ ہفتہٕ ہُند بینک ٹرانسفر گو مکمل۔';

  @override
  String get payoutReferenceLabel => 'ٹرانسفر ریفرنس';

  @override
  String get payoutNetLabel => 'توہہِ میلنہٕ وٲلۍ رقم';

  @override
  String get payoutDeliveryEarnings => 'ڈیلیوری کمٲے';

  @override
  String get payoutReferralEarnings => 'ریفرل کمٲے';

  @override
  String get payoutCarriedIn => 'برونہہ کِس ہفتس منٛزٕ';

  @override
  String get payoutCarriedInNote =>
      '₹100 کھۄتہٕ کم رقم چھےٚ نہ الگ سوزنہٕ یِوان۔ سۄ چھےٚ یِنہٕ وٲلِس ہفتس منٛز شٲمِل کرنہٕ یِوان۔';

  @override
  String get payoutGross => 'کُل کمٲے';

  @override
  String get payoutDeductions => 'کٹوتی';

  @override
  String get payoutsLatestWeek => 'تازٕ ہفتہٕ';

  @override
  String get payoutsPaidSoFar => 'وُنی تام أدا گۆمُت';

  @override
  String get payoutsNotYetSent => 'ناوُ سوزنہٕ آمُت نہ';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'حساب گو';

  @override
  String get payoutStepSending => 'سوزنہٕ یِوان';

  @override
  String get payoutStepInBank => 'توہنٛدِس بینکس منٛز';

  @override
  String get navToRestaurant => 'ریستورانس کُن';

  @override
  String get navToCustomer => 'گاہکس کُن';

  @override
  String navHeadTowards(String place) {
    return '$place کُن گژھِو';
  }

  @override
  String navThen(String instruction) {
    return 'پتہٕ: $instruction';
  }

  @override
  String get navArrived => 'توہہِ چھِوٕ واتمٕتؠ';

  @override
  String navArrivedAt(String place) {
    return '$place پؠٹھ';
  }

  @override
  String get navFindingRoute => 'بہترین وَتھ ژھانڈان…';

  @override
  String get navNoRoute =>
      'سڑکہِ ہٕنٛز وَتھ چھےٚ نہ دستیاب۔ سیود فاصلہٕ چھُ ہاونہٕ یِوان۔';

  @override
  String get navCalibrateTitle => 'Compass needs calibrating';

  @override
  String get navCalibrateBody =>
      'Move your phone in a figure 8 a few times so the arrow points the right way.';

  @override
  String get navFindingLocation => 'توہنٛز جاے ژھانڈان…';

  @override
  String get navLocationOff => 'نیویگیشن خٲطرٕ جاے آن کرِو۔';

  @override
  String get navEnd => 'نیویگیشن بند کرِو';

  @override
  String get navRecentre => 'دوبارٕ مرکوز کرِو';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes مِنٹ';
  }

  @override
  String get navStart => 'نیویگیٹ کرِو';

  @override
  String get orderReachedRestaurant => 'ریستورانس پؠٹھ';

  @override
  String get orderReachedCustomer => 'گاہکس نِش';

  @override
  String get reachedRestaurantButton => 'بہٕ وۄتُس ریستورانس';

  @override
  String get reachedCustomerButton => 'بہٕ وۄتُس گاہکس نِش';

  @override
  String get reachedRestaurantDone =>
      'باورچی خانس آیہ خبر زِ توہہِ چھِوٕ واتمٕتؠ';

  @override
  String get reachedCustomerDone => 'گاہکس آیہ خبر زِ توہہِ چھِوٕ نیٚبر';

  @override
  String get offerTitle => 'نوٚو آرڈر';

  @override
  String get offerYouEarn => 'توہنٛز کمٲے';

  @override
  String get offerPickup => 'پِک اپ';

  @override
  String get offerDrop => 'ڈراپ';

  @override
  String offerAway(String distance) {
    return '$distance دُور';
  }

  @override
  String offerTrip(String distance) {
    return '$distance سفر';
  }

  @override
  String offerItems(String count) {
    return '$count چیزٕ';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount نقد وصول کرِو';
  }

  @override
  String get offerPrepaid => 'أدا گۆمُت · کانہہ نقد نہ';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'کھَنہٕ گژھِ تخمیناً $minutes مِنٹن منٛز تیار';
  }

  @override
  String get offerSwipeToAccept => 'قبول کرنہٕ خٲطرٕ سوائپ کرِو';

  @override
  String get offerAccepting => 'قبول کران…';

  @override
  String get offerReject => 'انکار کرِو';

  @override
  String get offerRejectTitle => 'توہہِ کیازِ چھِوٕ انکار کران؟';

  @override
  String get offerReasonTooFar => 'زیادٕ دُور';

  @override
  String get offerReasonBusy => 'وُنی مصروف';

  @override
  String get offerReasonVehicle => 'گٲڑِ منٛز خرٲبی';

  @override
  String get offerReasonOther => 'بیٚاکھ وجہ';

  @override
  String get offerTaken => 'آرڈر ہیوٚت بیٚیِ رائِڈرن';

  @override
  String get offerAutoOffline =>
      '3 آرڈرن جواب نہ دِنہٕ پتہٕ آیِو توہہِ آف لائن کرنہٕ۔ ییٚلہِ تیار آسِو، تیٚلہِ گژھِو آن لائن۔';

  @override
  String get mockLocationBlocked =>
      'آرڈر حٲصل کرنہٕ خٲطرٕ کانہہ تہِ فیک لوکیشن ایپ بند کرِو۔';

  @override
  String get dropoffDoorLabel => 'فلیٹ / منزل';

  @override
  String get dropoffStreetLabel => 'گلی';

  @override
  String get dropoffLandmarkLabel => 'نِشٲنی';

  @override
  String get doorPhotoLabel => 'دَروازُک فوٹو';

  @override
  String get doorPhotoHint => 'بوٚڈ وُچھنہٕ خٲطرٕ ٹیپ کرِو';

  @override
  String get doorPhotoUnavailable => 'فوٹو چھُ نہ وُنی دستیاب';

  @override
  String permStepCount(int step, int total) {
    return '$total منٛزٕ $step';
  }

  @override
  String get permNotNow => 'وُنی نہ';

  @override
  String get permLocationTitle => 'جاے آن کرِو';

  @override
  String get permLocationBody =>
      'آرڈر چھِ تَمِس رائِڈرس گژھان یُس ریستورانس سٲری کھۄتہٕ نزدیٚک آسہِ، تہٕ گاہک چھِ پنُن کھَنہٕ نقشس پؠٹھ وُچھان۔';

  @override
  String get permLocationNearTitle => 'توہنٛدِن نزدیٚکی آرڈر';

  @override
  String get permLocationNearBody =>
      'أسؠ چھِ توہہِ نزدیٚکی ریستورانن ہٕنٛدؠ آرڈر دِوان، تاکہ توہہِ پَیہِ کم سفر کرُن تہٕ کمٲے گژھِ زیادٕ۔';

  @override
  String get permLocationTrackTitle => 'لائیو ٹریکِنگ';

  @override
  String get permLocationTrackBody =>
      'گاہک چھِ توہہِ نقشس پؠٹھ وُچھان، تَوَے چھِ تِم توہہِ کم کال کران۔';

  @override
  String get permLocationOnlineTitle => 'صرف آن لائن آسنہٕ وقتہٕ';

  @override
  String get permLocationOnlineBody =>
      'آف لائن گژھِو تہٕ یہ گژھِ بند۔ ییٚلہِ یہ استعمال گژھان آسہِ، تیٚلہِ چھُ اکھ نوٹیفکیشن ہاونہٕ یِوان۔';

  @override
  String get permLocationAllow => 'جاے ہٕنٛز اجازت دِیِو';

  @override
  String get permNotifyTitle => 'ہر نوٚو آرڈر وقتس پؠٹھ حٲصل کرِو';

  @override
  String get permNotifyBody =>
      'نٔوؠ آرڈر چھِ فون کالہِ ہیُو بجان، سکرین لاک آسِتھ تہِ۔';

  @override
  String get permNotifyRingTitle => 'بجن وٲلؠ آرڈر الرٹ';

  @override
  String get permNotifyRingBody => 'الرٹس پؠٹھٕ سیٚدٕ قبول یا انکار کرِو۔';

  @override
  String get permNotifyUpdatesTitle => 'أدایگی تہٕ منظوری';

  @override
  String get permNotifyUpdatesBody =>
      'زانِو کر توہنٛدؠ دستاویز منظور گژھن تہٕ کر پونسہٕ سوزنہٕ یِن۔';

  @override
  String get permNotifyControlTitle => 'کنٹرول چھُ توہنٛدِس اتھس منٛز';

  @override
  String get permNotifyControlBody =>
      'یہ ہیٚکِو توہہِ کُنہِ تہِ وقتہٕ فونٕکؠ سیٹِنگز منٛز بدلٲوِتھ۔';

  @override
  String get permNotifyAllow => 'نوٹیفکیشن آن کرِو';

  @override
  String get permBatteryTitle => 'آرڈر رۄزن یِوان';

  @override
  String get permBatteryBody =>
      'فون چھِ بیٹری بچاونہٕ خٲطرٕ پس منظرس منٛز ایپ بند کران۔ آن لائن آسنہٕ وقتہٕ ٹھٲوِو Nexmile Rider چلان۔';

  @override
  String get permBatteryOrdersTitle => 'کانہہ آرڈر گژھِ نہ ضایع';

  @override
  String get permBatteryOrdersBody =>
      'ایپ بند آسِتھ تہٕ فون جیبہِ منٛز آسِتھ تہِ چھِ آرڈر توہہِ تام واتان۔';

  @override
  String get permBatteryLiveTitle => 'ٹریکِنگ رۄزِ لائیو';

  @override
  String get permBatteryLiveBody =>
      'ڈیلیوری کرنہٕ تام چھِ گاہک توہہِ نقشس پؠٹھ وُچھان۔';

  @override
  String get permBatteryLightTitle => 'بیٹری ہُند کم خرچ';

  @override
  String get permBatteryLightBody =>
      'یہ چھُ صرف آن لائن آسنہٕ وقتہٕ زیادٕ کٲم کران۔';

  @override
  String get permBatteryAllow => 'پس منظرس منٛز استعمالٕچ اجازت دِیِو';

  @override
  String get permFullScreenTitle => 'لاک سکرینس پؠٹھ آرڈر';

  @override
  String get permFullScreenBody =>
      'نٔوؠ آرڈر دِیِو لاک سکرینس پؠٹھ ہاونہٕ، یِوان کالہِ ہیُو، تاکہ توہہِ ہیٚکِو اکِس ٹیپس منٛز قبول کٔرِتھ۔';

  @override
  String get permFullScreenCallTitle => 'کالہِ ہیُو جواب دِیِو';

  @override
  String get permFullScreenCallBody =>
      'فون اَن لاک کرنہٕ بغٲر آرڈر وُچھِو تہٕ قبول کرِو۔';

  @override
  String get permFullScreenTimeTitle => 'وقتس پؠٹھ جواب دِیِو';

  @override
  String get permFullScreenTimeBody =>
      'یَمِس آرڈرس توہہِ جواب دِیِو نہ، سُہ گژھِ بیٚیِس رائِڈرس۔';

  @override
  String get permFullScreenOnlyTitle => 'صرف نٔوؠ آرڈرن خٲطرٕ';

  @override
  String get permFullScreenOnlyBody =>
      'توہنٛدِس لاک سکرینس پؠٹھ ییٚیہ نہ کُنہِ تہِ وقتہٕ کینٛہہ بیٚاکھ۔';

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
      'یِم مکمل کرِو تاکہ نٔوؠ آرڈر بجن، ایپ بند آسِتھ یا فون لاک آسِتھ تہِ۔';

  @override
  String get setupNotifications => 'نوٹیفکیشن';

  @override
  String get setupNotificationsBody =>
      'تاکہ نٔوؠ آرڈر ہیٚکن بٔجِتھ تہٕ نظر یِتھ۔';

  @override
  String get setupFullScreen => 'فُل سکرین آرڈر الرٹ';

  @override
  String get setupFullScreenBody =>
      'یہ چھُ نوٚو آرڈر کالہِ ہیُو توہنٛدِس لاک سکرینس پؠٹھ ہاوان۔';

  @override
  String get setupOverlay => 'Show over other apps';

  @override
  String get setupOverlayBody =>
      'Opens the new order card on top of whatever app you are using.';

  @override
  String get setupBattery => 'بیٹری: آپٹمائز مہ کرِو';

  @override
  String get setupBatteryBody =>
      'امہِ سٕتؠ کرِ نہ توہنٛد فون آن لائن آسنہٕ وقتہٕ ایپ بند۔';

  @override
  String get setupAutostart => 'آٹو سٹارٹ';

  @override
  String setupAutostartBody(String brand) {
    return '$brand فونن پؠٹھ گژھِ Nexmile Rider خٲطرٕ آٹو سٹارٹ تہِ آن آسُن۔ سیٹِنگز کھولٕو، آٹو سٹارٹ ژھانڈٕو تہٕ آن کرِو۔';
  }

  @override
  String get setupLocation => 'جاے';

  @override
  String get setupLocationBody => 'توہہِ نزدیٚکی آرڈر سوزنہٕ خٲطرٕ ضروری۔';

  @override
  String get setupAllow => 'اجازت دِیِو';

  @override
  String get setupOpenSettings => 'سیٹِنگز کھولٕو';

  @override
  String get setupMarkDone => 'مےٚ کوٚر یہ';

  @override
  String get setupDoneStep => 'مکمل';

  @override
  String get setupBannerTitle => 'فون سیٹ اپ مکمل کرِو';

  @override
  String setupBannerBody(String count) {
    return '$count باقی، تاکہ کانہہ آرڈر الرٹ گژھِ نہ ضایع';
  }

  @override
  String get offerEstimatedEarnings => 'تخمینی کمٲے';

  @override
  String offerPickupLine(String name) {
    return 'پِک اپ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ڈراپ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'توہہِ نِشہِ تخمیناً $distance دُور';
  }

  @override
  String get exitTitle => 'Nexmile Rider بند کرٕو؟';

  @override
  String get exitBody => 'کیٚاہ توہہِ چھِوٕ واقعی ایپ بند کرُن یژھان؟';

  @override
  String get exitConfirm => 'بند کرِو';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ڈیلیوری پارٹنر بنِو';

  @override
  String get onboardingWelcomeSubtitle =>
      'پننِس علاقس منٛز ڈیلیوری کرِو، پنُن وقت پانہٕ ژارٕو، تہٕ ہر ہفتہٕ أدایگی حٲصل کرِو۔';

  @override
  String get onboardingWelcomeNeed => 'یِم تیار ٹھٲوِو';

  @override
  String get onboardingNeedAadhaar => 'آدھار کارڈ';

  @override
  String get onboardingNeedPan => 'PAN کارڈ';

  @override
  String get onboardingNeedLicence => 'ڈرائیونگ لائسنس تہٕ گٲڑِ ہُند RC';

  @override
  String get onboardingNeedInsurance => 'گٲڑِ ہُند انشورنس';

  @override
  String get onboardingNeedBank => 'بینک کھاتس ہٕنٛز تفصیل';

  @override
  String get onboardingNeedNote =>
      'سائیکلہِ پؠٹھ یا پَیدل؟ توہہِ چھُ صرف آدھار، PAN تہٕ بینک کھاتہٕ ضروری۔';

  @override
  String get onboardingWelcomeTime => 'تخمیناً 10 مِنٹ چھِ لگان';

  @override
  String get onboardingGetStarted => 'شُروع کرِو';

  @override
  String get onboardingSavedNote => 'ہر قدمہٕ پتہٕ حفاظتہٕ سٕتؠ محفوظ';

  @override
  String get docsTip =>
      'جانہِ گاشس منٛز صاف فوٹو چھِ سٲری کھۄتہٕ جلدی منظور گژھان۔';

  @override
  String get docsAllDone =>
      'سٲری ضروری دستاویز چھِ اپلوڈ۔ آخری جانچ خٲطرٕ برونہہ گژھِو۔';

  @override
  String get docGroupIdentity => 'شناختی ثبوت';

  @override
  String get docGroupVehicle => 'لائسنس تہٕ گٲڑِ ہٕنٛدؠ کاغذ';

  @override
  String get docGroupMore => 'بیٚیہ دستاویز';

  @override
  String get docTapToAdd => 'شٲمِل کرنہٕ خٲطرٕ ٹیپ کرِو';

  @override
  String get docUploading => 'اپلوڈ گژھان…';

  @override
  String get docView => 'وُچھِو';

  @override
  String get docSheetSubtitle => 'یہ کِتھ کٔنؠ گژھِ گۄڈنِچہِ لٹہِ منظور';

  @override
  String get docTipCorners => 'ژورٕوَے کونہٕ فوٹوہس اندر';

  @override
  String get docTipGlare => 'صاف لفظ، نہ چمک نہ سایہٕ';

  @override
  String get docTipOriginal => 'اصلی دستاویز، فوٹو کاپی نہ';

  @override
  String get docTipFace => 'توہنٛد بُتھ صاف نظر یِیِ، سیٚدٕ برونٛہہ وُچھان';

  @override
  String get docTipBackground => 'سادٕ پس منظر تہٕ جان گاش';

  @override
  String get docTipNoCap => 'ٹوپی، ماسک یا دھوپ چشمہٕ نہ';

  @override
  String get docTipFullPage => 'پورٕ صفحہٕ، ہر لائن پرنہٕ لایق';

  @override
  String get docSourceCamera => 'کیمرہ';

  @override
  String get docSourceGallery => 'گیلری';

  @override
  String get docSourceFile => 'PDF یا فائل';

  @override
  String get reviewSectionDetails => 'توہنٛز تفصیل';

  @override
  String get reviewSectionDocuments => 'دستاویز';

  @override
  String get reviewSectionBank => 'بینک کھاتہٕ';

  @override
  String get reviewBankHidden => 'شٲمِل · حفاظتہٕ خٲطرٕ کھٹاونہٕ آمُت';

  @override
  String get reviewEdit => 'تبدیٖلی کرِو';

  @override
  String get reviewNextTitle => 'پتہٕ کیٚاہ گژھِ';

  @override
  String get reviewNext1 => 'توہہِ کرِو پنٕنۍ درخواست جمع';

  @override
  String get reviewNext2 => 'ساني ٹیم کرِ توہنٛز تفصیل تہٕ دستاویز چیک';

  @override
  String get reviewNext3 => 'توہہِ میلِ خبر، آن لائن گژھِو تہٕ کمٲے شُروع کرِو';

  @override
  String get kycStepSubmitted => 'درخواست آیہ جمع کرنہٕ';

  @override
  String get kycStepVerifying => 'توہنٛدؠ دستاویز چھِ تصدیق گژھان';

  @override
  String get kycStepApproved => 'منظور — آن لائن گژھِو تہٕ کمٲے شُروع کرِو';
}
