// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'जलद डिलिव्हरी. ताजे स्मित.';

  @override
  String get chooseLanguageTitle => 'तुमची भाषा निवडा';

  @override
  String get chooseLanguageSubtitle =>
      'तुम्हाला सोयीची वाटेल ती भाषा निवडा. तुम्ही ती कधीही सेटिंग्जमध्ये बदलू शकता.';

  @override
  String get searchLanguageHint => 'भाषा शोधा';

  @override
  String get noLanguageFound => 'कोणतीही भाषा सापडली नाही';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध आहेत';
  }

  @override
  String get continueLabel => 'पुढे चला';

  @override
  String get selectedLabel => 'निवडलेली';

  @override
  String get defaultLabel => 'डीफॉल्ट';

  @override
  String get homeTitle => 'Nexmile मध्ये आपले स्वागत आहे';

  @override
  String get homeSubtitle =>
      'ताजा किराणा, गरम जेवण आणि दैनंदिन गरजा तुमच्या जवळच्या दुकानांमधून.';

  @override
  String get changeLanguage => 'भाषा बदला';

  @override
  String get languageUpdated => 'भाषा बदलली';

  @override
  String get appLanguageLabel => 'ॲपची भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile मध्ये साइन इन करा';

  @override
  String get loginSubtitle =>
      'तुमचा ईमेल किंवा मोबाइल क्रमांक टाका, आम्ही पडताळणी कोड पाठवू.';

  @override
  String get emailOrPhoneLabel => 'ईमेल किंवा मोबाइल क्रमांक';

  @override
  String get emailOrPhoneHint => 'name@example.com किंवा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'वैध ईमेल पत्ता किंवा 10 अंकी मोबाइल क्रमांक टाका';

  @override
  String get loginHeadline =>
      'Nexmile सोबत डिलिव्हरी करा. तुमच्या सोयीच्या वेळेत कमवा.';

  @override
  String get loginOrSignUp => 'लॉग इन किंवा साइन अप करा';

  @override
  String get loginEmailHint => 'तुमचा ईमेल पत्ता टाका';

  @override
  String get invalidEmail => 'वैध ईमेल पत्ता टाका';

  @override
  String get loginHeroBadge => 'डिलिव्हरी पार्टनर';

  @override
  String get sendCode => 'कोड पाठवा';

  @override
  String get agreeToTermsOnContinue =>
      'पुढे जाऊन तुम्ही आमच्या सेवा अटी आणि गोपनीयता धोरणाशी सहमत होता.';

  @override
  String get otpTitle => 'तुम्हीच आहात याची खात्री करा';

  @override
  String otpSubtitle(String target) {
    return '$target वर पाठवलेला 6 अंकी कोड टाका';
  }

  @override
  String get otpHelpTitle => 'कोड मिळाला नाही?';

  @override
  String get otpHelpCheck =>
      'वरचा क्रमांक किंवा ईमेल तपासा. तो बदलण्यासाठी मागे जा.';

  @override
  String get otpHelpWait =>
      'कोड यायला एक मिनिटापर्यंत वेळ लागू शकतो. टायमर संपल्यावर तुम्ही नवीन कोड मागवू शकता.';

  @override
  String get otpHelpSpam => 'ईमेल असेल तर स्पॅम फोल्डरही तपासा.';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'पडताळा';

  @override
  String get resendCode => 'कोड पुन्हा पाठवा';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंदांत पुन्हा पाठवा';
  }

  @override
  String get codeResent => 'नवीन कोड पाठवला आहे';

  @override
  String get incorrectCode =>
      'हा कोड चुकीचा आहे किंवा त्याची मुदत संपली आहे. नवीन कोड मागवा.';

  @override
  String get enterFullCode => 'पूर्ण 6 अंक टाका';

  @override
  String get accountSuspended =>
      'हे खाते निलंबित करण्यात आले आहे. कृपया सहाय्यताशी संपर्क साधा.';

  @override
  String get tooManyAttempts =>
      'खूप वेळा प्रयत्न झाले. कृपया थोड्या वेळाने पुन्हा प्रयत्न करा.';

  @override
  String get sessionExpired =>
      'तुमचे सत्र संपले आहे. कृपया पुन्हा साइन इन करा.';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नाही. तुमचे कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get developmentCode => 'डेव्हलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तुम्ही साइन आउट झाला आहात';

  @override
  String get somethingWentWrong => 'काहीतरी चूक झाली. पुन्हा प्रयत्न करा.';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get profileSectionDetails => 'तुमची माहिती';

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
  String get viewProfile => 'प्रोफाइल पहा';

  @override
  String get nameLabel => 'नाव';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल क्रमांक';

  @override
  String get accountStatusLabel => 'खात्याची स्थिती';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'प्रलंबित';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'पडताळलेले';

  @override
  String get notProvided => 'जोडलेले नाही';

  @override
  String get retry => 'पुन्हा प्रयत्न करा';

  @override
  String get loginRiderNote => 'हे ॲप Nexmile डिलिव्हरी पार्टनरसाठी आहे.';

  @override
  String get checkingYourAccount => 'तुमचे खाते तपासत आहोत';

  @override
  String get couldNotLoadAccount =>
      'तुमचे खाते लोड करता आले नाही. तुमचे कनेक्शन तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get notARiderAccountTitle => 'हे डिलिव्हरी पार्टनर खाते नाही';

  @override
  String get notARiderAccount =>
      'हा ईमेल किंवा मोबाइल क्रमांक आधीच दुसऱ्या Nexmile खात्यावर नोंदवलेला आहे. डिलिव्हरी पार्टनर म्हणून सामील होण्यासाठी साइन आउट करा आणि दुसरा वापरा.';

  @override
  String notARiderAccountFor(String role) {
    return 'हा ईमेल किंवा मोबाइल क्रमांक आधीच Nexmile $role म्हणून नोंदवलेला आहे. डिलिव्हरी पार्टनर म्हणून सामील होण्यासाठी साइन आउट करा आणि दुसरा वापरा.';
  }

  @override
  String get roleCustomer => 'ग्राहक';

  @override
  String get roleMerchant => 'व्यापारी';

  @override
  String get roleAdmin => 'प्रशासक';

  @override
  String get useAnotherAccount => 'दुसरे खाते वापरा';

  @override
  String get onboardingTitle => 'Nexmile पार्टनर बना';

  @override
  String get onboardingSubtitle =>
      'थोडी माहिती आणि तुमची कागदपत्रे द्या, मग आमची टीम तुमची पडताळणी करते. याला साधारणपणे दोन कामकाजाच्या दिवसांपर्यंत वेळ लागतो.';

  @override
  String stepOfSteps(int current, int total) {
    return '$total पैकी पायरी $current';
  }

  @override
  String get stepIdentityTitle => 'तुमच्याबद्दल';

  @override
  String get stepIdentitySubtitle =>
      'तुमच्या आधार कार्डवर आहे अगदी तसेच तुमचे नाव टाका.';

  @override
  String get stepVehicleTitle => 'तुमचे वाहन';

  @override
  String get stepVehicleSubtitle =>
      'तुम्ही कोणते वाहन चालवता आणि त्याच्या नंबर प्लेटवरील क्रमांक सांगा.';

  @override
  String get stepIdentityNumbersTitle => 'ओळख क्रमांक';

  @override
  String get stepIdentityNumbersSubtitle =>
      'हे क्रमांक तुम्ही नंतर अपलोड कराल त्या कागदपत्रांशी जुळले पाहिजेत.';

  @override
  String get stepLicenceTitle => 'लायसन्स आणि विमा';

  @override
  String get stepLicenceSubtitle =>
      'तुम्ही डिलिव्हरी सुरू कराल त्या दिवशी दोन्ही वैध असले पाहिजेत.';

  @override
  String get stepBankTitle => 'तुम्हाला पैसे कुठे मिळतील';

  @override
  String get stepBankSubtitle =>
      'तुमची कमाई या खात्यात जमा केली जाते. ते नीट तपासा.';

  @override
  String get stepDocumentsTitle => 'तुमची कागदपत्रे';

  @override
  String get stepDocumentsSubtitle =>
      'प्रत्येक कागदपत्राचा फोटो चांगल्या प्रकाशात काढा. JPG, PNG किंवा PDF, प्रत्येकी 5 MB पर्यंत.';

  @override
  String get stepReviewTitle => 'तपासा आणि सबमिट करा';

  @override
  String get stepReviewSubtitle =>
      'सबमिट केल्यानंतर, आमची टीम तपासेपर्यंत तुमची माहिती लॉक राहते.';

  @override
  String get saveAndContinue => 'जतन करा आणि पुढे चला';

  @override
  String get backLabel => 'मागे';

  @override
  String get fullNameLabel => 'पूर्ण नाव';

  @override
  String get fullNameHint => 'आधारवर छापले आहे तसे';

  @override
  String get dateOfBirthLabel => 'जन्मतारीख';

  @override
  String get selectDate => 'तारीख निवडा';

  @override
  String get vehicleTypeLabel => 'वाहनाचा प्रकार';

  @override
  String get vehicleMotorcycle => 'मोटरसायकल';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleEv => 'इलेक्ट्रिक वाहन';

  @override
  String get vehicleBicycle => 'सायकल';

  @override
  String get vehicleWalk => 'पायी';

  @override
  String get vehicleNoPapersNote =>
      'वाहन क्रमांक किंवा RC लागणार नाही. तुम्हाला फक्त आधार आणि PAN विचारले जाईल.';

  @override
  String get vehicleNumberLabel => 'वाहन क्रमांक';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC क्रमांक';

  @override
  String get aadhaarLabel => 'आधार क्रमांक';

  @override
  String get aadhaarHint => '12 अंक';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्रायव्हिंग लायसन्स क्रमांक';

  @override
  String get drivingLicenceExpiryLabel => 'लायसन्स कधीपर्यंत वैध';

  @override
  String get insuranceNumberLabel => 'विमा पॉलिसी क्रमांक';

  @override
  String get insuranceExpiryLabel => 'विमा कधीपर्यंत वैध';

  @override
  String get bankAccountNameLabel => 'खातेधारकाचे नाव';

  @override
  String get bankAccountNumberLabel => 'खाते क्रमांक';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total पैकी $done अपलोड झाली';
  }

  @override
  String get uploadDocument => 'अपलोड करा';

  @override
  String get replaceDocument => 'बदला';

  @override
  String get removeDocument => 'काढा';

  @override
  String get takePhoto => 'फोटो काढा';

  @override
  String get chooseFromGallery => 'गॅलरीमधून निवडा';

  @override
  String get chooseFile => 'फाइल निवडा';

  @override
  String get uploadingLabel => 'अपलोड होत आहे';

  @override
  String get documentRejected => 'नाकारले';

  @override
  String get documentUploaded => 'अपलोड झाले';

  @override
  String get documentApproved => 'मंजूर';

  @override
  String get documentRequired => 'आवश्यक';

  @override
  String get documentOptional => 'ऐच्छिक';

  @override
  String get fileTooLarge =>
      'ही फाइल 5 MB पेक्षा मोठी आहे. स्कॅनऐवजी फोटो वापरून पहा.';

  @override
  String get unsupportedFileType => 'JPG, PNG किंवा PDF निवडा.';

  @override
  String get pickerUnavailable =>
      'ते उघडता आले नाही. ॲपच्या कॅमेरा आणि फोटोच्या परवानग्या तपासा.';

  @override
  String get uploadFailed => 'ते अपलोड झाले नाही. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get submitForVerification => 'पडताळणीसाठी सबमिट करा';

  @override
  String get submitConfirmTitle => 'पडताळणीसाठी सबमिट करायचे?';

  @override
  String get submitConfirmBody =>
      'आमची टीम तपासत असताना तुमची माहिती आणि कागदपत्रे लॉक राहतील. निर्णय होईपर्यंत तुम्ही ती बदलू शकणार नाही.';

  @override
  String get cancelLabel => 'रद्द करा';

  @override
  String get completeEverythingBeforeSubmitting =>
      'सबमिट करण्यापूर्वी सर्व पायऱ्या पूर्ण करा आणि सर्व कागदपत्रे अपलोड करा.';

  @override
  String get checkTheHighlightedFields =>
      'हायलाइट केलेली क्षेत्रे तपासा आणि पुन्हा प्रयत्न करा.';

  @override
  String get underReviewTitle => 'आम्ही तुमची कागदपत्रे पडताळत आहोत';

  @override
  String get underReviewBody =>
      'आमची टीम साधारणपणे दोन कामकाजाच्या दिवसांत तपासणी करते. मंजुरी मिळताच आम्ही तुम्हाला कळवू.';

  @override
  String get checkAgain => 'पुन्हा तपासा';

  @override
  String get stillUnderReview => 'अजून तपासणी सुरू आहे';

  @override
  String get rejectedTitle => 'आम्ही तुमची पडताळणी करू शकलो नाही';

  @override
  String get rejectedBody =>
      'आमच्या टीमने खाली नमूद केलेल्या गोष्टी दुरुस्त करा, मग तुमची कागदपत्रे पुन्हा पाठवा.';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'दुरुस्त करून पुन्हा सबमिट करा';

  @override
  String get blockedTitle => 'तुम्ही अजून ऑनलाइन होऊ शकत नाही';

  @override
  String get documentsExpiredMessage =>
      'तुमच्या लायसन्सची किंवा विम्याची मुदत संपली आहे. ऑनलाइन होण्यासाठी वैध कागदपत्रे अपलोड करा.';

  @override
  String get awaitingVerificationMessage =>
      'तुमच्या कागदपत्रांची पडताळणी अजून सुरू आहे.';

  @override
  String get updateDocuments => 'कागदपत्रे अपडेट करा';

  @override
  String get riderHomeTitle => 'डिलिव्हरीसाठी तयार';

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
      'ऑनलाइन व्हा, आम्ही तुम्हाला जवळच्या डिलिव्हरी पाठवू.';

  @override
  String get dutyStatusLabel => 'ड्युटी स्थिती';

  @override
  String get dutyOnline => 'ऑनलाइन';

  @override
  String get dutyOffline => 'ऑफलाइन';

  @override
  String get dutyOnBreak => 'ब्रेकवर';

  @override
  String get goOnline => 'ऑनलाइन व्हा';

  @override
  String get goOffline => 'ऑफलाइन व्हा';

  @override
  String get takeABreak => 'ब्रेक घ्या';

  @override
  String get waitingForOrders => 'जवळच्या ऑर्डरची वाट पाहत आहोत';

  @override
  String get youAreOffline =>
      'तुम्ही ऑफलाइन आहात. तुम्हाला कोणतीही डिलिव्हरी पाठवली जाणार नाही.';

  @override
  String get completedDeliveriesLabel => 'पूर्ण केलेल्या डिलिव्हरी';

  @override
  String get ratingLabel => 'रेटिंग';

  @override
  String get notRatedYet => 'अजून रेटिंग नाही';

  @override
  String get vehicleLabel => 'वाहन';

  @override
  String get kycStatusLabel => 'पडताळणी';

  @override
  String get kycPending => 'सबमिट केलेले नाही';

  @override
  String get kycSubmitted => 'तपासणी सुरू आहे';

  @override
  String get kycVerified => 'मंजूर';

  @override
  String get kycRejected => 'नाकारले';

  @override
  String get fieldRequired => 'हे आवश्यक आहे';

  @override
  String get invalidAadhaar => 'तुमच्या आधार क्रमांकाचे 12 अंक टाका';

  @override
  String get invalidPan => 'वैध PAN टाका, उदा. ABCDE1234F';

  @override
  String get invalidIfsc => 'वैध IFSC कोड टाका, उदा. SBIN0001234';

  @override
  String get invalidVehicleNumber => 'नंबर प्लेटवर आहे अगदी तसाच क्रमांक टाका';

  @override
  String get invalidAccountNumber => 'वैध खाते क्रमांक टाका';

  @override
  String get dateMustBeFuture => 'ही तारीख आधीच उलटून गेली आहे';

  @override
  String get mustBeEighteen =>
      'डिलिव्हरी करण्यासाठी तुमचे वय किमान 18 वर्षे असावे';

  @override
  String get docAadhaarFront => 'आधार कार्ड (पुढची बाजू)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (मागची बाजू)';

  @override
  String get docDrivingLicence => 'ड्रायव्हिंग लायसन्स';

  @override
  String get docVehicleRc => 'वाहन नोंदणी प्रमाणपत्र';

  @override
  String get docInsurance => 'वाहन विमा';

  @override
  String get docProfilePhoto => 'प्रोफाइल फोटो';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'रद्द केलेला चेक किंवा बँक स्टेटमेंट';

  @override
  String get ordersTab => 'ऑर्डर';

  @override
  String get deliveryTab => 'डिलिव्हरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'तुमच्या जवळच्या ऑर्डर';

  @override
  String get orderBoardSubtitle =>
      'सर्वात जवळचे रेस्टॉरंट आधी. यादी आपोआप रिफ्रेश होते.';

  @override
  String orderNumberLabel(String number) {
    return 'ऑर्डर $number';
  }

  @override
  String get pickupLabel => 'पिकअप';

  @override
  String get dropoffLabel => 'डिलिव्हरी पत्ता';

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
      one: '1 वस्तू',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'तुमची कमाई';

  @override
  String get collectCashLabel => 'रोख घ्या';

  @override
  String get prepaidLabel => 'ऑनलाइन पेमेंट झाले';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहकाकडून $amount रोख घ्या';
  }

  @override
  String get nothingToCollect => 'पैसे आधीच भरलेले आहेत. पैसे मागू नका.';

  @override
  String get acceptOrder => 'स्वीकारा';

  @override
  String get viewOrder => 'पहा';

  @override
  String get orderAccepted => 'ऑर्डर स्वीकारली. रेस्टॉरंटकडे निघा.';

  @override
  String get orderAlreadyTaken =>
      'ही ऑर्डर दुसऱ्या रायडरने घेतली. ही नवीन यादी पहा.';

  @override
  String get orderNoLongerYours => 'ही ऑर्डर आता तुमच्याकडे नाही.';

  @override
  String get boardEmptyTitle => 'सध्या ऑर्डर नाहीत';

  @override
  String get boardEmptyBody =>
      'ऑनलाइन रहा. रेस्टॉरंटमध्ये गर्दी वाढेल तशी यादी आपोआप अपडेट होते.';

  @override
  String get boardOfflineTitle => 'तुम्ही ऑफलाइन आहात';

  @override
  String get boardOfflineBody => 'ऑर्डर मिळवण्यासाठी ऑनलाइन व्हा.';

  @override
  String get boardBusyTitle => 'आधी तुमची डिलिव्हरी पूर्ण करा';

  @override
  String get boardBusyBody =>
      'ही ऑर्डर डिलिव्हर झाल्यावर तुम्ही दुसरी ऑर्डर घेऊ शकता.';

  @override
  String get boardNoLocationTitle => 'आम्हाला तुमचे लोकेशन सापडत नाही';

  @override
  String get boardNoLocationBody =>
      'रेस्टॉरंट किती जवळ आहे त्यानुसार ऑर्डर लावल्या जातात, म्हणून काहीही दाखवण्यासाठी आम्हाला तुमचे लोकेशन हवे.';

  @override
  String get boardNotVerifiedTitle => 'डिलिव्हरीसाठी अजून मंजुरी नाही';

  @override
  String get activeDeliveryTitle => 'तुमची डिलिव्हरी';

  @override
  String get headToRestaurant => 'रेस्टॉरंटकडे निघा';

  @override
  String get deliverToCustomer => 'ग्राहकाला डिलिव्हर करा';

  @override
  String get noActiveDeliveryTitle => 'हातात कोणतीही ऑर्डर नाही';

  @override
  String get noActiveDeliveryBody =>
      'यादीतून एखादी ऑर्डर स्वीकारा, ती इथे दिसेल.';

  @override
  String get confirmPickupButton => 'मी ऑर्डर उचलली';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle => 'रेस्टॉरंटकडून कोड मागा आणि इथे टाका.';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode =>
      'तो कोड जुळला नाही. रेस्टॉरंटकडून पुन्हा तपासून घ्या.';

  @override
  String get pickupConfirmed => 'ऑर्डर उचलली. ग्राहकाला डिलिव्हर करा.';

  @override
  String get confirmDeliveryButton => 'डिलिव्हर झाली';

  @override
  String get stepReachRestaurant => 'रेस्टॉरंटला पोहोचा';

  @override
  String get stepPickUp => 'ऑर्डर उचला';

  @override
  String get stepReachCustomer => 'ग्राहकाकडे पोहोचा';

  @override
  String get stepDeliver => 'डिलिव्हर करा';

  @override
  String get swipePickUp => 'उचलल्यावर स्वाइप करा';

  @override
  String get swipeDeliver => 'स्वाइप करून डिलिव्हर करा';

  @override
  String get cashToCollectLabel => 'घ्यायची रोख रक्कम';

  @override
  String get confirmDeliveryTitle => 'डिलिव्हरीची खात्री करा';

  @override
  String get confirmDeliveryBody =>
      'ग्राहकाच्या हातात ऑर्डर मिळाल्यावरच खात्री करा.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'आधी $amount रोख घ्या, मग खात्री करा.';
  }

  @override
  String get deliveryConfirmed =>
      'डिलिव्हर झाली. धन्यवाद, तुम्ही पुन्हा ऑनलाइन आहात.';

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
  String get releaseOrderButton => 'परत द्या';

  @override
  String get releaseOrderTitle => 'ही ऑर्डर परत द्यायची?';

  @override
  String get releaseOrderBody =>
      'ती दुसऱ्या रायडरसाठी पुन्हा यादीत जाते. जेवण उचलण्यापूर्वीच तुम्ही हे करू शकता.';

  @override
  String get releaseReasonHint => 'कारण (ऐच्छिक)';

  @override
  String get orderReleased => 'परत दिली. ती पुन्हा इतर रायडरसाठी उपलब्ध आहे.';

  @override
  String get finishCurrentOrderFirst =>
      'आधी तुमची सध्याची ऑर्डर पूर्ण करा किंवा परत द्या.';

  @override
  String get callRestaurant => 'रेस्टॉरंटला कॉल करा';

  @override
  String get callCustomer => 'ग्राहकाला कॉल करा';

  @override
  String get openInMaps => 'मार्ग';

  @override
  String get customerNoteLabel => 'ग्राहकाची सूचना';

  @override
  String get orderItemsLabel => 'बॅगमध्ये काय आहे';

  @override
  String get orderDetailsTitle => 'ऑर्डरचा तपशील';

  @override
  String get historyTitle => 'मागील डिलिव्हरी';

  @override
  String get historyEmptyTitle => 'अजून डिलिव्हरी नाहीत';

  @override
  String get historyEmptyBody => 'तुम्ही पूर्ण केलेल्या ऑर्डर इथे दिसतील.';

  @override
  String get historySearchHint => 'ऑर्डर किंवा रेस्टॉरंट शोधा';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'आज';

  @override
  String get historyYesterday => 'काल';

  @override
  String get historyEarlier => 'आधीच्या';

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
    return '“$query” शी जुळणारे काहीही नाही.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount रोख घेतले';
  }

  @override
  String get orderDelivered => 'डिलिव्हर झाली';

  @override
  String get orderCancelled => 'रद्द झाली';

  @override
  String get orderPreparing => 'तयार होत आहे';

  @override
  String get orderReadyForPickup => 'पिकअपसाठी तयार';

  @override
  String get orderAssigned => 'तुम्हाला दिली';

  @override
  String get orderPickedUp => 'उचलली';

  @override
  String get orderOutForDelivery => 'वाटेवर आहे';

  @override
  String get trackingOn => 'लोकेशन शेअरिंग चालू';

  @override
  String get locationUnavailableMessage =>
      'तुमचे लोकेशन मिळत नाही. लोकेशन चालू करा आणि Nexmile Rider ला परवानगी द्या.';

  @override
  String get locationPermissionTitle => 'लोकेशन आवश्यक';

  @override
  String get locationPermissionBody =>
      'तुम्ही किती जवळ आहात त्यानुसार ऑर्डर दिल्या जातात, आणि ग्राहक तुम्हाला नकाशावर पाहतो. ऑनलाइन होण्यासाठी लोकेशनला परवानगी द्या.';

  @override
  String get locationSettingsButton => 'सेटिंग्ज उघडा';

  @override
  String get enableLocationButton => 'लोकेशनला परवानगी द्या';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'शिफ्ट';

  @override
  String get payoutsTitle => 'पेआउट';

  @override
  String get payoutsEntryValue => 'साप्ताहिक कमाई';

  @override
  String get payoutDetailsTitle => 'साप्ताहिक पेआउट';

  @override
  String get payoutsEmptyTitle => 'अजून पेआउट नाहीत';

  @override
  String get payoutsEmptyBody =>
      'प्रत्येक आठवड्याचा हिशोब झाल्यावर त्या आठवड्याची तुमची कमाई इथे दिसेल.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'प्रलंबित';

  @override
  String get payoutStatusProcessing => 'प्रक्रिया सुरू आहे';

  @override
  String get payoutStatusPaid => 'जमा झाले';

  @override
  String get payoutNotSentNote =>
      'या आठवड्याच्या तुमच्या कमाईचा हिशोब झाला आहे. पैसे अजून तुमच्या बँकेत पाठवलेले नाहीत.';

  @override
  String payoutPaidOn(String date) {
    return '$date रोजी तुमच्या बँकेत पाठवले';
  }

  @override
  String get payoutPaidNote => 'या आठवड्याचे बँक ट्रान्सफर पूर्ण झाले आहे.';

  @override
  String get payoutReferenceLabel => 'ट्रान्सफर रेफरन्स';

  @override
  String get payoutNetLabel => 'मिळणारी रक्कम';

  @override
  String get payoutDeliveryEarnings => 'डिलिव्हरीची कमाई';

  @override
  String get payoutReferralEarnings => 'रेफरलची कमाई';

  @override
  String get payoutCarriedIn => 'मागील आठवड्यातील';

  @override
  String get payoutCarriedInNote =>
      '₹100 पेक्षा कमी रक्कम स्वतंत्रपणे ट्रान्सफर केली जात नाही. ती पुढच्या आठवड्यात जोडली जाते.';

  @override
  String get payoutGross => 'एकूण कमाई';

  @override
  String get payoutDeductions => 'कपात';

  @override
  String get payoutsLatestWeek => 'अलीकडील आठवडा';

  @override
  String get payoutsPaidSoFar => 'आतापर्यंत जमा झाले';

  @override
  String get payoutsNotYetSent => 'अजून पाठवलेले नाहीत';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'हिशोब झाला';

  @override
  String get payoutStepSending => 'पाठवत आहोत';

  @override
  String get payoutStepInBank => 'तुमच्या बँकेत';

  @override
  String get navToRestaurant => 'रेस्टॉरंटकडे';

  @override
  String get navToCustomer => 'ग्राहकाकडे';

  @override
  String navHeadTowards(String place) {
    return '$place च्या दिशेने जा';
  }

  @override
  String navThen(String instruction) {
    return 'नंतर: $instruction';
  }

  @override
  String get navArrived => 'तुम्ही पोहोचलात';

  @override
  String navArrivedAt(String place) {
    return '$place येथे';
  }

  @override
  String get navFindingRoute => 'सर्वोत्तम मार्ग शोधत आहोत…';

  @override
  String get navNoRoute =>
      'रस्त्याचा मार्ग उपलब्ध नाही. सरळ रेषेतील अंतर दाखवत आहोत.';

  @override
  String get navFindingLocation => 'तुमचे लोकेशन शोधत आहोत…';

  @override
  String get navLocationOff => 'नेव्हिगेशनसाठी लोकेशन चालू करा.';

  @override
  String get navEnd => 'नेव्हिगेशन थांबवा';

  @override
  String get navRecentre => 'पुन्हा केंद्रित करा';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनिटे';
  }

  @override
  String get navStart => 'नेव्हिगेट करा';

  @override
  String get orderReachedRestaurant => 'रेस्टॉरंटमध्ये';

  @override
  String get orderReachedCustomer => 'ग्राहकाकडे';

  @override
  String get reachedRestaurantButton => 'मी रेस्टॉरंटमध्ये आहे';

  @override
  String get reachedCustomerButton => 'मी ग्राहकाच्या पत्त्यावर आहे';

  @override
  String get reachedRestaurantDone => 'तुम्ही आल्याचे किचनला कळवले आहे';

  @override
  String get reachedCustomerDone => 'तुम्ही बाहेर आहात हे ग्राहकाला कळवले आहे';

  @override
  String get offerTitle => 'नवीन ऑर्डर';

  @override
  String get offerYouEarn => 'तुमची कमाई';

  @override
  String get offerPickup => 'पिकअप';

  @override
  String get offerDrop => 'ड्रॉप';

  @override
  String offerAway(String distance) {
    return '$distance दूर';
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
    return '$amount रोख घ्या';
  }

  @override
  String get offerPrepaid => 'प्रीपेड · रोख नाही';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'सुमारे $minutes मिनिटांत जेवण तयार';
  }

  @override
  String get offerSwipeToAccept => 'स्वाइप करून स्वीकारा';

  @override
  String get offerAccepting => 'स्वीकारत आहोत…';

  @override
  String get offerReject => 'नाकारा';

  @override
  String get offerRejectTitle => 'तुम्ही का नाकारत आहात?';

  @override
  String get offerReasonTooFar => 'खूप लांब';

  @override
  String get offerReasonBusy => 'सध्या व्यस्त';

  @override
  String get offerReasonVehicle => 'वाहनाची समस्या';

  @override
  String get offerReasonOther => 'दुसरे कारण';

  @override
  String get offerTaken => 'दुसऱ्या रायडरने ऑर्डर घेतली';

  @override
  String get offerAutoOffline =>
      '3 ऑर्डर चुकल्यामुळे तुम्हाला ऑफलाइन केले आहे. तयार असाल तेव्हा ऑनलाइन व्हा.';

  @override
  String get mockLocationBlocked =>
      'ऑर्डर मिळवण्यासाठी बनावट लोकेशनचे कोणतेही ॲप बंद करा.';

  @override
  String get dropoffDoorLabel => 'फ्लॅट / मजला';

  @override
  String get dropoffStreetLabel => 'रस्ता';

  @override
  String get dropoffLandmarkLabel => 'खूण';

  @override
  String get doorPhotoLabel => 'दाराचा फोटो';

  @override
  String get doorPhotoHint => 'मोठा पाहण्यासाठी टॅप करा';

  @override
  String get doorPhotoUnavailable => 'फोटो सध्या उपलब्ध नाही';

  @override
  String permStepCount(int step, int total) {
    return '$total पैकी $step';
  }

  @override
  String get permNotNow => 'आत्ता नको';

  @override
  String get permLocationTitle => 'लोकेशन चालू करा';

  @override
  String get permLocationBody =>
      'ऑर्डर रेस्टॉरंटच्या सर्वात जवळच्या रायडरला जाते, आणि ग्राहक त्यांचे जेवण नकाशावर पाहतात.';

  @override
  String get permLocationNearTitle => 'तुमच्या जवळच्या ऑर्डर';

  @override
  String get permLocationNearBody =>
      'आम्ही तुम्हाला जवळच्या रेस्टॉरंटमधील ऑर्डर देतो, त्यामुळे कमी फिरावे लागते आणि कमाई जास्त होते.';

  @override
  String get permLocationTrackTitle => 'लाइव्ह ट्रॅकिंग';

  @override
  String get permLocationTrackBody =>
      'ग्राहक तुम्हाला नकाशावर पाहतात, त्यामुळे ते तुम्हाला कमी कॉल करतात.';

  @override
  String get permLocationOnlineTitle => 'फक्त तुम्ही ऑनलाइन असताना';

  @override
  String get permLocationOnlineBody =>
      'ऑफलाइन झाल्यावर ते थांबते. ते वापरात असताना नेहमी एक नोटिफिकेशन दिसते.';

  @override
  String get permLocationAllow => 'लोकेशनला परवानगी द्या';

  @override
  String get permNotifyTitle => 'एकही ऑर्डर चुकवू नका';

  @override
  String get permNotifyBody =>
      'स्क्रीन लॉक असतानाही नवीन ऑर्डर फोन कॉलसारख्या वाजतात.';

  @override
  String get permNotifyRingTitle => 'वाजणारे ऑर्डर अलर्ट';

  @override
  String get permNotifyRingBody => 'अलर्टमधूनच थेट स्वीकारा किंवा नाकारा.';

  @override
  String get permNotifyUpdatesTitle => 'पेआउट आणि मंजुरी';

  @override
  String get permNotifyUpdatesBody =>
      'तुमची कागदपत्रे कधी मंजूर झाली आणि पैसे कधी पाठवले ते कळेल.';

  @override
  String get permNotifyControlTitle => 'नियंत्रण तुमच्याच हातात';

  @override
  String get permNotifyControlBody =>
      'फोनच्या सेटिंग्जमध्ये तुम्ही हे कधीही बदलू शकता.';

  @override
  String get permNotifyAllow => 'नोटिफिकेशन चालू करा';

  @override
  String get permBatteryTitle => 'ऑर्डर येत राहू द्या';

  @override
  String get permBatteryBody =>
      'बॅटरी वाचवण्यासाठी फोन पार्श्वभूमीतील ॲप बंद करतात. तुम्ही ऑनलाइन असताना Nexmile Rider चालू राहू द्या.';

  @override
  String get permBatteryOrdersTitle => 'एकही ऑर्डर चुकणार नाही';

  @override
  String get permBatteryOrdersBody =>
      'ॲप बंद असताना आणि फोन खिशात असतानाही ऑर्डर तुमच्यापर्यंत पोहोचतात.';

  @override
  String get permBatteryLiveTitle => 'ट्रॅकिंग लाइव्ह राहते';

  @override
  String get permBatteryLiveBody =>
      'तुम्ही डिलिव्हरी करेपर्यंत ग्राहकांना तुम्ही नकाशावर दिसत राहता.';

  @override
  String get permBatteryLightTitle => 'कमी बॅटरी वापर';

  @override
  String get permBatteryLightBody =>
      'तुम्ही ऑनलाइन असतानाच ते जास्त बॅटरी वापरते.';

  @override
  String get permBatteryAllow => 'पार्श्वभूमीत चालू द्या';

  @override
  String get permFullScreenTitle => 'लॉक स्क्रीनवर ऑर्डर';

  @override
  String get permFullScreenBody =>
      'नवीन ऑर्डर इनकमिंग कॉलसारख्या लॉक स्क्रीनवर दिसू द्या, म्हणजे एका टॅपमध्ये स्वीकारता येतील.';

  @override
  String get permFullScreenCallTitle => 'कॉलसारखे उत्तर द्या';

  @override
  String get permFullScreenCallBody =>
      'फोन अनलॉक न करता ऑर्डर पहा आणि स्वीकारा.';

  @override
  String get permFullScreenTimeTitle => 'वेळेत उत्तर द्या';

  @override
  String get permFullScreenTimeBody =>
      'तुम्ही उत्तर न दिलेली ऑर्डर दुसऱ्या रायडरकडे जाते.';

  @override
  String get permFullScreenOnlyTitle => 'फक्त नवीन ऑर्डरसाठी';

  @override
  String get permFullScreenOnlyBody =>
      'तुमच्या लॉक स्क्रीनवर इतर काहीही कधीच दिसत नाही.';

  @override
  String get setupTitle => 'फोन सेटअप';

  @override
  String get setupIntro =>
      'ॲप बंद असताना किंवा फोन लॉक असतानाही नवीन ऑर्डर वाजाव्यात म्हणून हे पूर्ण करा.';

  @override
  String get setupNotifications => 'नोटिफिकेशन';

  @override
  String get setupNotificationsBody => 'म्हणजे नवीन ऑर्डर वाजतील आणि दिसतील.';

  @override
  String get setupFullScreen => 'फुल-स्क्रीन ऑर्डर अलर्ट';

  @override
  String get setupFullScreenBody =>
      'नवीन ऑर्डर कॉलसारखी तुमच्या लॉक स्क्रीनवर दाखवते.';

  @override
  String get setupBattery => 'बॅटरी: ऑप्टिमाइझ करू नका';

  @override
  String get setupBatteryBody => 'तुम्ही ऑनलाइन असताना फोन ॲप बंद करणार नाही.';

  @override
  String get setupAutostart => 'ऑटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फोनवर Nexmile Rider साठी ऑटोस्टार्टही चालू करावे लागते. सेटिंग्ज उघडा, ऑटोस्टार्ट शोधा आणि ते चालू करा.';
  }

  @override
  String get setupLocation => 'लोकेशन';

  @override
  String get setupLocationBody => 'जवळच्या ऑर्डर पाठवण्यासाठी आवश्यक.';

  @override
  String get setupAllow => 'परवानगी द्या';

  @override
  String get setupOpenSettings => 'सेटिंग्ज उघडा';

  @override
  String get setupMarkDone => 'मी हे केले';

  @override
  String get setupDoneStep => 'झाले';

  @override
  String get setupBannerTitle => 'फोन सेटअप पूर्ण करा';

  @override
  String setupBannerBody(String count) {
    return 'ऑर्डर अलर्ट चुकू नयेत म्हणून $count बाकी';
  }

  @override
  String get offerEstimatedEarnings => 'अंदाजे कमाई';

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
    return 'तुमच्यापासून सुमारे $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider मधून बाहेर पडायचे?';

  @override
  String get exitBody => 'तुम्हाला नक्की ॲपमधून बाहेर पडायचे आहे का?';

  @override
  String get exitConfirm => 'बाहेर पडा';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डिलिव्हरी पार्टनर बना';

  @override
  String get onboardingWelcomeSubtitle =>
      'तुमच्या परिसरात डिलिव्हरी करा, कामाचे तास तुम्हीच ठरवा, आणि दर आठवड्याला पैसे मिळवा.';

  @override
  String get onboardingWelcomeNeed => 'हे तयार ठेवा';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्रायव्हिंग लायसन्स आणि वाहनाचे RC';

  @override
  String get onboardingNeedInsurance => 'वाहन विमा';

  @override
  String get onboardingNeedBank => 'बँक खात्याचा तपशील';

  @override
  String get onboardingNeedNote =>
      'सायकलने किंवा पायी डिलिव्हरी करता? तुम्हाला फक्त आधार, PAN आणि बँक खाते लागेल.';

  @override
  String get onboardingWelcomeTime => 'सुमारे 10 मिनिटे लागतात';

  @override
  String get onboardingGetStarted => 'सुरू करा';

  @override
  String get onboardingSavedNote => 'प्रत्येक पायरीनंतर सुरक्षितपणे जतन होते';

  @override
  String get docsTip =>
      'चांगल्या प्रकाशातील स्पष्ट फोटो सर्वात लवकर मंजूर होतात.';

  @override
  String get docsAllDone =>
      'सर्व आवश्यक कागदपत्रे अपलोड झाली. तपासण्यासाठी पुढे चला.';

  @override
  String get docGroupIdentity => 'ओळखीचा पुरावा';

  @override
  String get docGroupVehicle => 'लायसन्स आणि वाहनाची कागदपत्रे';

  @override
  String get docGroupMore => 'इतर कागदपत्रे';

  @override
  String get docTapToAdd => 'जोडण्यासाठी टॅप करा';

  @override
  String get docUploading => 'अपलोड होत आहे…';

  @override
  String get docView => 'पहा';

  @override
  String get docSheetSubtitle => 'पहिल्याच वेळी मंजुरी मिळवण्यासाठी';

  @override
  String get docTipCorners => 'चारही कोपरे फोटोमध्ये दिसावेत';

  @override
  String get docTipGlare => 'अक्षरे स्पष्ट, चमक किंवा सावली नको';

  @override
  String get docTipOriginal => 'मूळ कागदपत्र, झेरॉक्स प्रत नको';

  @override
  String get docTipFace => 'तुमचा चेहरा स्पष्ट दिसावा, सरळ समोर पाहत';

  @override
  String get docTipBackground => 'साधी पार्श्वभूमी आणि चांगला प्रकाश';

  @override
  String get docTipNoCap => 'टोपी, मास्क किंवा गॉगल नको';

  @override
  String get docTipFullPage => 'पूर्ण पान, प्रत्येक ओळ वाचता येईल असे';

  @override
  String get docSourceCamera => 'कॅमेरा';

  @override
  String get docSourceGallery => 'गॅलरी';

  @override
  String get docSourceFile => 'PDF किंवा फाइल';

  @override
  String get reviewSectionDetails => 'तुमची माहिती';

  @override
  String get reviewSectionDocuments => 'कागदपत्रे';

  @override
  String get reviewSectionBank => 'बँक खाते';

  @override
  String get reviewBankHidden => 'जोडले · तुमच्या सुरक्षिततेसाठी लपवले';

  @override
  String get reviewEdit => 'संपादित करा';

  @override
  String get reviewNextTitle => 'पुढे काय होते';

  @override
  String get reviewNext1 => 'तुम्ही तुमचा अर्ज सबमिट करता';

  @override
  String get reviewNext2 => 'आमची टीम तुमची माहिती आणि कागदपत्रे तपासते';

  @override
  String get reviewNext3 =>
      'तुम्हाला कळवले जाते, मग ऑनलाइन व्हा आणि कमाई सुरू करा';

  @override
  String get kycStepSubmitted => 'अर्ज सबमिट झाला';

  @override
  String get kycStepVerifying => 'तुमच्या कागदपत्रांची पडताळणी सुरू आहे';

  @override
  String get kycStepApproved => 'मंजूर — ऑनलाइन व्हा आणि कमाई सुरू करा';
}
