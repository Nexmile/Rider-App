// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Konkani (`kok`).
class AppLocalizationsKok extends AppLocalizations {
  AppLocalizationsKok([String locale = 'kok']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'वेगान डिलिव्हरी. ताजें हास्य.';

  @override
  String get chooseLanguageTitle => 'तुमची भास वेंचात';

  @override
  String get chooseLanguageSubtitle =>
      'तुमकां सोंपी दिसता ती भास वेंचात. तुमी ती केन्नाय सेटिंग्जांत बदलूं येता.';

  @override
  String get searchLanguageHint => 'भास सोदात';

  @override
  String get noLanguageFound => 'खंयचीच भास मेळूंक ना';

  @override
  String languagesAvailable(int count) {
    return '$count भासो उपलब्ध आसात';
  }

  @override
  String get continueLabel => 'फुडें वचात';

  @override
  String get selectedLabel => 'वेंचिल्ली';

  @override
  String get defaultLabel => 'डिफॉल्ट';

  @override
  String get homeTitle => 'Nexmile हांगा येवकार';

  @override
  String get homeSubtitle =>
      'ताजो किराणो, गरम जेवण आनी दिसपट्ट्यो गरजेच्यो वस्तू तुमच्या लागसारच्या दुकानांतल्यान.';

  @override
  String get changeLanguage => 'भास बदलात';

  @override
  String get languageUpdated => 'भास बदल्ली';

  @override
  String get appLanguageLabel => 'ॲपाची भास';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile हांगा साइन इन करात';

  @override
  String get loginSubtitle =>
      'तुमचो ईमेल वा मोबायल क्रमांक घालात, आमी सत्यापन कोड धाडटले.';

  @override
  String get emailOrPhoneLabel => 'ईमेल वा मोबायल क्रमांक';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'योग्य ईमेल नामो वा 10 आंकड्यांचो मोबायल क्रमांक घालात';

  @override
  String get loginHeadline =>
      'Nexmile वांगडा डिलिव्हरी करात. तुमच्या सवडीन कमाई करात.';

  @override
  String get loginOrSignUp => 'लॉग इन वा साइन अप करात';

  @override
  String get loginEmailHint => 'तुमचो ईमेल नामो घालात';

  @override
  String get invalidEmail => 'योग्य ईमेल नामो घालात';

  @override
  String get loginHeroBadge => 'डिलिव्हरी पार्टनर';

  @override
  String get sendCode => 'कोड धाडात';

  @override
  String get agreeToTermsOnContinue =>
      'फुडें वचून तुमी आमच्यो सेवा अटी आनी गुपीतपण धोरण मान्य करतात.';

  @override
  String get otpTitle => 'हो तुमीच अशें सत्यापित करात';

  @override
  String otpSubtitle(String target) {
    return '$target हाका धाडिल्लो 6 आंकड्यांचो कोड घालात';
  }

  @override
  String get otpHelpTitle => 'कोड मेळूंक ना?';

  @override
  String get otpHelpCheck =>
      'वयर दिल्लो क्रमांक वा ईमेल तपासात. तो बदलपाक फाटीं वचात.';

  @override
  String get otpHelpWait =>
      'कोड पावपाक एक मिनीट मेरेन लागूं येता. टायमर सोंपतकच तुमी नवो कोड मागूं येता.';

  @override
  String get otpHelpSpam => 'ईमेल आसल्यार, तुमचें स्पॅम फोल्डर लेगीत पळयात.';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'सत्यापित करात';

  @override
  String get resendCode => 'कोड परत धाडात';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंदांनी परत धाडात';
  }

  @override
  String get codeResent => 'नवो कोड धाडला';

  @override
  String get incorrectCode =>
      'हो कोड चुकीचो आसा वा ताची मुजत सोंपली. नवो कोड मागात.';

  @override
  String get enterFullCode => 'पुराय 6 आंकडे घालात';

  @override
  String get accountSuspended =>
      'हें खातें निलंबित केलां. उपकार करून आदाराक संपर्क करात.';

  @override
  String get tooManyAttempts =>
      'खूब फावटीं यत्न जाले. उपकार करून थोड्या वेळान परत यत्न करात.';

  @override
  String get sessionExpired =>
      'तुमचें सत्र सोंपलां. उपकार करून परत साइन इन करात.';

  @override
  String get networkError =>
      'इंटरनॅट जोडणी ना. जोडणी तपासात आनी परत यत्न करात.';

  @override
  String get developmentCode => 'डेव्हलपमेंट कोड';

  @override
  String get signOut => 'साइन आवट';

  @override
  String get signedOut => 'तुमी साइन आवट जाल्यात';

  @override
  String get somethingWentWrong =>
      'कितें तरी चुकलें. उपकार करून परत यत्न करात.';

  @override
  String get profileTitle => 'प्रोफायल';

  @override
  String get profileSectionDetails => 'तुमचो तपशील';

  @override
  String get profileSectionWork => 'काम';

  @override
  String get profileSectionApp => 'ॲप सेटिंग्ज';

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
  String get viewProfile => 'प्रोफायल पळयात';

  @override
  String get nameLabel => 'नांव';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबायल क्रमांक';

  @override
  String get accountStatusLabel => 'खात्याची स्थिती';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'प्रलंबीत';

  @override
  String get statusSuspended => 'निलंबीत';

  @override
  String get verifiedLabel => 'सत्यापीत';

  @override
  String get notProvided => 'जोडूंक ना';

