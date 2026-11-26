// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'விரைவான டெலிவரி. புத்துணர்ச்சியான புன்னகை.';

  @override
  String get chooseLanguageTitle => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get chooseLanguageSubtitle =>
      'உங்களுக்கு வசதியான மொழியைத் தேர்ந்தெடுக்கவும். அமைப்புகளில் எப்போது வேண்டுமானாலும் இதை மாற்றலாம்.';

  @override
  String get searchLanguageHint => 'மொழியைத் தேடுங்கள்';

  @override
  String get noLanguageFound => 'மொழி எதுவும் கிடைக்கவில்லை';

  @override
  String languagesAvailable(int count) {
    return '$count மொழிகள் உள்ளன';
  }

  @override
  String get continueLabel => 'தொடரவும்';

  @override
  String get selectedLabel => 'தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get defaultLabel => 'இயல்பு';

  @override
  String get homeTitle => 'Nexmile-க்கு வரவேற்கிறோம்';

  @override
  String get homeSubtitle =>
      'புதிய மளிகைப் பொருட்கள், சூடான உணவு மற்றும் அன்றாடத் தேவைகள் உங்கள் அருகிலுள்ள கடைகளிலிருந்து.';

  @override
  String get changeLanguage => 'மொழியை மாற்று';

  @override
  String get languageUpdated => 'மொழி மாற்றப்பட்டது';

  @override
  String get appLanguageLabel => 'செயலி மொழி';

  @override
  String greetingNamed(String name) {
    return 'வணக்கம், $name';
  }

  @override
  String get loginTitle => 'Nexmile-இல் உள்நுழையவும்';

  @override
  String get loginSubtitle =>
      'உங்கள் மின்னஞ்சல் அல்லது கைபேசி எண்ணை உள்ளிடுங்கள், சரிபார்ப்புக் குறியீட்டை அனுப்புகிறோம்.';

  @override
  String get emailOrPhoneLabel => 'மின்னஞ்சல் அல்லது கைபேசி எண்';

  @override
  String get emailOrPhoneHint => 'name@example.com அல்லது 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'சரியான மின்னஞ்சல் முகவரி அல்லது 10 இலக்க கைபேசி எண்ணை உள்ளிடவும்';

  @override
  String get loginHeadline =>
      'Nexmile-உடன் டெலிவரி செய்யுங்கள். உங்கள் நேரத்தில் சம்பாதியுங்கள்.';

  @override
  String get loginOrSignUp => 'உள்நுழையவும் அல்லது பதிவு செய்யவும்';

  @override
  String get loginEmailHint => 'உங்கள் மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get invalidEmail => 'சரியான மின்னஞ்சல் முகவரியை உள்ளிடவும்';

  @override
  String get loginHeroBadge => 'டெலிவரி பார்ட்னர்';

  @override
  String get sendCode => 'குறியீட்டை அனுப்பு';

  @override
  String get agreeToTermsOnContinue =>
      'தொடர்வதன் மூலம், எங்கள் சேவை விதிமுறைகள் மற்றும் தனியுரிமைக் கொள்கையை ஏற்கிறீர்கள்.';

  @override
  String get otpTitle => 'நீங்கள்தான் என உறுதிப்படுத்துங்கள்';

  @override
  String otpSubtitle(String target) {
    return '$target க்கு அனுப்பிய 6 இலக்கக் குறியீட்டை உள்ளிடவும்';
  }

  @override
  String get otpHelpTitle => 'குறியீடு வரவில்லையா?';

  @override
  String get otpHelpCheck =>
      'மேலே உள்ள எண்ணையோ மின்னஞ்சலையோ சரிபார்க்கவும். அதை மாற்ற பின்செல்லவும்.';

  @override
  String get otpHelpWait =>
      'குறியீடு வர ஒரு நிமிடம் வரை ஆகலாம். டைமர் முடிந்ததும் புதிய குறியீட்டைக் கேட்கலாம்.';

  @override
  String get otpHelpSpam =>
      'மின்னஞ்சல் என்றால், ஸ்பேம் ஃபோல்டரையும் பாருங்கள்.';

  @override
  String get verifyCode => 'சரிபார்க்கவும்';

  @override
  String get resendCode => 'குறியீட்டை மீண்டும் அனுப்பு';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds வினாடிகளில் மீண்டும் அனுப்பலாம்';
  }

  @override
  String get codeResent => 'புதிய குறியீடு அனுப்பப்பட்டது';

  @override
  String get incorrectCode =>
      'இந்தக் குறியீடு தவறானது அல்லது காலாவதியாகிவிட்டது. புதியதைக் கோரவும்.';

  @override
  String get enterFullCode => '6 இலக்கங்களையும் உள்ளிடவும்';

  @override
  String get accountSuspended =>
      'இந்தக் கணக்கு இடைநிறுத்தப்பட்டுள்ளது. ஆதரவைத் தொடர்பு கொள்ளவும்.';

  @override
  String get tooManyAttempts =>
      'பல முறை முயற்சித்துவிட்டீர்கள். சிறிது நேரம் கழித்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get sessionExpired =>
      'உங்கள் அமர்வு காலாவதியாகிவிட்டது. மீண்டும் உள்நுழையவும்.';

  @override
  String get networkError =>
      'இணைய இணைப்பு இல்லை. உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get developmentCode => 'டெவலப்மென்ட் குறியீடு';

  @override
  String get signOut => 'வெளியேறு';

  @override
  String get signedOut => 'நீங்கள் வெளியேறிவிட்டீர்கள்';

  @override
  String get somethingWentWrong => 'ஏதோ தவறு நடந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get profileTitle => 'சுயவிவரம்';

  @override
  String get profileSectionDetails => 'உங்கள் விவரங்கள்';

  @override
  String get profileSectionWork => 'வேலை';

  @override
  String get profileSectionApp => 'ஆப் அமைப்புகள்';

  @override
  String get viewProfile => 'சுயவிவரத்தைப் பார்';

  @override
  String get nameLabel => 'பெயர்';

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get mobileLabel => 'கைபேசி எண்';

  @override
  String get accountStatusLabel => 'கணக்கு நிலை';

  @override
  String get statusActive => 'செயலில்';

  @override
  String get statusPending => 'நிலுவையில்';

  @override
  String get statusSuspended => 'இடைநிறுத்தப்பட்டது';

  @override
  String get verifiedLabel => 'சரிபார்க்கப்பட்டது';

  @override
  String get notProvided => 'சேர்க்கப்படவில்லை';

  @override
  String get retry => 'மீண்டும் முயற்சிக்கவும்';

  @override
  String get loginRiderNote =>
      'இந்த ஆப் நெக்ஸ்மைல் டெலிவரி பார்ட்னர்களுக்கானது.';

  @override
  String get checkingYourAccount => 'உங்கள் கணக்கைச் சரிபார்க்கிறோம்';

  @override
  String get couldNotLoadAccount =>
      'உங்கள் கணக்கை ஏற்ற முடியவில்லை. இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get notARiderAccountTitle => 'இது டெலிவரி பார்ட்னர் கணக்கு அல்ல';

  @override
  String get notARiderAccount =>
      'இந்த மின்னஞ்சல் அல்லது கைபேசி எண் ஏற்கனவே நெக்ஸ்மைல் வாடிக்கையாளராகப் பதிவாகியுள்ளது. வெளியேறி, டெலிவரி பார்ட்னராகச் சேர வேறொன்றைப் பயன்படுத்தவும்.';

  @override
  String notARiderAccountFor(String role) {
    return 'இந்த மின்னஞ்சல் அல்லது கைபேசி எண் ஏற்கனவே நெக்ஸ்மைல் $role எனப் பதிவாகியுள்ளது. வெளியேறி, டெலிவரி பார்ட்னராகச் சேர வேறொன்றைப் பயன்படுத்தவும்.';
  }

  @override
  String get roleCustomer => 'வாடிக்கையாளர்';

  @override
  String get roleMerchant => 'வணிகர்';

  @override
  String get roleAdmin => 'நிர்வாகி';

  @override
  String get useAnotherAccount => 'வேறு கணக்கைப் பயன்படுத்து';

  @override
  String get onboardingTitle => 'நெக்ஸ்மைல் பார்ட்னராகுங்கள்';

  @override
  String get onboardingSubtitle =>
      'சில விவரங்கள் மற்றும் உங்கள் ஆவணங்கள், பிறகு எங்கள் குழு உங்களைச் சரிபார்க்கும். பொதுவாக இரண்டு வேலை நாட்கள் ஆகும்.';

  @override
  String stepOfSteps(int current, int total) {
    return 'படி $current / $total';
  }

  @override
  String get stepIdentityTitle => 'உங்களைப் பற்றி';

  @override
  String get stepIdentitySubtitle =>
      'உங்கள் ஆதார் அட்டையில் உள்ளபடியே பெயரை உள்ளிடவும்.';

  @override
  String get stepVehicleTitle => 'உங்கள் வாகனம்';

  @override
  String get stepVehicleSubtitle =>
      'நீங்கள் ஓட்டும் வாகனத்தையும் அதன் பதிவு எண்ணையும் தெரிவிக்கவும்.';

  @override
  String get stepIdentityNumbersTitle => 'அடையாள எண்கள்';

  @override
  String get stepIdentityNumbersSubtitle =>
      'நீங்கள் பிறகு பதிவேற்றும் ஆவணங்களுடன் இவை பொருந்த வேண்டும்.';

  @override
  String get stepLicenceTitle => 'உரிமம் மற்றும் காப்பீடு';

  @override
  String get stepLicenceSubtitle =>
      'நீங்கள் டெலிவரி தொடங்கும் நாளில் இரண்டும் செல்லுபடியாக இருக்க வேண்டும்.';

  @override
  String get stepBankTitle => 'பணம் பெறும் இடம்';

  @override
  String get stepBankSubtitle =>
      'உங்கள் வருமானம் இந்தக் கணக்கிற்கே வரும். கவனமாகச் சரிபார்க்கவும்.';

  @override
  String get stepDocumentsTitle => 'உங்கள் ஆவணங்கள்';

  @override
  String get stepDocumentsSubtitle =>
      'நல்ல வெளிச்சத்தில் ஒவ்வொன்றையும் புகைப்படம் எடுக்கவும். JPG, PNG அல்லது PDF, ஒவ்வொன்றும் 5 MB வரை.';

  @override
  String get stepReviewTitle => 'சரிபார்த்து அனுப்பவும்';

  @override
  String get stepReviewSubtitle =>
      'அனுப்பியவுடன், எங்கள் குழு பரிசீலிக்கும் வரை உங்கள் விவரங்கள் பூட்டப்படும்.';

  @override
  String get saveAndContinue => 'சேமித்துத் தொடரவும்';

  @override
  String get backLabel => 'பின்செல்';

  @override
  String get fullNameLabel => 'முழுப் பெயர்';

  @override
  String get fullNameHint => 'ஆதாரில் அச்சிடப்பட்டுள்ளபடி';

  @override
  String get dateOfBirthLabel => 'பிறந்த தேதி';

  @override
  String get selectDate => 'தேதியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get vehicleTypeLabel => 'வாகன வகை';

  @override
  String get vehicleMotorcycle => 'மோட்டார் சைக்கிள்';

  @override
  String get vehicleScooter => 'ஸ்கூட்டர்';

  @override
  String get vehicleEv => 'மின்சார வாகனம்';

  @override
  String get vehicleBicycle => 'சைக்கிள்';

  @override
  String get vehicleWalk => 'நடந்து';

  @override
  String get vehicleNoPapersNote =>
      'வாகன எண் அல்லது RC தேவையில்லை. ஆதார் மற்றும் PAN மட்டுமே கேட்கப்படும்.';

  @override
  String get vehicleNumberLabel => 'வாகன எண்';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC எண்';

  @override
  String get aadhaarLabel => 'ஆதார் எண்';

  @override
  String get aadhaarHint => '12 இலக்கங்கள்';

  @override
  String get panLabel => 'பான் (PAN)';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ஓட்டுநர் உரிம எண்';

  @override
  String get drivingLicenceExpiryLabel => 'உரிமம் செல்லுபடியாகும் தேதி';

  @override
  String get insuranceNumberLabel => 'காப்பீட்டுப் பாலிசி எண்';

  @override
  String get insuranceExpiryLabel => 'காப்பீடு செல்லுபடியாகும் தேதி';

  @override
  String get bankAccountNameLabel => 'கணக்கு வைத்திருப்பவர் பெயர்';

  @override
  String get bankAccountNumberLabel => 'கணக்கு எண்';

  @override
  String get bankIfscLabel => 'IFSC குறியீடு';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total இல் $done பதிவேற்றப்பட்டது';
  }

  @override
  String get uploadDocument => 'பதிவேற்று';

  @override
  String get replaceDocument => 'மாற்று';

  @override
  String get removeDocument => 'நீக்கு';

  @override
  String get takePhoto => 'புகைப்படம் எடுக்கவும்';

  @override
  String get chooseFromGallery => 'கேலரியிலிருந்து தேர்ந்தெடுக்கவும்';

  @override
  String get chooseFile => 'கோப்பைத் தேர்ந்தெடுக்கவும்';

  @override
  String get uploadingLabel => 'பதிவேற்றுகிறது';

  @override
  String get documentRejected => 'நிராகரிக்கப்பட்டது';

  @override
  String get documentUploaded => 'பதிவேற்றப்பட்டது';

  @override
  String get documentApproved => 'ஏற்கப்பட்டது';

  @override
  String get documentRequired => 'தேவை';

  @override
  String get documentOptional => 'விருப்பத்தேர்வு';

  @override
  String get fileTooLarge =>
      'அந்தக் கோப்பு 5 MB-ஐ விட பெரியது. ஸ்கேனுக்குப் பதிலாக புகைப்படத்தை முயற்சிக்கவும்.';

  @override
  String get unsupportedFileType =>
      'JPG, PNG அல்லது PDF கோப்பைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get pickerUnavailable =>
      'அதைத் திறக்க முடியவில்லை. ஆப்பின் கேமரா மற்றும் புகைப்பட அனுமதிகளைச் சரிபார்க்கவும்.';

  @override
  String get uploadFailed =>
      'அந்தப் பதிவேற்றம் நிறைவடையவில்லை. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get submitForVerification => 'சரிபார்ப்புக்கு அனுப்பவும்';

  @override
  String get submitConfirmTitle => 'சரிபார்ப்புக்கு அனுப்பலாமா?';

  @override
  String get submitConfirmBody =>
      'எங்கள் குழு பரிசீலிக்கும் வரை உங்கள் விவரங்களும் ஆவணங்களும் பூட்டப்படும். முடிவு வரும் வரை அவற்றை மாற்ற முடியாது.';

  @override
  String get cancelLabel => 'ரத்து';

  @override
  String get completeEverythingBeforeSubmitting =>
      'அனுப்பும் முன் எல்லாப் படிகளையும் முடித்து, எல்லா ஆவணங்களையும் பதிவேற்றவும்.';

  @override
  String get checkTheHighlightedFields =>
      'குறிக்கப்பட்ட புலங்களைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get underReviewTitle => 'உங்கள் ஆவணங்களைச் சரிபார்க்கிறோம்';

  @override
  String get underReviewBody =>
      'எங்கள் குழு பொதுவாக இரண்டு வேலை நாட்களுக்குள் பரிசீலிக்கும். நீங்கள் ஏற்கப்பட்டவுடன் தெரிவிப்போம்.';

  @override
  String get checkAgain => 'மீண்டும் சரிபார்க்கவும்';

  @override
  String get stillUnderReview => 'இன்னும் பரிசீலனையில் உள்ளது';

  @override
  String get rejectedTitle => 'உங்களைச் சரிபார்க்க முடியவில்லை';

  @override
  String get rejectedBody =>
      'கீழே எங்கள் குழு குறிப்பிட்டதைச் சரிசெய்து, ஆவணங்களை மீண்டும் அனுப்பவும்.';

  @override
  String get rejectionReasonLabel => 'காரணம்';

  @override
  String get fixAndResubmit => 'சரிசெய்து மீண்டும் அனுப்பவும்';

  @override
  String get blockedTitle => 'நீங்கள் இன்னும் ஆன்லைனுக்கு வர முடியாது';

  @override
  String get documentsExpiredMessage =>
      'உங்கள் உரிமம் அல்லது காப்பீடு காலாவதியாகிவிட்டது. ஆன்லைனுக்கு வர தற்போதைய ஆவணங்களைப் பதிவேற்றவும்.';

  @override
  String get awaitingVerificationMessage =>
      'உங்கள் ஆவணங்கள் இன்னும் சரிபார்க்கப்படுகின்றன.';

  @override
  String get updateDocuments => 'ஆவணங்களைப் புதுப்பிக்கவும்';

  @override
  String get riderHomeTitle => 'பயணத்திற்குத் தயார்';

  @override
  String get riderHomeSubtitle =>
      'ஆன்லைனுக்கு வாருங்கள், அருகிலுள்ள டெலிவரிகளை உங்களுக்கு அனுப்புவோம்.';

  @override
  String get dutyStatusLabel => 'பணி நிலை';

  @override
  String get dutyOnline => 'ஆன்லைன்';

  @override
  String get dutyOffline => 'ஆஃப்லைன்';

  @override
  String get dutyOnBreak => 'இடைவேளையில்';

  @override
  String get goOnline => 'ஆன்லைனுக்கு வா';

  @override
  String get goOffline => 'ஆஃப்லைனுக்குச் செல்';

  @override
  String get takeABreak => 'இடைவேளை எடு';

  @override
  String get waitingForOrders => 'அருகில் ஆர்டர்களுக்காகக் காத்திருக்கிறோம்';

  @override
  String get youAreOffline =>
      'நீங்கள் ஆஃப்லைனில் உள்ளீர்கள். உங்களுக்கு டெலிவரிகள் அனுப்பப்படாது.';

  @override
  String get completedDeliveriesLabel => 'முடிக்கப்பட்ட டெலிவரிகள்';

  @override
  String get ratingLabel => 'மதிப்பீடு';

  @override
  String get notRatedYet => 'இன்னும் மதிப்பிடப்படவில்லை';

  @override
  String get vehicleLabel => 'வாகனம்';

  @override
  String get kycStatusLabel => 'சரிபார்ப்பு';

  @override
  String get kycPending => 'அனுப்பப்படவில்லை';

  @override
  String get kycSubmitted => 'பரிசீலனையில்';

  @override
  String get kycVerified => 'ஏற்கப்பட்டது';

  @override
  String get kycRejected => 'நிராகரிக்கப்பட்டது';

  @override
  String get fieldRequired => 'இது அவசியம்';

  @override
  String get invalidAadhaar => 'உங்கள் ஆதார் எண்ணின் 12 இலக்கங்களை உள்ளிடவும்';

  @override
  String get invalidPan =>
      'செல்லுபடியாகும் பான் எண்ணை உள்ளிடவும், எ.கா. ABCDE1234F';

  @override
  String get invalidIfsc =>
      'செல்லுபடியாகும் IFSC குறியீட்டை உள்ளிடவும், எ.கா. SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'பதிவுத் தகட்டில் உள்ளபடியே எண்ணை உள்ளிடவும்';

  @override
  String get invalidAccountNumber => 'செல்லுபடியாகும் கணக்கு எண்ணை உள்ளிடவும்';

  @override
  String get dateMustBeFuture => 'இந்தத் தேதி ஏற்கனவே கடந்துவிட்டது';

  @override
  String get mustBeEighteen =>
      'டெலிவரி செய்ய நீங்கள் குறைந்தது 18 வயது நிரம்பியவராக இருக்க வேண்டும்';

  @override
  String get docAadhaarFront => 'ஆதார் அட்டை (முன்பக்கம்)';

  @override
  String get docAadhaarBack => 'ஆதார் அட்டை (பின்பக்கம்)';

  @override
  String get docDrivingLicence => 'ஓட்டுநர் உரிமம்';

  @override
  String get docVehicleRc => 'வாகனப் பதிவுச் சான்றிதழ்';

  @override
  String get docInsurance => 'வாகனக் காப்பீடு';

  @override
  String get docProfilePhoto => 'சுயவிவரப் புகைப்படம்';

  @override
  String get docPan => 'பான் அட்டை';

  @override
  String get docBankProof => 'ரத்து செய்யப்பட்ட காசோலை அல்லது வங்கி அறிக்கை';

  @override
  String get ordersTab => 'ஆர்டர்கள்';

  @override
  String get deliveryTab => 'டெலிவரி';

  @override
  String get historyTab => 'வரலாறு';

  @override
  String get orderBoardTitle => 'அருகிலுள்ள ஆர்டர்கள்';

  @override
  String get orderBoardSubtitle =>
      'அருகிலுள்ள உணவகம் முதலில். பட்டியல் தானாகவே புதுப்பிக்கும்.';

  @override
  String orderNumberLabel(String number) {
    return 'ஆர்டர் $number';
  }

  @override
  String get pickupLabel => 'எடுக்க வேண்டிய இடம்';

  @override
  String get dropoffLabel => 'சேர்க்க வேண்டிய இடம்';

  @override
  String distanceMetres(String metres) {
    return '$metres மீ';
  }

  @override
  String distanceKilometres(String km) {
    return '$km கிமீ';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பொருட்கள்',
      one: '1 பொருள்',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'உங்கள் வருமானம்';

  @override
  String get collectCashLabel => 'பணம் வாங்குங்கள்';

  @override
  String get prepaidLabel => 'ஆன்லைனில் செலுத்தப்பட்டது';

  @override
  String collectAtDoor(String amount) {
    return 'வாடிக்கையாளரிடம் $amount வாங்குங்கள்';
  }

  @override
  String get nothingToCollect =>
      'ஏற்கெனவே பணம் செலுத்தப்பட்டுவிட்டது. பணம் கேட்க வேண்டாம்.';

  @override
  String get acceptOrder => 'ஏற்கவும்';

  @override
  String get viewOrder => 'பார்க்க';

  @override
  String get orderAccepted =>
      'ஆர்டர் ஏற்கப்பட்டது. உணவகத்திற்குச் செல்லுங்கள்.';

  @override
  String get orderAlreadyTaken =>
      'இந்த ஆர்டரை வேறு ஒரு ரைடர் எடுத்துவிட்டார். இதோ புதிய பட்டியல்.';

  @override
  String get orderNoLongerYours => 'இந்த ஆர்டர் இனி உங்களுடையது அல்ல.';

  @override
  String get boardEmptyTitle => 'இப்போது ஆர்டர்கள் இல்லை';

  @override
  String get boardEmptyBody =>
      'ஆன்லைனில் இருங்கள். உணவகங்கள் பரபரப்பாகும்போது பட்டியல் தானாகவே நிரம்பும்.';

  @override
  String get boardOfflineTitle => 'நீங்கள் ஆஃப்லைனில் இருக்கிறீர்கள்';

  @override
  String get boardOfflineBody => 'ஆர்டர்கள் வர ஆன்லைனுக்கு வாருங்கள்.';

  @override
  String get boardBusyTitle => 'முதலில் உங்கள் டெலிவரியை முடியுங்கள்';

  @override
  String get boardBusyBody => 'இதைச் சேர்த்த பிறகு அடுத்த ஆர்டரை எடுக்கலாம்.';

  @override
  String get boardNoLocationTitle => 'உங்களைக் கண்டறிய முடியவில்லை';

  @override
  String get boardNoLocationBody =>
      'உணவகம் எவ்வளவு அருகில் இருக்கிறது என்பதை வைத்தே ஆர்டர்கள் வரிசைப்படுத்தப்படுகின்றன. அதனால் உங்கள் இருப்பிடம் தேவை.';

  @override
  String get boardNotVerifiedTitle => 'இன்னும் ரைடு செய்ய அனுமதி இல்லை';

  @override
  String get activeDeliveryTitle => 'உங்கள் டெலிவரி';

  @override
  String get headToRestaurant => 'உணவகத்திற்குச் செல்லுங்கள்';

  @override
  String get deliverToCustomer => 'வாடிக்கையாளரிடம் சேர்க்கவும்';

  @override
  String get noActiveDeliveryTitle => 'கையில் ஆர்டர் இல்லை';

  @override
  String get noActiveDeliveryBody =>
      'பட்டியலிலிருந்து ஒரு ஆர்டரை ஏற்றால் அது இங்கே தோன்றும்.';

  @override
  String get confirmPickupButton => 'நான் எடுத்துவிட்டேன்';

  @override
  String get pickupCodeTitle => 'பிக்அப் குறியீடு';

  @override
  String get pickupCodeSubtitle =>
      'உணவகத்திடம் குறியீட்டைக் கேட்டு இங்கே தட்டச்சு செய்யுங்கள்.';

  @override
  String get pickupCodeHint => 'குறியீடு';

  @override
  String get wrongPickupCode =>
      'இந்தக் குறியீடு பொருந்தவில்லை. உணவகத்திடம் மீண்டும் கேளுங்கள்.';

  @override
  String get pickupConfirmed =>
      'எடுத்துவிட்டீர்கள். இப்போது வாடிக்கையாளரிடம் சேருங்கள்.';

  @override
  String get confirmDeliveryButton => 'சேர்த்துவிட்டேன்';

  @override
  String get stepReachRestaurant => 'உணவகத்துக்குச் செல்';

  @override
  String get stepPickUp => 'ஆர்டரை எடு';

  @override
  String get stepReachCustomer => 'வாடிக்கையாளரிடம் செல்';

  @override
  String get stepDeliver => 'டெலிவரி செய்';

  @override
  String get swipePickUp => 'எடுத்ததும் ஸ்வைப் செய்யுங்கள்';

  @override
  String get swipeDeliver => 'டெலிவரி செய்ய ஸ்வைப் செய்யுங்கள்';

  @override
  String get cashToCollectLabel => 'வாடிக்கையாளரிடம் வாங்க வேண்டிய பணம்';

  @override
  String get confirmDeliveryTitle => 'டெலிவரியை உறுதிப்படுத்தவும்';

  @override
  String get confirmDeliveryBody =>
      'ஆர்டர் வாடிக்கையாளர் கையில் சேர்ந்த பிறகுதான் உறுதிப்படுத்துங்கள்.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'முதலில் $amount வாங்கிவிட்டு, பிறகு உறுதிப்படுத்துங்கள்.';
  }

  @override
  String get deliveryConfirmed =>
      'சேர்த்துவிட்டீர்கள். நன்றி, நீங்கள் மீண்டும் ஆன்லைனில் இருக்கிறீர்கள்.';

  @override
  String get releaseOrderButton => 'திருப்பிக் கொடுங்கள்';

  @override
  String get releaseOrderTitle => 'இந்த ஆர்டரைத் திருப்பிக் கொடுக்கவா?';

  @override
  String get releaseOrderBody =>
      'இது வேறு ரைடருக்காக பட்டியலுக்குத் திரும்பும். உணவை எடுப்பதற்கு முன் மட்டுமே இதைச் செய்ய முடியும்.';

  @override
  String get releaseReasonHint => 'காரணம் (விருப்பம்)';

  @override
  String get orderReleased =>
      'திருப்பிக் கொடுத்துவிட்டீர்கள். மற்ற ரைடர்களுக்கு இது மீண்டும் கிடைக்கும்.';

  @override
  String get finishCurrentOrderFirst =>
      'முதலில் தற்போதைய ஆர்டரை முடியுங்கள் அல்லது திருப்பிக் கொடுங்கள்.';

  @override
  String get callRestaurant => 'உணவகத்தை அழைக்க';

  @override
  String get callCustomer => 'வாடிக்கையாளரை அழைக்க';

  @override
  String get openInMaps => 'வழி காட்டு';

  @override
  String get customerNoteLabel => 'வாடிக்கையாளரின் குறிப்பு';

  @override
  String get orderItemsLabel => 'பையில் என்ன இருக்கிறது';

  @override
  String get orderDetailsTitle => 'ஆர்டர் விவரங்கள்';

  @override
  String get historyTitle => 'முந்தைய டெலிவரிகள்';

  @override
  String get historyEmptyTitle => 'இதுவரை டெலிவரி இல்லை';

  @override
  String get historyEmptyBody =>
      'நீங்கள் முடித்த ஆர்டர்கள் இங்கே பட்டியலிடப்படும்.';

  @override
  String get historySearchHint => 'ஆர்டர் அல்லது உணவகத்தைத் தேடுங்கள்';

  @override
  String get historyToday => 'இன்று';

  @override
  String get historyYesterday => 'நேற்று';

  @override
  String get historyEarlier => 'முந்தையவை';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count டெலிவரிகள்',
      one: '1 டெலிவரி',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query”-க்குப் பொருந்தும் எதுவும் இல்லை.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount பணம் வாங்கினீர்கள்';
  }

  @override
  String get orderDelivered => 'சேர்க்கப்பட்டது';

  @override
  String get orderCancelled => 'ரத்து செய்யப்பட்டது';

  @override
  String get orderPreparing => 'தயாராகிக் கொண்டிருக்கிறது';

  @override
  String get orderReadyForPickup => 'எடுக்கத் தயார்';

  @override
  String get orderAssigned => 'உங்களுக்கு ஒதுக்கப்பட்டது';

  @override
  String get orderPickedUp => 'எடுக்கப்பட்டது';

  @override
  String get orderOutForDelivery => 'வழியில்';

  @override
  String get trackingOn => 'இருப்பிடம் பகிரப்படுகிறது';

  @override
  String get locationUnavailableMessage =>
      'உங்கள் இருப்பிடத்தைப் படிக்க முடியவில்லை. இருப்பிடத்தை இயக்கி Nexmile Rider-க்கு அனுமதி கொடுங்கள்.';

  @override
  String get locationPermissionTitle => 'இருப்பிடம் தேவை';

  @override
  String get locationPermissionBody =>
      'நீங்கள் எவ்வளவு அருகில் இருக்கிறீர்கள் என்பதை வைத்தே ஆர்டர்கள் ஒதுக்கப்படுகின்றன, வாடிக்கையாளரும் வரைபடத்தில் உங்களைப் பார்க்கிறார். ஆன்லைனுக்கு வர இருப்பிட அனுமதி கொடுங்கள்.';

  @override
  String get locationSettingsButton => 'அமைப்புகளைத் திற';

  @override
  String get enableLocationButton => 'இருப்பிட அனுமதி கொடு';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'ஷிஃப்ட்';

  @override
  String get payoutsTitle => 'வாராந்திரப் பணம்';

  @override
  String get payoutsEntryValue => 'வாராந்திர வருமானம்';

  @override
  String get payoutDetailsTitle => 'வாரப் பணம் விவரம்';

  @override
  String get payoutsEmptyTitle => 'இதுவரை வாராந்திரப் பணம் இல்லை';

  @override
  String get payoutsEmptyBody =>
      'ஒவ்வொரு வாரமும் கணக்கிடப்பட்டதும், அந்த வாரத்தின் உங்கள் வருமானம் இங்கே காட்டப்படும்.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'நிலுவையில்';

  @override
  String get payoutStatusProcessing => 'செயலாக்கத்தில் உள்ளது';

  @override
  String get payoutStatusPaid => 'செலுத்தப்பட்டது';

  @override
  String get payoutNotSentNote =>
      'இந்த வாரத்திற்கான உங்கள் வருமானம் கணக்கிடப்பட்டுவிட்டது. பணம் இன்னும் உங்கள் வங்கிக்கு அனுப்பப்படவில்லை.';

  @override
  String payoutPaidOn(String date) {
    return '$date அன்று உங்கள் வங்கிக்கு அனுப்பப்பட்டது';
  }

  @override
  String get payoutPaidNote =>
      'இந்த வாரத்திற்கான வங்கிப் பரிமாற்றம் நிறைவடைந்தது.';

  @override
  String get payoutReferenceLabel => 'பரிமாற்றக் குறிப்பு எண்';

  @override
  String get payoutNetLabel => 'உங்களுக்கு வர வேண்டிய தொகை';

  @override
  String get payoutDeliveryEarnings => 'டெலிவரி வருமானம்';

  @override
  String get payoutReferralEarnings => 'ரெஃபரல் வருமானம்';

  @override
  String get payoutCarriedIn => 'முந்தைய வாரத்திலிருந்து';

  @override
  String get payoutCarriedInNote =>
      '₹100-க்குக் குறைவான தொகைகள் தனியாக அனுப்பப்படாது. அவை அடுத்த வாரத்துடன் சேர்க்கப்படும்.';

  @override
  String get payoutGross => 'மொத்த வருமானம்';

  @override
  String get payoutDeductions => 'பிடித்தங்கள்';

  @override
  String get payoutsLatestWeek => 'சமீபத்திய வாரம்';

  @override
  String get payoutsPaidSoFar => 'இதுவரை செலுத்தப்பட்டது';

  @override
  String get payoutsNotYetSent => 'இன்னும் அனுப்பப்படவில்லை';

  @override
  String get payoutStepWorkedOut => 'கணக்கிடப்பட்டது';

  @override
  String get payoutStepSending => 'அனுப்பப்படுகிறது';

  @override
  String get payoutStepInBank => 'உங்கள் வங்கியில்';

  @override
  String get navToRestaurant => 'உணவகத்திற்கு';

  @override
  String get navToCustomer => 'வாடிக்கையாளரிடம்';

  @override
  String navHeadTowards(String place) {
    return '$place நோக்கிச் செல்லுங்கள்';
  }

  @override
  String navThen(String instruction) {
    return 'பிறகு: $instruction';
  }

  @override
  String get navArrived => 'வந்து சேர்ந்துவிட்டீர்கள்';

  @override
  String navArrivedAt(String place) {
    return '$place-இல்';
  }

  @override
  String get navFindingRoute => 'சிறந்த வழியைத் தேடுகிறோம்…';

  @override
  String get navNoRoute =>
      'சாலை வழி கிடைக்கவில்லை. நேர்கோட்டுத் தூரம் காட்டப்படுகிறது.';

  @override
  String get navFindingLocation => 'உங்கள் இருப்பிடத்தைக் கண்டறிகிறோம்…';

  @override
  String get navLocationOff => 'வழிகாட்டலுக்கு இருப்பிடத்தை இயக்கவும்.';

  @override
  String get navEnd => 'வழிகாட்டலை முடி';

  @override
  String get navRecentre => 'மீண்டும் மையப்படுத்து';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes நிமி';
  }

  @override
  String get navStart => 'வழிகாட்டலைத் தொடங்கு';

  @override
  String get orderReachedRestaurant => 'உணவகத்தில்';

  @override
  String get orderReachedCustomer => 'வாடிக்கையாளர் இடத்தில்';

  @override
  String get reachedRestaurantButton => 'உணவகத்தை அடைந்துவிட்டேன்';

  @override
  String get reachedCustomerButton => 'வாடிக்கையாளர் இடத்தை அடைந்துவிட்டேன்';

  @override
  String get reachedRestaurantDone =>
      'நீங்கள் வந்திருப்பது உணவகத்துக்குத் தெரியும்';

  @override
  String get reachedCustomerDone =>
      'நீங்கள் வெளியே இருப்பது வாடிக்கையாளருக்குத் தெரியும்';

  @override
  String get offerTitle => 'புதிய ஆர்டர்';

  @override
  String get offerYouEarn => 'உங்கள் வருமானம்';

  @override
  String get offerPickup => 'எடுக்க வேண்டிய இடம்';

  @override
  String get offerDrop => 'சேர்க்க வேண்டிய இடம்';

  @override
  String offerAway(String distance) {
    return '$distance தொலைவில்';
  }

  @override
  String offerTrip(String distance) {
    return '$distance பயணம்';
  }

  @override
  String offerItems(String count) {
    return '$count பொருட்கள்';
  }

  @override
  String offerCollectCash(String amount) {
    return 'வாடிக்கையாளரிடம் $amount பணம் வாங்குங்கள்';
  }

  @override
  String get offerPrepaid => 'ஆன்லைனில் செலுத்தப்பட்டது · பணம் வாங்க வேண்டாம்';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'சுமார் $minutes நிமிடங்களில் உணவு தயாராகும்';
  }

  @override
  String get offerSwipeToAccept => 'ஏற்க ஸ்வைப் செய்யுங்கள்';

  @override
  String get offerAccepting => 'ஏற்கிறோம்…';

  @override
  String get offerReject => 'நிராகரி';

  @override
  String get offerRejectTitle => 'ஏன் மறுக்கிறீர்கள்?';

  @override
  String get offerReasonTooFar => 'மிகத் தொலைவு';

  @override
  String get offerReasonBusy => 'இப்போது பிஸியாக உள்ளேன்';

  @override
  String get offerReasonVehicle => 'வாகனத்தில் பிரச்சனை';

  @override
  String get offerReasonOther => 'வேறு காரணம்';

  @override
  String get offerTaken => 'இந்த ஆர்டரை வேறு ரைடர் எடுத்துவிட்டார்';

  @override
  String get offerAutoOffline =>
      '3 ஆர்டர்களைத் தவறவிட்டதால் நீங்கள் ஆஃப்லைனுக்கு மாற்றப்பட்டீர்கள். தயாரானதும் ஆன்லைனுக்கு வாருங்கள்.';

  @override
  String get mockLocationBlocked =>
      'ஆர்டர்கள் பெற, போலி இருப்பிட ஆப் எதுவும் இருந்தால் அதை அணைக்கவும்.';

  @override
  String get dropoffDoorLabel => 'வீட்டு எண் / தளம்';

  @override
  String get dropoffStreetLabel => 'தெரு';

  @override
  String get dropoffLandmarkLabel => 'அடையாளம்';

  @override
  String get doorPhotoLabel => 'வாசல் புகைப்படம்';

  @override
  String get doorPhotoHint => 'பெரிதாகப் பார்க்கத் தட்டவும்';

  @override
  String get doorPhotoUnavailable => 'புகைப்படம் இப்போது கிடைக்கவில்லை';

  @override
  String permStepCount(int step, int total) {
    return '$total-இல் $step';
  }

  @override
  String get permNotNow => 'இப்போது வேண்டாம்';

  @override
  String get permLocationTitle => 'இருப்பிடத்தை இயக்குங்கள்';

  @override
  String get permLocationBody =>
      'உணவகத்திற்கு மிக அருகில் உள்ள ரைடருக்கே ஆர்டர்கள் செல்லும், வாடிக்கையாளர்கள் தங்கள் உணவை வரைபடத்தில் பின்தொடர்வார்கள்.';

  @override
  String get permLocationNearTitle => 'அருகிலுள்ள ஆர்டர்கள்';

  @override
  String get permLocationNearBody =>
      'அருகிலுள்ள உணவகங்களின் ஆர்டர்களை உங்களுக்கு வழங்குகிறோம், அதனால் குறைவாகப் பயணித்து அதிகம் சம்பாதிக்கலாம்.';

  @override
  String get permLocationTrackTitle => 'நேரலை கண்காணிப்பு';

  @override
  String get permLocationTrackBody =>
      'வாடிக்கையாளர்கள் உங்களை வரைபடத்தில் பார்ப்பதால், உங்களைக் குறைவாக அழைப்பார்கள்.';

  @override
  String get permLocationOnlineTitle => 'ஆன்லைனில் இருக்கும்போது மட்டும்';

  @override
  String get permLocationOnlineBody =>
      'ஆஃப்லைனுக்குச் சென்றால் இது நின்றுவிடும். இது பயன்பாட்டில் இருக்கும்போதெல்லாம் ஒரு அறிவிப்பு தெரியும்.';

  @override
  String get permLocationAllow => 'இருப்பிட அனுமதி கொடு';

  @override
  String get permNotifyTitle => 'எந்த ஆர்டரையும் தவறவிடாதீர்கள்';

  @override
  String get permNotifyBody =>
      'திரை பூட்டியிருந்தாலும், புதிய ஆர்டர்கள் ஃபோன் அழைப்பு போல ஒலிக்கும்.';

  @override
  String get permNotifyRingTitle => 'ஒலிக்கும் ஆர்டர் அறிவிப்புகள்';

  @override
  String get permNotifyRingBody =>
      'அறிவிப்பிலிருந்தே நேரடியாக ஏற்கலாம் அல்லது மறுக்கலாம்.';

  @override
  String get permNotifyUpdatesTitle => 'பணம் மற்றும் ஒப்புதல்கள்';

  @override
  String get permNotifyUpdatesBody =>
      'உங்கள் ஆவணங்கள் எப்போது ஏற்கப்பட்டன, பணம் எப்போது அனுப்பப்பட்டது என்று தெரிந்துகொள்ளுங்கள்.';

  @override
  String get permNotifyControlTitle => 'கட்டுப்பாடு உங்களிடமே';

  @override
  String get permNotifyControlBody =>
      'உங்கள் ஃபோனின் அமைப்புகளில் எப்போது வேண்டுமானாலும் இதை மாற்றலாம்.';

  @override
  String get permNotifyAllow => 'அறிவிப்புகளை இயக்கு';

  @override
  String get permBatteryTitle => 'ஆர்டர்கள் தொடர்ந்து வரட்டும்';

  @override
  String get permBatteryBody =>
      'பேட்டரியைச் சேமிக்க ஃபோன்கள் பின்னணியில் ஆப்களை மூடிவிடும். நீங்கள் ஆன்லைனில் இருக்கும்போது Nexmile Rider தொடர்ந்து இயங்க அனுமதியுங்கள்.';

  @override
  String get permBatteryOrdersTitle => 'ஆர்டர் எதுவும் தவறாது';

  @override
  String get permBatteryOrdersBody =>
      'ஆப் மூடியிருந்தாலும், ஃபோன் பாக்கெட்டில் இருந்தாலும் ஆர்டர்கள் உங்களை வந்தடையும்.';

  @override
  String get permBatteryLiveTitle => 'கண்காணிப்பு நேரலையில் இருக்கும்';

  @override
  String get permBatteryLiveBody =>
      'நீங்கள் டெலிவரி செய்யும் வரை வாடிக்கையாளர்கள் உங்களை வரைபடத்தில் பார்த்துக்கொண்டே இருப்பார்கள்.';

  @override
  String get permBatteryLightTitle => 'குறைந்த பேட்டரி செலவு';

  @override
  String get permBatteryLightBody =>
      'நீங்கள் ஆன்லைனில் இருக்கும்போது மட்டுமே இது அதிகம் இயங்கும்.';

  @override
  String get permBatteryAllow => 'பின்னணியில் இயங்க அனுமதி';

  @override
  String get permFullScreenTitle => 'பூட்டுத் திரையில் ஆர்டர்கள்';

  @override
  String get permFullScreenBody =>
      'புதிய ஆர்டர்கள் உள்வரும் அழைப்பு போல பூட்டுத் திரையின் மேல் தோன்ற அனுமதியுங்கள், அதனால் ஒரே தட்டலில் ஏற்கலாம்.';

  @override
  String get permFullScreenCallTitle => 'அழைப்பு போல பதிலளியுங்கள்';

  @override
  String get permFullScreenCallBody =>
      'ஃபோனைத் திறக்காமலேயே ஆர்டரைப் பார்த்து ஏற்கலாம்.';

  @override
  String get permFullScreenTimeTitle => 'நேரத்தில் பதிலளியுங்கள்';

  @override
  String get permFullScreenTimeBody =>
      'நீங்கள் பதிலளிக்காத ஆர்டர் வேறு ரைடருக்குச் சென்றுவிடும்.';

  @override
  String get permFullScreenOnlyTitle => 'புதிய ஆர்டர்களுக்கு மட்டும்';

  @override
  String get permFullScreenOnlyBody =>
      'உங்கள் பூட்டுத் திரையின் மேல் வேறு எதுவும் ஒருபோதும் தோன்றாது.';

  @override
  String get setupTitle => 'ஃபோன் அமைப்பு';

  @override
  String get setupIntro =>
      'ஆப் மூடியிருந்தாலும் ஃபோன் பூட்டியிருந்தாலும் புதிய ஆர்டர்கள் ஒலிக்க, இவற்றை முடியுங்கள்.';

  @override
  String get setupNotifications => 'அறிவிப்புகள்';

  @override
  String get setupNotificationsBody => 'புதிய ஆர்டர்கள் ஒலிக்கவும் தெரியவும்.';

  @override
  String get setupFullScreen => 'முழுத்திரை ஆர்டர் அறிவிப்புகள்';

  @override
  String get setupFullScreenBody =>
      'புதிய ஆர்டரை அழைப்பு போல உங்கள் பூட்டுத் திரையில் காட்டும்.';

  @override
  String get setupBattery => 'பேட்டரி: ஆப்டிமைஸ் செய்ய வேண்டாம்';

  @override
  String get setupBatteryBody =>
      'நீங்கள் ஆன்லைனில் இருக்கும்போது ஃபோன் ஆப்பை மூடுவதைத் தடுக்கும்.';

  @override
  String get setupAutostart => 'ஆட்டோஸ்டார்ட்';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ஃபோன்களில் Nexmile Rider-க்கு ஆட்டோஸ்டார்ட்டும் இயக்கப்பட வேண்டும். அமைப்புகளைத் திறந்து, ஆட்டோஸ்டார்ட்டைக் கண்டுபிடித்து இயக்குங்கள்.';
  }

  @override
  String get setupLocation => 'இருப்பிடம்';

  @override
  String get setupLocationBody =>
      'அருகிலுள்ள ஆர்டர்களை உங்களுக்கு அனுப்ப இது தேவை.';

  @override
  String get setupAllow => 'அனுமதி';

  @override
  String get setupOpenSettings => 'அமைப்புகளைத் திற';

  @override
  String get setupMarkDone => 'இதைச் செய்துவிட்டேன்';

  @override
  String get setupDoneStep => 'முடிந்தது';

  @override
  String get setupBannerTitle => 'ஃபோன் அமைப்பை முடியுங்கள்';

  @override
  String setupBannerBody(String count) {
    return 'ஆர்டர் அறிவிப்புகள் தவறாமல் இருக்க இன்னும் $count படிகள் உள்ளன';
  }

  @override
  String get offerEstimatedEarnings => 'தோராயமான வருமானம்';

  @override
  String offerPickupLine(String name) {
    return 'எடுக்கும் இடம்: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'சேர்க்கும் இடம்: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'உங்களிடமிருந்து சுமார் $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider-இலிருந்து வெளியேறவா?';

  @override
  String get exitBody => 'ஆப்பிலிருந்து நிச்சயமாக வெளியேற வேண்டுமா?';

  @override
  String get exitConfirm => 'வெளியேறு';

  @override
  String get onboardingWelcomeTitle => 'Nexmile டெலிவரி பார்ட்னராகுங்கள்';

  @override
  String get onboardingWelcomeSubtitle =>
      'உங்கள் பகுதியில் டெலிவரி செய்யுங்கள், உங்கள் நேரத்தை நீங்களே தேர்ந்தெடுங்கள், ஒவ்வொரு வாரமும் பணம் பெறுங்கள்.';

  @override
  String get onboardingWelcomeNeed => 'இவற்றைத் தயாராக வைத்திருங்கள்';

  @override
  String get onboardingNeedAadhaar => 'ஆதார் அட்டை';

  @override
  String get onboardingNeedPan => 'பான் அட்டை';

  @override
  String get onboardingNeedLicence => 'ஓட்டுநர் உரிமம் மற்றும் வாகன RC';

  @override
  String get onboardingNeedInsurance => 'வாகனக் காப்பீடு';

  @override
  String get onboardingNeedBank => 'வங்கிக் கணக்கு விவரங்கள்';

  @override
  String get onboardingNeedNote =>
      'சைக்கிளில் அல்லது நடந்து செல்கிறீர்களா? ஆதார், PAN மற்றும் வங்கிக் கணக்கு மட்டும் போதும்.';

  @override
  String get onboardingWelcomeTime => 'சுமார் 10 நிமிடங்கள் ஆகும்';

  @override
  String get onboardingGetStarted => 'தொடங்குங்கள்';

  @override
  String get onboardingSavedNote =>
      'ஒவ்வொரு படிக்குப் பிறகும் பாதுகாப்பாகச் சேமிக்கப்படும்';

  @override
  String get docsTip =>
      'நல்ல வெளிச்சத்தில் எடுத்த தெளிவான புகைப்படங்கள் விரைவாக ஏற்கப்படும்.';

  @override
  String get docsAllDone =>
      'தேவையான எல்லா ஆவணங்களும் சேர்க்கப்பட்டன. சரிபார்க்கத் தொடருங்கள்.';

  @override
  String get docGroupIdentity => 'அடையாளச் சான்று';

  @override
  String get docGroupVehicle => 'உரிமம் மற்றும் வாகன ஆவணங்கள்';

  @override
  String get docGroupMore => 'மேலும் ஆவணங்கள்';

  @override
  String get docTapToAdd => 'சேர்க்கத் தட்டவும்';

  @override
  String get docUploading => 'பதிவேற்றுகிறது…';

  @override
  String get docView => 'பார்க்க';

  @override
  String get docSheetSubtitle =>
      'முதல் முறையிலேயே ஏற்கப்பட என்ன செய்ய வேண்டும்';

  @override
  String get docTipCorners =>
      'நான்கு மூலைகளும் புகைப்படத்திற்குள் இருக்கட்டும்';

  @override
  String get docTipGlare => 'தெளிவான எழுத்துகள், பளபளப்போ நிழலோ இல்லாமல்';

  @override
  String get docTipOriginal => 'அசல் ஆவணம், நகல் அல்ல';

  @override
  String get docTipFace => 'உங்கள் முகம் தெளிவாகத் தெரிய, நேராகப் பார்த்தபடி';

  @override
  String get docTipBackground => 'வெற்றுப் பின்னணி, நல்ல வெளிச்சம்';

  @override
  String get docTipNoCap => 'தொப்பி, மாஸ்க், கூலிங் கிளாஸ் வேண்டாம்';

  @override
  String get docTipFullPage => 'முழுப் பக்கம், ஒவ்வொரு வரியும் படிக்கும்படி';

  @override
  String get docSourceCamera => 'கேமரா';

  @override
  String get docSourceGallery => 'கேலரி';

  @override
  String get docSourceFile => 'PDF அல்லது கோப்பு';

  @override
  String get reviewSectionDetails => 'உங்கள் விவரங்கள்';

  @override
  String get reviewSectionDocuments => 'ஆவணங்கள்';

  @override
  String get reviewSectionBank => 'வங்கிக் கணக்கு';

  @override
  String get reviewBankHidden =>
      'சேர்க்கப்பட்டது · உங்கள் பாதுகாப்பிற்காக மறைக்கப்பட்டுள்ளது';

  @override
  String get reviewEdit => 'திருத்து';

  @override
  String get reviewNextTitle => 'அடுத்து என்ன நடக்கும்';

  @override
  String get reviewNext1 => 'நீங்கள் விண்ணப்பத்தை அனுப்புகிறீர்கள்';

  @override
  String get reviewNext2 =>
      'எங்கள் குழு உங்கள் விவரங்களையும் ஆவணங்களையும் சரிபார்க்கும்';

  @override
  String get reviewNext3 =>
      'உங்களுக்குத் தெரிவிக்கப்படும், பிறகு ஆன்லைனுக்கு வந்து சம்பாதிக்கத் தொடங்குங்கள்';

  @override
  String get kycStepSubmitted => 'விண்ணப்பம் அனுப்பப்பட்டது';

  @override
  String get kycStepVerifying => 'உங்கள் ஆவணங்கள் சரிபார்க்கப்படுகின்றன';

  @override
  String get kycStepApproved =>
      'ஏற்கப்பட்டது — ஆன்லைனுக்கு வந்து சம்பாதிக்கத் தொடங்குங்கள்';
}