  @override
  String get retry => 'परत यत्न करात';

  @override
  String get loginRiderNote => 'हें ॲप Nexmile डिलिव्हरी पार्टनरां खातीर आसा.';

  @override
  String get checkingYourAccount => 'तुमचें खातें तपासतां';

  @override
  String get couldNotLoadAccount =>
      'तुमचें खातें लोड करूंक जावंक ना. तुमची जोडणी तपासात आनी परत यत्न करात.';

  @override
  String get notARiderAccountTitle => 'हें डिलिव्हरी पार्टनराचें खातें न्हय';

  @override
  String get notARiderAccount =>
      'हो ईमेल वा मोबायल क्रमांक आदींच दुसऱ्या Nexmile खात्याचेर नोंद केल्लो आसा. साइन आवट करात आनी डिलिव्हरी पार्टनर जावपाक दुसरो ईमेल वा क्रमांक वापरात.';

  @override
  String notARiderAccountFor(String role) {
    return 'हो ईमेल वा मोबायल क्रमांक आदींच Nexmile $role म्हूण नोंद केल्लो आसा. साइन आवट करात आनी डिलिव्हरी पार्टनर जावपाक दुसरो ईमेल वा क्रमांक वापरात.';
  }

  @override
  String get roleCustomer => 'गिरायक';

  @override
  String get roleMerchant => 'व्यापारी';

  @override
  String get roleAdmin => 'प्रशासक';

  @override
  String get useAnotherAccount => 'दुसरें खातें वापरात';

  @override
  String get onboardingTitle => 'Nexmile पार्टनर जायात';

  @override
  String get onboardingSubtitle =>
      'थोडो तपशील आनी तुमचीं कागदपत्रां दियात, मागीर आमचो पंगड तुमकां सत्यापित करतलो. हाका चड करून दोन कामाच्या दिसां मेरेन वेळ लागता.';

  @override
  String stepOfSteps(int current, int total) {
    return 'टप्पो $current, $total पयकीं';
  }

  @override
  String get stepIdentityTitle => 'तुमच्याविशीं';

  @override
  String get stepIdentitySubtitle =>
      'तुमच्या आधार कार्डार आसा तशेंच नेमकें तुमचें नांव घालात.';

  @override
  String get stepVehicleTitle => 'तुमची गाडी';

  @override
  String get stepVehicleSubtitle =>
      'तुमी कसली गाडी चलयतात आनी तिचेर आशिल्ली नंबर प्लेट आमकां सांगात.';

  @override
  String get stepIdentityNumbersTitle => 'ओळखीचे क्रमांक';

  @override
  String get stepIdentityNumbersSubtitle =>
      'हे क्रमांक तुमी उपरांत अपलोड करतले त्या कागदपत्रां कडेन जुळूंक जाय.';

  @override
  String get stepLicenceTitle => 'लायसन्स आनी विमो';

  @override
  String get stepLicenceSubtitle =>
      'तुमी डिलिव्हरी सुरू करतले त्या दिसा दोनूय वैध आसूंक जाय.';

  @override
  String get stepBankTitle => 'तुमचे पैशे खंय पावतले';

  @override
  String get stepBankSubtitle =>
      'तुमची कमाई ह्या खात्यांत जमा जाता. खातें लक्ष दिवन तपासात.';

  @override
  String get stepDocumentsTitle => 'तुमचीं कागदपत्रां';

  @override
  String get stepDocumentsSubtitle =>
      'दरेकाचो फोटो बऱ्या उजवाडांत काडात. JPG, PNG वा PDF, दरेक 5 MB मेरेन.';

  @override
  String get stepReviewTitle => 'तपासात आनी धाडात';

  @override
  String get stepReviewSubtitle =>
      'एकदां धाडल्या उपरांत, आमचो पंगड तपासून पळयना मेरेन तुमचो तपशील लॉक जातलो.';

  @override
  String get saveAndContinue => 'जतनाय करात आनी फुडें वचात';

  @override
  String get backLabel => 'फाटीं';

  @override
  String get fullNameLabel => 'पुराय नांव';

  @override
  String get fullNameHint => 'तुमच्या आधारार छापला तशें';

  @override
  String get dateOfBirthLabel => 'जल्मतारीख';

  @override
  String get selectDate => 'तारीख वेंचात';

  @override
  String get vehicleTypeLabel => 'गाडयेचो प्रकार';

  @override
  String get vehicleMotorcycle => 'मोटरसायकल';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleEv => 'इलेक्ट्रिक गाडी';

  @override
  String get vehicleBicycle => 'सायकल';

  @override
  String get vehicleWalk => 'पांयांनी';

  @override
  String get vehicleNoPapersNote =>
      'गाडयेचो क्रमांक वा RC नाका. तुमकां फकत आधार आनी PAN मागतले.';

  @override
  String get vehicleNumberLabel => 'गाडयेचो क्रमांक';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC क्रमांक';

  @override
  String get aadhaarLabel => 'आधार क्रमांक';

  @override
  String get aadhaarHint => '12 आंकडे';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्रायव्हिंग लायसन्स क्रमांक';

  @override
  String get drivingLicenceExpiryLabel => 'लायसन्स केन्ना मेरेन वैध';

  @override
  String get insuranceNumberLabel => 'विमा पॉलिसी क्रमांक';

  @override
  String get insuranceExpiryLabel => 'विमो केन्ना मेरेन वैध';

  @override
  String get bankAccountNameLabel => 'खातेदाराचें नांव';

  @override
  String get bankAccountNumberLabel => 'खात्याचो क्रमांक';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total पयकीं $done अपलोड जालीं';
  }

  @override
  String get uploadDocument => 'अपलोड करात';

  @override
  String get replaceDocument => 'बदलात';

  @override
  String get removeDocument => 'काडात';

  @override
  String get takePhoto => 'फोटो काडात';

  @override
  String get chooseFromGallery => 'गॅलरींतल्यान वेंचात';

  @override
  String get chooseFile => 'फायल वेंचात';

  @override
  String get uploadingLabel => 'अपलोड जाता';

  @override
  String get documentRejected => 'न्हयकारलें';

  @override
  String get documentUploaded => 'अपलोड जालें';

  @override
  String get documentApproved => 'मान्य जालें';

  @override
  String get documentRequired => 'गरजेचें';

  @override
  String get documentOptional => 'ऐच्छीक';

  @override
  String get fileTooLarge =>
      'ही फायल 5 MB परस व्हड आसा. स्कॅनाच्या बदला फोटो वापरून पळयात.';

  @override
  String get unsupportedFileType => 'JPG, PNG वा PDF वेंचात.';

  @override
  String get pickerUnavailable =>
      'तें उगडूंक जावंक ना. ॲपाच्यो कॅमेरा आनी फोटो परवानग्यो तपासात.';

  @override
  String get uploadFailed => 'तें अपलोड जावंक ना. उपकार करून परत यत्न करात.';

  @override
  String get submitForVerification => 'सत्यापना खातीर धाडात';

  @override
  String get submitConfirmTitle => 'सत्यापना खातीर धाडूं?';

  @override
  String get submitConfirmBody =>
      'आमचो पंगड तपासता तितलो वेळ तुमचो तपशील आनी कागदपत्रां लॉक जातलीं. निर्णय जायना मेरेन तुमी तीं बदलूंक शकनात.';

  @override
  String get cancelLabel => 'रद्द करात';

  @override
  String get completeEverythingBeforeSubmitting =>
      'धाडचे आदीं सगळे टप्पे पुराय करात आनी सगळीं कागदपत्रां अपलोड करात.';

  @override
  String get checkTheHighlightedFields =>
      'खूण केल्लीं खणां तपासात आनी परत यत्न करात.';

  @override
  String get underReviewTitle => 'आमी तुमचीं कागदपत्रां सत्यापित करतात';

  @override
  String get underReviewBody =>
      'आमचो पंगड चड करून दोन कामाच्या दिसां भितर तपासता. तुमकां मान्यताय मेळटकच आमी तुमकां कळयतले.';

  @override
  String get checkAgain => 'परत तपासात';

  @override
  String get stillUnderReview => 'अजून तपासणी चालू आसा';

  @override
  String get rejectedTitle => 'तुमचें सत्यापन जावंक ना';

  @override
  String get rejectedBody =>
      'आमच्या पंगडान सकयल नोंद केल्लें सुदारात, मागीर तुमचीं कागदपत्रां परत धाडात.';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'सुदारात आनी परत धाडात';

  @override
  String get blockedTitle => 'तुमी अजून ऑनलायन जावंक शकनात';

  @override
  String get documentsExpiredMessage =>
      'तुमच्या लायसन्साची वा विम्याची मुदत सोंपल्या. ऑनलायन जावपाक वैध कागदपत्रां अपलोड करात.';

  @override
  String get awaitingVerificationMessage =>
      'तुमच्या कागदपत्रांचें सत्यापन अजून चालू आसा.';

  @override
  String get updateDocuments => 'कागदपत्रां अपडेट करात';

  @override
  String get riderHomeTitle => 'डिलिव्हरीक तयार';

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
      'ऑनलायन जायात आनी आमी तुमकां लागसारच्यो डिलिव्हरी धाडटले.';

  @override
  String get dutyStatusLabel => 'ड्युटीची स्थिती';

  @override
  String get dutyOnline => 'ऑनलायन';

  @override
  String get dutyOffline => 'ऑफलायन';

  @override
  String get dutyOnBreak => 'विसाव्यार';

  @override
  String get goOnline => 'ऑनलायन जायात';

  @override
  String get goOffline => 'ऑफलायन जायात';

  @override
  String get takeABreak => 'विसावो घेयात';

  @override
  String get waitingForOrders => 'लागसारच्या ऑर्डरांची वाट पळयतां';

  @override
  String get youAreOffline =>
      'तुमी ऑफलायन आसात. तुमकां एकूय डिलिव्हरी मेळची ना.';

  @override
  String get completedDeliveriesLabel => 'पुराय केल्ल्यो डिलिव्हरी';

  @override
  String get ratingLabel => 'रेटिंग';

  @override
  String get notRatedYet => 'अजून रेटिंग ना';

  @override
  String get vehicleLabel => 'गाडी';

  @override
  String get kycStatusLabel => 'सत्यापन';

  @override
  String get kycPending => 'धाडूंक ना';

  @override
  String get kycSubmitted => 'तपासणी चालू';

  @override
  String get kycVerified => 'मान्य जालें';

  @override
  String get kycRejected => 'न्हयकारलें';

  @override
  String get fieldRequired => 'हें खण गरजेचें आसा';

  @override
  String get invalidAadhaar => 'तुमच्या आधार क्रमांकाचे 12 आंकडे घालात';

  @override
  String get invalidPan => 'योग्य PAN घालात, देखीक ABCDE1234F';

  @override
  String get invalidIfsc => 'योग्य IFSC कोड घालात, देखीक SBIN0001234';

  @override
  String get invalidVehicleNumber => 'नंबर प्लेटीर आसा तसोच क्रमांक घालात';

  @override
  String get invalidAccountNumber => 'योग्य खात्याचो क्रमांक घालात';

  @override
  String get dateMustBeFuture => 'ही तारीख आदींच पासार जाल्या';

  @override
  String get mustBeEighteen =>
      'डिलिव्हरी करपाक तुमी कमीत कमी 18 वर्सांचे आसूंक जाय';

  @override
  String get docAadhaarFront => 'आधार कार्ड (मुखेली बाजू)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (फाटली बाजू)';

  @override
  String get docDrivingLicence => 'ड्रायव्हिंग लायसन्स';

  @override
  String get docVehicleRc => 'गाडयेचें नोंदणी प्रमाणपत्र';

  @override
  String get docInsurance => 'गाडयेचो विमो';

  @override
  String get docProfilePhoto => 'प्रोफायल फोटो';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'रद्द केल्लो चेक वा बँक स्टेटमेंट';

  @override
  String get ordersTab => 'ऑर्डर';

  @override
  String get deliveryTab => 'डिलिव्हरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'तुमच्या लागसारच्यो ऑर्डरी';

  @override
  String get orderBoardSubtitle =>
      'लागसारचें रेस्टॉरंट पयलें. ही यादी आपशीच अपडेट जाता.';

  @override
  String orderNumberLabel(String number) {
    return 'ऑर्डर $number';
  }

  @override
  String get pickupLabel => 'पिकअप';

  @override
  String get dropoffLabel => 'डिलिव्हरी नामो';

  @override
  String distanceMetres(String metres) {
    return '$metres मी';
  }

  @override
  String distanceKilometres(String km) {
    return '$km किमी';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तू',
      one: '1 वस्त',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'तुमची कमाई';

  @override
  String get collectCashLabel => 'रोकड घेयात';

  @override
  String get prepaidLabel => 'ऑनलायन भरले';

  @override
  String collectAtDoor(String amount) {
    return 'गिरायका कडल्यान $amount रोकड घेयात';
  }

  @override
  String get nothingToCollect => 'पैशे आदींच भरल्यात. पैशे मागूं नाकात.';

  @override
  String get acceptOrder => 'मान्य करात';

  @override
  String get viewOrder => 'पळयात';

  @override
  String get orderAccepted => 'ऑर्डर मान्य केली. रेस्टॉरंटाक वचात.';

  @override
  String get orderAlreadyTaken =>
      'ही ऑर्डर दुसऱ्या रायडरान घेतली. हांगा नवी यादी आसा.';

  @override
  String get orderNoLongerYours => 'ही ऑर्डर आतां तुमची ना.';

  @override
  String get boardEmptyTitle => 'आतां एकूय ऑर्डर ना';

  @override
  String get boardEmptyBody =>
      'ऑनलायन रावात. रेस्टॉरंटांत गर्दी जाता तशी यादी आपशीच अपडेट जाता.';

  @override
  String get boardOfflineTitle => 'तुमी ऑफलायन आसात';

  @override
  String get boardOfflineBody => 'ऑर्डरी मेळपाक ऑनलायन जायात.';

  @override
  String get boardBusyTitle => 'पयलीं तुमची डिलिव्हरी पुराय करात';

  @override
  String get boardBusyBody =>
      'ही ऑर्डर डिलिव्हर जाल्या उपरांत तुमी दुसरी ऑर्डर घेवंक शकतात.';

  @override
  String get boardNoLocationTitle => 'तुमी खंय आसात तें आमकां कळना';

  @override
  String get boardNoLocationBody =>
      'ऑर्डरी रेस्टॉरंट कितलें लागीं आसा ताचे प्रमाणें क्रमान दवरल्यात, देखून कितेंय दाखोवपाक आमकां तुमची सुवात जाय.';

  @override
  String get boardNotVerifiedTitle => 'अजून डिलिव्हरीक मान्यताय ना';

  @override
  String get activeDeliveryTitle => 'तुमची डिलिव्हरी';

  @override
  String get headToRestaurant => 'रेस्टॉरंटाक वचात';

  @override
  String get deliverToCustomer => 'गिरायकाक डिलिव्हर करात';

  @override
  String get noActiveDeliveryTitle => 'हातांत कांयच ना';

  @override
  String get noActiveDeliveryBody =>
      'यादींतल्यान एक ऑर्डर मान्य करात आनी ती हांगा दिसतली.';

  @override
  String get confirmPickupButton => 'हांवें घेतलां';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle =>
      'रेस्टॉरंटा कडल्यान कोड मागात आनी तो हांगा टायप करात.';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode => 'तो कोड जुळ्ळो ना. रेस्टॉरंटा कडेन तपासात.';

  @override
  String get pickupConfirmed => 'पिकअप जाली. गिरायकाक डिलिव्हर करात.';

  @override
  String get confirmDeliveryButton => 'डिलिव्हर केली';

  @override
  String get stepReachRestaurant => 'रेस्टॉरंटाक पावात';

  @override
  String get stepPickUp => 'पिकअप';

  @override
  String get stepReachCustomer => 'गिरायका कडेन पावात';

  @override
  String get stepDeliver => 'डिलिव्हर करात';

  @override
  String get swipePickUp => 'घेतल्या उपरांत ओडात';

  @override
  String get swipeDeliver => 'डिलिव्हर करपाक ओडात';

  @override
  String get cashToCollectLabel => 'घेवपाची रोकड';

  @override
  String get confirmDeliveryTitle => 'डिलिव्हरी निश्चीत करात';

  @override
  String get confirmDeliveryBody =>
      'गिरायकाच्या हातांत ऑर्डर पावल्या उपरांतच निश्चीत करात.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'पयलीं $amount रोकड घेयात, मागीर निश्चीत करात.';
  }

  @override
  String get deliveryConfirmed =>
      'डिलिव्हर जाली. देव बरें करूं, तुमी परत ऑनलायन आसात.';

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
  String get releaseOrderButton => 'परत दियात';

  @override
  String get releaseOrderTitle => 'ही ऑर्डर परत दिवची?';

  @override
  String get releaseOrderBody =>
      'ती दुसऱ्या रायडरा खातीर परत यादींत वता. फकत जेवण घेवचे आदींच तुमी हें करूंक शकतात.';

  @override
  String get releaseReasonHint => 'कारण (ऐच्छीक)';

  @override
  String get orderReleased =>
      'ऑर्डर परत दिली. आतां ती हेर रायडरांक परत उपलब्ध आसा.';

  @override
  String get finishCurrentOrderFirst =>
      'पयलीं तुमची चालू ऑर्डर पुराय करात वा परत दियात.';

  @override
  String get callRestaurant => 'रेस्टॉरंटाक कॉल करात';

  @override
  String get callCustomer => 'गिरायकाक कॉल करात';

  @override
  String get openInMaps => 'दिशा';

  @override
  String get customerNoteLabel => 'गिरायकाची नोंद';

  @override
  String get orderItemsLabel => 'बॅगेंत कितें आसा';

  @override
  String get orderDetailsTitle => 'ऑर्डराचो तपशील';

  @override
  String get historyTitle => 'पयल्यो डिलिव्हरी';

  @override
  String get historyEmptyTitle => 'अजून डिलिव्हरी ना';

  @override
  String get historyEmptyBody => 'तुमी पुराय केल्ल्यो ऑर्डरी हांगा दिसतल्यो.';

  @override
  String get historySearchHint => 'ऑर्डर वा रेस्टॉरंट सोदात';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'आयज';

  @override
  String get historyYesterday => 'काल';

  @override
  String get historyEarlier => 'आदलीं';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिलिव्हरी',
      one: '1 डिलिव्हरी',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” कडेन कितेंच जुळना.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount रोकड घेतली';
  }

  @override
  String get orderDelivered => 'डिलिव्हर जाली';

  @override
  String get orderCancelled => 'रद्द जाली';

  @override
  String get orderPreparing => 'तयार जाता';

  @override
  String get orderReadyForPickup => 'पिकअपाक तयार';

  @override
  String get orderAssigned => 'तुमकां नेमल्या';

  @override
  String get orderPickedUp => 'पिकअप जाली';

  @override
  String get orderOutForDelivery => 'वाटेर आसा';

  @override
  String get trackingOn => 'सुवात शेअर जाता';

  @override
  String get locationUnavailableMessage =>
      'आमकां तुमची सुवात वाचूंक मेळना. सुवात सुरू करात आनी Nexmile Rider खातीर परवानगी दियात.';

  @override
  String get locationPermissionTitle => 'सुवात जाय';

  @override
  String get locationPermissionBody =>
      'तुमी कितले लागीं आसात ताचे प्रमाणें ऑर्डरी धाडटात, आनी गिरायक तुमकां नकाशाचेर पळयता. ऑनलायन जावपाक सुवातेची परवानगी दियात.';

  @override
  String get locationSettingsButton => 'सेटिंग्ज उगडात';

  @override
  String get enableLocationButton => 'सुवातेची परवानगी दियात';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'शिफ्ट';

  @override
  String get payoutsTitle => 'पेआउट';

  @override
  String get payoutsEntryValue => 'सुमानाची कमाई';

  @override
  String get payoutDetailsTitle => 'सुमानाचो पेआउट';

  @override
  String get payoutsEmptyTitle => 'अजून पेआउट ना';

  @override
  String get payoutsEmptyBody =>
      'दर सुमानाची मोजणी जाल्या उपरांत, त्या सुमानाची तुमची कमाई हांगा दिसतली.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'प्रलंबीत';

  @override
  String get payoutStatusProcessing => 'प्रक्रिया चालू';

  @override
  String get payoutStatusPaid => 'पेमेंट जालें';

  @override
  String get payoutNotSentNote =>
      'ह्या सुमानाच्या तुमच्या कमाईची मोजणी जाल्या. पैशे अजून तुमच्या बँकेक धाडूंक नात.';

  @override
  String payoutPaidOn(String date) {
    return '$date दिसा तुमच्या बँकेक धाडले';
  }

  @override
  String get payoutPaidNote => 'ह्या सुमानाचें बँक ट्रान्सफर पुराय जालां.';

  @override
  String get payoutReferenceLabel => 'ट्रान्सफर संदर्भ';

  @override
  String get payoutNetLabel => 'दिवपाची रक्कम';

  @override
  String get payoutDeliveryEarnings => 'डिलिव्हरीची कमाई';

  @override
  String get payoutReferralEarnings => 'रेफरलाची कमाई';

  @override
  String get payoutCarriedIn => 'आदल्या सुमानांतल्यान';

  @override
  String get payoutCarriedInNote =>
      '₹100 परस उण्यो रकमो वेगळ्यान ट्रान्सफर करिनात. त्यो फुडल्या सुमानांत जोडटात.';

  @override
  String get payoutGross => 'एकूण कमाई';

  @override
  String get payoutDeductions => 'कपात';

  @override
  String get payoutsLatestWeek => 'हालींचो सुमानो';

  @override
  String get payoutsPaidSoFar => 'आतां मेरेन दिल्ले';

  @override
  String get payoutsNotYetSent => 'अजून धाडूंक नात';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'मोजणी जाली';

  @override
  String get payoutStepSending => 'धाडप चालू';

  @override
  String get payoutStepInBank => 'तुमच्या बँकेंत';

  @override
  String get navToRestaurant => 'रेस्टॉरंटा कडेन';

  @override
  String get navToCustomer => 'गिरायका कडेन';

  @override
  String navHeadTowards(String place) {
    return '$place वटेन वचात';
  }

  @override
  String navThen(String instruction) {
    return 'मागीर: $instruction';
  }

  @override
  String get navArrived => 'तुमी पावल्यात';

  @override
  String navArrivedAt(String place) {
    return '$place हांगा';
  }

  @override
  String get navFindingRoute => 'सगळ्यांत बरी वाट सोदतां…';

  @override
  String get navNoRoute =>
      'रस्त्याची दिशा उपलब्ध ना. सरळ रेषेंतलें अंतर दाखयतां.';

  @override
  String get navFindingLocation => 'तुमची सुवात सोदतां…';

  @override
  String get navLocationOff => 'वाट दाखोवपाक सुवात सुरू करात.';

  @override
  String get navEnd => 'नेव्हिगेशन बंद करात';

  @override
  String get navRecentre => 'परत केंद्रित करात';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनटां';
  }

  @override
  String get navStart => 'नेव्हिगेट करात';

  @override
  String get orderReachedRestaurant => 'रेस्टॉरंटांत आसा';

  @override
  String get orderReachedCustomer => 'गिरायका कडेन आसा';

  @override
  String get reachedRestaurantButton => 'हांव रेस्टॉरंटांत पावलों';

  @override
  String get reachedCustomerButton => 'हांव गिरायका कडेन पावलों';

  @override
  String get reachedRestaurantDone => 'तुमी पावल्यात हें रांदपाघराक कळ्ळां';

  @override
  String get reachedCustomerDone => 'तुमी भायर आसात हें गिरायकाक कळ्ळां';

  @override
  String get offerTitle => 'नवी ऑर्डर';

  @override
  String get offerYouEarn => 'तुमची कमाई';

  @override
  String get offerPickup => 'पिकअप';

  @override
  String get offerDrop => 'ड्रॉप';

  @override
  String offerAway(String distance) {
    return '$distance पयस';
  }

  @override
  String offerTrip(String distance) {
    return '$distance प्रवास';
  }

  @override
  String offerItems(String count) {
    return '$count वस्तू';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount रोकड घेयात';
  }

  @override
  String get offerPrepaid => 'आदींच भरले · रोकड ना';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'जेवण सुमार $minutes मिनटांनी तयार';
  }

  @override
  String get offerSwipeToAccept => 'मान्य करपाक ओडात';

  @override
  String get offerAccepting => 'मान्य करतां…';

  @override
  String get offerReject => 'न्हयकारात';

  @override
  String get offerRejectTitle => 'तुमी कित्याक न्हयकारतात?';

  @override
  String get offerReasonTooFar => 'खूब पयस';

  @override
  String get offerReasonBusy => 'आतां वेळ ना';

  @override
  String get offerReasonVehicle => 'गाडयेची अडचण';

  @override
  String get offerReasonOther => 'हेर कारण';

  @override
  String get offerTaken => 'दुसऱ्या रायडरान ऑर्डर घेतली';

  @override
  String get offerAutoOffline =>
      '3 ऑर्डरी चुकल्ल्यान तुमकां ऑफलायन केलां. तयार आसात तेन्ना ऑनलायन जायात.';

  @override
  String get mockLocationBlocked =>
      'ऑर्डरी मेळपाक खंयचेंय नकली-सुवात ॲप बंद करात.';

  @override
  String get dropoffDoorLabel => 'फ्लॅट / माळो';

  @override
  String get dropoffStreetLabel => 'रस्तो';

  @override
  String get dropoffLandmarkLabel => 'खूण';

  @override
  String get doorPhotoLabel => 'दाराचो फोटो';

  @override
  String get doorPhotoHint => 'व्हड करून पळोवपाक टॅप करात';

  @override
  String get doorPhotoUnavailable => 'आतां फोटो उपलब्ध ना';

  @override
  String permStepCount(int step, int total) {
    return '$total पयकीं $step';
  }

  @override
  String get permNotNow => 'आतां न्हय';

  @override
  String get permLocationTitle => 'सुवात सुरू करात';

  @override
  String get permLocationBody =>
      'ऑर्डरी रेस्टॉरंटाच्या सगळ्यांत लागसारच्या रायडराक वतात, आनी गिरायक नकाशाचेर आपल्या जेवणाचो माग काडटात.';

  @override
  String get permLocationNearTitle => 'तुमच्या लागसारच्यो ऑर्डरी';

  @override
  String get permLocationNearBody =>
      'आमी तुमकां लागसारच्या रेस्टॉरंटांतल्यो ऑर्डरी दितात, देखून उणो प्रवास आनी चड कमाई.';

  @override
  String get permLocationTrackTitle => 'लायव्ह ट्रॅकिंग';

  @override
  String get permLocationTrackBody =>
      'गिरायक तुमकां नकाशाचेर पळयतात, देखून ते तुमकां उणे कॉल करतात.';

  @override
  String get permLocationOnlineTitle => 'फकत तुमी ऑनलायन आसतना';

  @override
  String get permLocationOnlineBody =>
      'ऑफलायन जायात आनी तें बंद जाता. तें वापरांत आसता तेन्ना सदांच एक नोटिफिकेशन दिसता.';

  @override
  String get permLocationAllow => 'सुवातेची परवानगी दियात';

  @override
  String get permNotifyTitle => 'एकूय ऑर्डर चुकची ना';

  @override
  String get permNotifyBody =>
      'तुमची स्क्रीन लॉक आसतना लेगीत नव्यो ऑर्डरी फोन कॉला भशेन वाजतात.';

  @override
  String get permNotifyRingTitle => 'वाजपी ऑर्डर अलर्ट';

  @override
  String get permNotifyRingBody => 'अलर्टांतल्यानूच मान्य करात वा न्हयकारात.';

  @override
  String get permNotifyUpdatesTitle => 'पेआउट आनी मान्यताय';

  @override
  String get permNotifyUpdatesBody =>
      'तुमचीं कागदपत्रां केन्ना मान्य जातात आनी पैशे केन्ना धाडटात तें कळटलें.';

  @override
  String get permNotifyControlTitle => 'नियंत्रण तुमच्याच हातांत';

  @override
  String get permNotifyControlBody =>
      'तुमच्या फोनाच्या सेटिंग्जांत केन्नाय बदलात.';

  @override
  String get permNotifyAllow => 'नोटिफिकेशनां सुरू करात';

  @override
  String get permBatteryTitle => 'ऑर्डरी येवंक दियात';

  @override
  String get permBatteryBody =>
      'बॅटरी वाचोवपाक फोन फाटभुंयेर ॲपां बंद करतात. तुमी ऑनलायन आसतना Nexmile Rider चालू रावूंक दियात.';

  @override
  String get permBatteryOrdersTitle => 'एकूय ऑर्डर चुकना';

  @override
  String get permBatteryOrdersBody =>
      'ॲप बंद आसतना आनी फोन बोल्सांत आसतना लेगीत ऑर्डरी तुमकां पावतात.';

  @override
  String get permBatteryLiveTitle => 'ट्रॅकिंग लायव्ह उरता';

  @override
  String get permBatteryLiveBody =>
      'तुमी डिलिव्हर करिना मेरेन गिरायक तुमकां नकाशाचेर पळयत रावतात.';

  @override
  String get permBatteryLightTitle => 'बॅटरीचो उणो वापर';

  @override
  String get permBatteryLightBody => 'तुमी ऑनलायन आसतनाच तें चड काम करता.';

  @override
  String get permBatteryAllow => 'फाटभुंयेर वापराक परवानगी दियात';

  @override
  String get permFullScreenTitle => 'लॉक स्क्रीनाचेर ऑर्डरी';

  @override
  String get permFullScreenBody =>
      'नव्यो ऑर्डरी येवपी कॉला भशेन लॉक स्क्रीनाचेर दिसूंक दियात, जाका लागून तुमी एका टॅपान मान्य करूंक शकतात.';

  @override
  String get permFullScreenCallTitle => 'कॉला भशेन जाप दियात';

  @override
  String get permFullScreenCallBody =>
      'फोन अनलॉक करिनासतना ऑर्डर पळयात आनी मान्य करात.';

  @override
  String get permFullScreenTimeTitle => 'वेळार जाप दियात';

  @override
  String get permFullScreenTimeBody =>
      'तुमी जाप दिना ती ऑर्डर दुसऱ्या रायडराक वता.';

  @override
  String get permFullScreenOnlyTitle => 'फकत नव्या ऑर्डरां खातीर';

  @override
  String get permFullScreenOnlyBody =>
      'तुमच्या लॉक स्क्रीनाचेर हेर कांयच केन्नाच दिसना.';

  @override
  String get setupTitle => 'फोन सेटअप';

  @override
  String get setupIntro =>
      'ॲप बंद आसतना वा फोन लॉक आसतना लेगीत नव्यो ऑर्डरी वाजच्यो म्हूण हें पुराय करात.';

  @override
  String get setupNotifications => 'नोटिफिकेशनां';

  @override
  String get setupNotificationsBody => 'नव्यो ऑर्डरी वाजूंक आनी दिसूंक.';

  @override
  String get setupFullScreen => 'फुल-स्क्रीन ऑर्डर अलर्ट';

  @override
  String get setupFullScreenBody =>
      'कॉला भशेन नवी ऑर्डर तुमच्या लॉक स्क्रीनाचेर दाखयता.';

  @override
  String get setupBattery => 'बॅटरी: ऑप्टिमायझ करूं नाकात';

  @override
  String get setupBatteryBody =>
      'तुमी ऑनलायन आसतना तुमच्या फोनाक ॲप बंद करूंक दिना.';

  @override
  String get setupAutostart => 'ऑटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फोनांचेर Nexmile Rider खातीर ऑटोस्टार्ट लेगीत सुरू करचें पडटा. सेटिंग्ज उगडात, ऑटोस्टार्ट सोदात आनी तें सुरू करात.';
  }

  @override
  String get setupLocation => 'सुवात';

  @override
  String get setupLocationBody => 'तुमकां लागसारच्यो ऑर्डरी धाडपाक गरजेचें.';

  @override
  String get setupAllow => 'परवानगी दियात';

  @override
  String get setupOpenSettings => 'सेटिंग्ज उगडात';

  @override
  String get setupMarkDone => 'हांवें हें केलां';

  @override
  String get setupDoneStep => 'जालें';

  @override
  String get setupBannerTitle => 'फोन सेटअप पुराय करात';

  @override
  String setupBannerBody(String count) {
    return 'ऑर्डर अलर्ट चुकचे न्हय म्हूण $count उरल्यात';
  }

  @override
  String get offerEstimatedEarnings => 'अदमासाची कमाई';

  @override
  String offerPickupLine(String name) {
    return 'पिकअप: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ड्रॉप: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'तुमचे कडल्यान सुमार $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider मदल्यान भायर सरूं?';

  @override
  String get exitBody => 'तुमकां खरेंच ॲपांतल्यान भायर सरपाचें आसा?';

  @override
  String get exitConfirm => 'भायर सरात';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डिलिव्हरी पार्टनर जायात';

  @override
  String get onboardingWelcomeSubtitle =>
      'तुमच्या वाठारांत डिलिव्हरी करात, कामाचे वेळ तुमीच थारायात आनी दर सुमानाक पैशे मेळयात.';

  @override
  String get onboardingWelcomeNeed => 'हीं तयार दवरात';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्रायव्हिंग लायसन्स आनी गाडयेचें RC';

  @override
  String get onboardingNeedInsurance => 'गाडयेचो विमो';

  @override
  String get onboardingNeedBank => 'बँक खात्याचो तपशील';

  @override
  String get onboardingNeedNote =>
      'सायकल चलयतात वा पांयांनी वतात? तुमकां फकत आधार, PAN आनी बँक खातें जाय.';

  @override
  String get onboardingWelcomeTime => 'सुमार 10 मिनटां लागतात';

  @override
  String get onboardingGetStarted => 'सुरू करात';

  @override
  String get onboardingSavedNote =>
      'दरेक टप्प्या उपरांत सुरक्षीतपणान जतनाय जाता';

  @override
  String get docsTip =>
      'बऱ्या उजवाडांतले स्पश्ट फोटो सगळ्यांत बेगीन मान्य जातात.';

  @override
  String get docsAllDone => 'गरजेचें सगळें जोडलां. तपासपाक फुडें वचात.';

  @override
  String get docGroupIdentity => 'ओळखीचो पुरावो';

  @override
  String get docGroupVehicle => 'लायसन्स आनी गाडयेचीं कागदपत्रां';

  @override
  String get docGroupMore => 'आनीक कागदपत्रां';

  @override
  String get docTapToAdd => 'जोडपाक टॅप करात';

  @override
  String get docUploading => 'अपलोड जाता…';

  @override
  String get docView => 'पळयात';

  @override
  String get docSheetSubtitle => 'पयल्याच फावटीं मान्य जावपाक कशें करचें';

  @override
  String get docTipCorners => 'चारूय कोनशे फोटोभितर';

  @override
  String get docTipGlare => 'स्पश्ट अक्षरां, चमक वा सावळी ना';

  @override
  String get docTipOriginal => 'मूळ कागदपत्र, फोटोकॉपी न्हय';

  @override
  String get docTipFace => 'तुमचें तोंड स्पश्ट दिसूंक जाय, सरळ मुखार पळयात';

  @override
  String get docTipBackground => 'साधी फाटभूंय आनी बरो उजवाड';

  @override
  String get docTipNoCap => 'टोपी, मास्क वा गॉगल ना';

  @override
  String get docTipFullPage => 'पुराय पान, दरेक ओळ वाचूंक येता अशें';

  @override
  String get docSourceCamera => 'कॅमेरा';

  @override
  String get docSourceGallery => 'गॅलरी';

  @override
  String get docSourceFile => 'PDF वा फायल';

  @override
  String get reviewSectionDetails => 'तुमचो तपशील';

  @override
  String get reviewSectionDocuments => 'कागदपत्रां';

  @override
  String get reviewSectionBank => 'बँक खातें';

  @override
  String get reviewBankHidden => 'जोडलां · तुमच्या सुरक्षेखातीर लिपयलां';

  @override
  String get reviewEdit => 'संपादन करात';

  @override
  String get reviewNextTitle => 'फुडें कितें जाता';

  @override
  String get reviewNext1 => 'तुमी तुमचो अर्ज धाडटात';

  @override
  String get reviewNext2 => 'आमचो पंगड तुमचो तपशील आनी कागदपत्रां तपासता';

  @override
  String get reviewNext3 => 'तुमकां कळयतात, ऑनलायन जायात आनी कमाई सुरू करात';

  @override
  String get kycStepSubmitted => 'अर्ज धाडला';

  @override
  String get kycStepVerifying => 'तुमचीं कागदपत्रां सत्यापित जातात';

  @override
  String get kycStepApproved => 'मान्य जालें — ऑनलायन जायात आनी कमाई सुरू करात';
}
