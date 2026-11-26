// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'छिटो डेलिभरी। ताजा मुस्कान।';

  @override
  String get chooseLanguageTitle => 'आफ्नो भाषा छान्नुहोस्';

  @override
  String get chooseLanguageSubtitle =>
      'तपाईंलाई सहज लाग्ने भाषा छान्नुहोस्। तपाईं यसलाई जुनसुकै बेला सेटिङमा परिवर्तन गर्न सक्नुहुन्छ।';

  @override
  String get searchLanguageHint => 'भाषा खोज्नुहोस्';

  @override
  String get noLanguageFound => 'कुनै भाषा फेला परेन';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध छन्';
  }

  @override
  String get continueLabel => 'जारी राख्नुहोस्';

  @override
  String get selectedLabel => 'छानिएको';

  @override
  String get defaultLabel => 'पूर्वनिर्धारित';

  @override
  String get homeTitle => 'Nexmile मा स्वागत छ';

  @override
  String get homeSubtitle =>
      'ताजा किराना, तातो खाना र दैनिक आवश्यकताहरू तपाईंको नजिकैका पसलहरूबाट।';

  @override
  String get changeLanguage => 'भाषा परिवर्तन गर्नुहोस्';

  @override
  String get languageUpdated => 'भाषा परिवर्तन गरियो';

  @override
  String get appLanguageLabel => 'एपको भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile मा साइन इन गर्नुहोस्';

  @override
  String get loginSubtitle =>
      'आफ्नो इमेल वा मोबाइल नम्बर लेख्नुहोस्, हामी प्रमाणीकरण कोड पठाउनेछौं।';

  @override
  String get emailOrPhoneLabel => 'इमेल वा मोबाइल नम्बर';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही इमेल ठेगाना वा 10 अंकको मोबाइल नम्बर लेख्नुहोस्';

  @override
  String get loginHeadline =>
      'Nexmile सँग डेलिभरी गर्नुहोस्। आफ्नै समयमा कमाउनुहोस्।';

  @override
  String get loginOrSignUp => 'लग इन वा साइन अप गर्नुहोस्';

  @override
  String get loginEmailHint => 'आफ्नो इमेल ठेगाना लेख्नुहोस्';

  @override
  String get invalidEmail => 'सही इमेल ठेगाना लेख्नुहोस्';

  @override
  String get loginHeroBadge => 'डेलिभरी पार्टनर';

  @override
  String get sendCode => 'कोड पठाउनुहोस्';

  @override
  String get agreeToTermsOnContinue =>
      'अगाडि बढेर तपाईं हाम्रा सेवाका सर्तहरू र गोपनीयता नीतिमा सहमत हुनुहुन्छ।';

  @override
  String get otpTitle => 'यो तपाईं नै हो भनी प्रमाणित गर्नुहोस्';

  @override
  String otpSubtitle(String target) {
    return '$target मा पठाइएको 6 अंकको कोड लेख्नुहोस्';
  }

  @override
  String get otpHelpTitle => 'कोड आएन?';

  @override
  String get otpHelpCheck =>
      'माथिको नम्बर वा इमेल जाँच गर्नुहोस्। बदल्न पछाडि थिच्नुहोस्।';

  @override
  String get otpHelpWait =>
      'कोड आउन एक मिनेटसम्म लाग्न सक्छ। टाइमर सकिएपछि तपाईं नयाँ कोड माग्न सक्नुहुन्छ।';

  @override
  String get otpHelpSpam => 'इमेलमा पठाइएको भए स्प्याम फोल्डर पनि हेर्नुहोस्।';

  @override
  String get verifyCode => 'प्रमाणित गर्नुहोस्';

  @override
  String get resendCode => 'कोड पुनः पठाउनुहोस्';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकेन्डमा पुनः पठाउनुहोस्';
  }

  @override
  String get codeResent => 'नयाँ कोड पठाइएको छ';

  @override
  String get incorrectCode =>
      'यो कोड गलत छ वा म्याद सकिएको छ। नयाँ कोड मगाउनुहोस्।';

  @override
  String get enterFullCode => 'पूरै 6 अंक लेख्नुहोस्';

  @override
  String get accountSuspended =>
      'यो खाता निलम्बन गरिएको छ। कृपया सहयोग टोलीलाई सम्पर्क गर्नुहोस्।';

  @override
  String get tooManyAttempts =>
      'धेरै पटक प्रयास भयो। कृपया केही बेरपछि पुनः प्रयास गर्नुहोस्।';

  @override
  String get sessionExpired =>
      'तपाईंको सत्र समाप्त भयो। कृपया पुनः साइन इन गर्नुहोस्।';

  @override
  String get networkError =>
      'इन्टरनेट जडान छैन। जडान जाँच गरेर पुनः प्रयास गर्नुहोस्।';

  @override
  String get developmentCode => 'डेभलपमेन्ट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तपाईं साइन आउट हुनुभयो';

  @override
  String get somethingWentWrong =>
      'केही गडबड भयो। कृपया पुनः प्रयास गर्नुहोस्।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get profileSectionDetails => 'तपाईंको विवरण';

  @override
  String get profileSectionWork => 'काम';

  @override
  String get profileSectionApp => 'एप सेटिङ';

  @override
  String get viewProfile => 'प्रोफाइल हेर्नुहोस्';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'इमेल';

  @override
  String get mobileLabel => 'मोबाइल नम्बर';

  @override
  String get accountStatusLabel => 'खाताको अवस्था';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'विचाराधीन';

  @override
  String get statusSuspended => 'निलम्बित';

  @override
  String get verifiedLabel => 'प्रमाणित';

  @override
  String get notProvided => 'थपिएको छैन';

  @override
  String get retry => 'पुनः प्रयास गर्नुहोस्';

  @override
  String get loginRiderNote => 'यो एप Nexmile का डेलिभरी पार्टनरहरूका लागि हो।';

  @override
  String get checkingYourAccount => 'तपाईंको खाता जाँच हुँदैछ';

  @override
  String get couldNotLoadAccount =>
      'तपाईंको खाता खोल्न सकिएन। जडान जाँच गरेर पुनः प्रयास गर्नुहोस्।';

  @override
  String get notARiderAccountTitle => 'यो डेलिभरी पार्टनर खाता होइन';

  @override
  String get notARiderAccount =>
      'यो इमेल वा मोबाइल नम्बर Nexmile को अर्को खातामा पहिल्यै दर्ता भइसकेको छ। डेलिभरी पार्टनरका रूपमा जोडिन साइन आउट गरेर अर्कै इमेल वा नम्बर प्रयोग गर्नुहोस्।';

  @override
  String notARiderAccountFor(String role) {
    return 'यो इमेल वा मोबाइल नम्बर Nexmile मा $role का रूपमा पहिल्यै दर्ता भइसकेको छ। डेलिभरी पार्टनरका रूपमा जोडिन साइन आउट गरेर अर्कै इमेल वा नम्बर प्रयोग गर्नुहोस्।';
  }

  @override
  String get roleCustomer => 'ग्राहक';

  @override
  String get roleMerchant => 'व्यापारी';

  @override
  String get roleAdmin => 'प्रशासक';

  @override
  String get useAnotherAccount => 'अर्को खाता प्रयोग गर्नुहोस्';

  @override
  String get onboardingTitle => 'Nexmile पार्टनर बन्नुहोस्';

  @override
  String get onboardingSubtitle =>
      'केही विवरण र आफ्ना कागजात दिनुहोस्, त्यसपछि हाम्रो टोलीले तपाईंलाई प्रमाणित गर्छ। यसमा प्रायः दुई कार्यदिनसम्म लाग्छ।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total मध्ये चरण $current';
  }

  @override
  String get stepIdentityTitle => 'तपाईंको बारेमा';

  @override
  String get stepIdentitySubtitle =>
      'आफ्नो नाम आधार कार्डमा जस्तो छ, ठ्याक्कै त्यस्तै लेख्नुहोस्।';

  @override
  String get stepVehicleTitle => 'तपाईंको सवारी';

  @override
  String get stepVehicleSubtitle =>
      'तपाईं के चलाउनुहुन्छ र त्यसको नम्बर प्लेट के हो, बताउनुहोस्।';

  @override
  String get stepIdentityNumbersTitle => 'परिचय नम्बरहरू';

  @override
  String get stepIdentityNumbersSubtitle =>
      'यी नम्बर तपाईंले पछि अपलोड गर्ने कागजातसँग मिल्नुपर्छ।';

  @override
  String get stepLicenceTitle => 'लाइसेन्स र बीमा';

  @override
  String get stepLicenceSubtitle =>
      'डेलिभरी सुरु गर्ने दिन दुवै मान्य हुनुपर्छ।';

  @override
  String get stepBankTitle => 'भुक्तानी पाउने खाता';

  @override
  String get stepBankSubtitle =>
      'तपाईंको कमाइ यही खातामा पठाइन्छ। ध्यान दिएर जाँच गर्नुहोस्।';

  @override
  String get stepDocumentsTitle => 'तपाईंका कागजात';

  @override
  String get stepDocumentsSubtitle =>
      'हरेक कागजातको फोटो राम्रो उज्यालोमा खिच्नुहोस्। JPG, PNG वा PDF, प्रत्येक बढीमा 5 MB।';

  @override
  String get stepReviewTitle => 'जाँच गरेर पेस गर्नुहोस्';

  @override
  String get stepReviewSubtitle =>
      'पेस गरेपछि हाम्रो टोलीले जाँच नगरेसम्म तपाईंको विवरण लक हुन्छ।';

  @override
  String get saveAndContinue => 'सुरक्षित गरेर जारी राख्नुहोस्';

  @override
  String get backLabel => 'पछाडि';

  @override
  String get fullNameLabel => 'पूरा नाम';

  @override
  String get fullNameHint => 'आधारमा लेखिएजस्तै';

  @override
  String get dateOfBirthLabel => 'जन्म मिति';

  @override
  String get selectDate => 'मिति छान्नुहोस्';

  @override
  String get vehicleTypeLabel => 'सवारीको प्रकार';

  @override
  String get vehicleMotorcycle => 'मोटरसाइकल';

  @override
  String get vehicleScooter => 'स्कुटर';

  @override
  String get vehicleEv => 'इलेक्ट्रिक सवारी';

  @override
  String get vehicleBicycle => 'साइकल';

  @override
  String get vehicleWalk => 'पैदल';

  @override
  String get vehicleNoPapersNote =>
      'सवारी नम्बर वा RC चाहिँदैन। तपाईंसँग आधार र PAN मात्र मागिनेछ।';

  @override
  String get vehicleNumberLabel => 'सवारी नम्बर';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC नम्बर';

  @override
  String get aadhaarLabel => 'आधार नम्बर';

  @override
  String get aadhaarHint => '12 अंक';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्राइभिङ लाइसेन्स नम्बर';

  @override
  String get drivingLicenceExpiryLabel => 'लाइसेन्सको म्याद सकिने मिति';

  @override
  String get insuranceNumberLabel => 'बीमा पोलिसी नम्बर';

  @override
  String get insuranceExpiryLabel => 'बीमाको म्याद सकिने मिति';

  @override
  String get bankAccountNameLabel => 'खातावालाको नाम';

  @override
  String get bankAccountNumberLabel => 'खाता नम्बर';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total मध्ये $done अपलोड भयो';
  }

  @override
  String get uploadDocument => 'अपलोड गर्नुहोस्';

  @override
  String get replaceDocument => 'बदल्नुहोस्';

  @override
  String get removeDocument => 'हटाउनुहोस्';

  @override
  String get takePhoto => 'फोटो खिच्नुहोस्';

  @override
  String get chooseFromGallery => 'ग्यालरीबाट छान्नुहोस्';

  @override
  String get chooseFile => 'फाइल छान्नुहोस्';

  @override
  String get uploadingLabel => 'अपलोड हुँदैछ';

  @override
  String get documentRejected => 'अस्वीकृत';

  @override
  String get documentUploaded => 'अपलोड भयो';

  @override
  String get documentApproved => 'स्वीकृत';

  @override
  String get documentRequired => 'अनिवार्य';

  @override
  String get documentOptional => 'वैकल्पिक';

  @override
  String get fileTooLarge =>
      'यो फाइल 5 MB भन्दा ठूलो छ। स्क्यानको सट्टा फोटो प्रयोग गर्नुहोस्।';

  @override
  String get unsupportedFileType => 'JPG, PNG वा PDF छान्नुहोस्।';

  @override
  String get pickerUnavailable =>
      'त्यो खोल्न सकिएन। एपलाई क्यामेरा र फोटोको अनुमति छ कि छैन, जाँच गर्नुहोस्।';

  @override
  String get uploadFailed => 'अपलोड हुन सकेन। कृपया पुनः प्रयास गर्नुहोस्।';

  @override
  String get submitForVerification => 'प्रमाणीकरणका लागि पेस गर्नुहोस्';

  @override
  String get submitConfirmTitle => 'प्रमाणीकरणका लागि पेस गर्ने?';

  @override
  String get submitConfirmBody =>
      'हाम्रो टोलीले जाँच गरुन्जेल तपाईंको विवरण र कागजात लक हुनेछन्। निर्णय नआएसम्म तपाईं तिनलाई बदल्न सक्नुहुन्न।';

  @override
  String get cancelLabel => 'रद्द गर्नुहोस्';

  @override
  String get completeEverythingBeforeSubmitting =>
      'पेस गर्नुअघि सबै चरण पूरा गर्नुहोस् र सबै कागजात अपलोड गर्नुहोस्।';

  @override
  String get checkTheHighlightedFields =>
      'हाइलाइट गरिएका फिल्ड जाँच गरेर पुनः प्रयास गर्नुहोस्।';

  @override
  String get underReviewTitle => 'हामी तपाईंका कागजात प्रमाणित गर्दैछौं';

  @override
  String get underReviewBody =>
      'हाम्रो टोलीले प्रायः दुई कार्यदिनभित्र जाँच गर्छ। तपाईं स्वीकृत हुनेबित्तिकै हामी जानकारी दिनेछौं।';

  @override
  String get checkAgain => 'फेरि जाँच गर्नुहोस्';

  @override
  String get stillUnderReview => 'अझै जाँच हुँदैछ';

  @override
  String get rejectedTitle => 'हामीले तपाईंलाई प्रमाणित गर्न सकेनौं';

  @override
  String get rejectedBody =>
      'तल हाम्रो टोलीले उल्लेख गरेका कुरा सच्याउनुहोस्, अनि कागजात फेरि पठाउनुहोस्।';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'सच्याएर फेरि पेस गर्नुहोस्';

  @override
  String get blockedTitle => 'तपाईं अझै अनलाइन हुन सक्नुहुन्न';

  @override
  String get documentsExpiredMessage =>
      'तपाईंको लाइसेन्स वा बीमाको म्याद सकिएको छ। अनलाइन हुन मान्य कागजात अपलोड गर्नुहोस्।';

  @override
  String get awaitingVerificationMessage =>
      'तपाईंका कागजात अझै प्रमाणित हुँदैछन्।';

  @override
  String get updateDocuments => 'कागजात अपडेट गर्नुहोस्';

  @override
  String get riderHomeTitle => 'डेलिभरीका लागि तयार';

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
      'अनलाइन हुनुहोस्, हामी तपाईंलाई नजिकैका डेलिभरी पठाउनेछौं।';

  @override
  String get dutyStatusLabel => 'ड्युटीको अवस्था';

  @override
  String get dutyOnline => 'अनलाइन';

  @override
  String get dutyOffline => 'अफलाइन';

  @override
  String get dutyOnBreak => 'विश्राममा';

  @override
  String get goOnline => 'अनलाइन हुनुहोस्';

  @override
  String get goOffline => 'अफलाइन हुनुहोस्';

  @override
  String get takeABreak => 'विश्राम लिनुहोस्';

  @override
  String get waitingForOrders => 'नजिकैका अर्डर पर्खिँदै';

  @override
  String get youAreOffline =>
      'तपाईं अफलाइन हुनुहुन्छ। तपाईंलाई कुनै डेलिभरी पठाइने छैन।';

  @override
  String get completedDeliveriesLabel => 'पूरा भएका डेलिभरी';

  @override
  String get ratingLabel => 'रेटिङ';

  @override
  String get notRatedYet => 'अहिलेसम्म रेटिङ छैन';

  @override
  String get vehicleLabel => 'सवारी';

  @override
  String get kycStatusLabel => 'प्रमाणीकरण';

  @override
  String get kycPending => 'पेस गरिएको छैन';

  @override
  String get kycSubmitted => 'जाँच हुँदैछ';

  @override
  String get kycVerified => 'स्वीकृत';

  @override
  String get kycRejected => 'अस्वीकृत';

  @override
  String get fieldRequired => 'यो फिल्ड आवश्यक छ';

  @override
  String get invalidAadhaar => 'आफ्नो आधार नम्बरका 12 अंक लेख्नुहोस्';

  @override
  String get invalidPan => 'सही PAN लेख्नुहोस्, जस्तै ABCDE1234F';

  @override
  String get invalidIfsc => 'सही IFSC कोड लेख्नुहोस्, जस्तै SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'नम्बर प्लेटमा जस्तो छ, ठ्याक्कै त्यस्तै नम्बर लेख्नुहोस्';

  @override
  String get invalidAccountNumber => 'सही खाता नम्बर लेख्नुहोस्';

  @override
  String get dateMustBeFuture => 'यो मिति बितिसकेको छ';

  @override
  String get mustBeEighteen => 'डेलिभरी गर्न तपाईं कम्तीमा 18 वर्षको हुनुपर्छ';

  @override
  String get docAadhaarFront => 'आधार कार्ड (अगाडि)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (पछाडि)';

  @override
  String get docDrivingLicence => 'ड्राइभिङ लाइसेन्स';

  @override
  String get docVehicleRc => 'सवारी दर्ता प्रमाणपत्र';

  @override
  String get docInsurance => 'सवारी बीमा';

  @override
  String get docProfilePhoto => 'प्रोफाइल फोटो';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'रद्द गरिएको चेक वा बैंक स्टेटमेन्ट';

  @override
  String get ordersTab => 'अर्डर';

  @override
  String get deliveryTab => 'डेलिभरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'तपाईंको नजिकैका अर्डर';

  @override
  String get orderBoardSubtitle =>
      'सबैभन्दा नजिकको रेस्टुरेन्ट पहिले। सूची आफैँ अपडेट हुन्छ।';

  @override
  String orderNumberLabel(String number) {
    return 'अर्डर $number';
  }

  @override
  String get pickupLabel => 'पिकअप';

  @override
  String get dropoffLabel => 'डेलिभरी ठेगाना';

  @override
  String distanceMetres(String metres) {
    return '$metres मिटर';
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
      other: '$count वस्तु',
      one: '1 वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'तपाईंको कमाइ';

  @override
  String get collectCashLabel => 'नगद लिनुहोस्';

  @override
  String get prepaidLabel => 'अनलाइन तिरिसकेको';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहकबाट $amount नगद लिनुहोस्';
  }

  @override
  String get nothingToCollect => 'भुक्तानी भइसकेको छ। पैसा नमाग्नुहोस्।';

  @override
  String get acceptOrder => 'स्वीकार गर्नुहोस्';

  @override
  String get viewOrder => 'हेर्नुहोस्';

  @override
  String get orderAccepted => 'अर्डर स्वीकार भयो। रेस्टुरेन्टतिर जानुहोस्।';

  @override
  String get orderAlreadyTaken =>
      'यो अर्डर अर्को राइडरले लिइसके। नयाँ सूची यहाँ छ।';

  @override
  String get orderNoLongerYours => 'यो अर्डर अब तपाईंको होइन।';

  @override
  String get boardEmptyTitle => 'अहिले कुनै अर्डर छैन';

  @override
  String get boardEmptyBody =>
      'अनलाइन रहनुहोस्। रेस्टुरेन्टमा अर्डर बढ्दै जाँदा सूची आफैँ अपडेट हुन्छ।';

  @override
  String get boardOfflineTitle => 'तपाईं अफलाइन हुनुहुन्छ';

  @override
  String get boardOfflineBody => 'अर्डर पाउन अनलाइन हुनुहोस्।';

  @override
  String get boardBusyTitle => 'पहिले आफ्नो डेलिभरी पूरा गर्नुहोस्';

  @override
  String get boardBusyBody =>
      'यो अर्डर डेलिभर भएपछि तपाईं अर्को अर्डर लिन सक्नुहुन्छ।';

  @override
  String get boardNoLocationTitle => 'तपाईंको स्थान थाहा भएन';

  @override
  String get boardNoLocationBody =>
      'रेस्टुरेन्ट कति नजिक छ भनेर अर्डर मिलाइन्छ, त्यसैले केही देखाउन हामीलाई तपाईंको स्थान चाहिन्छ।';

  @override
  String get boardNotVerifiedTitle => 'डेलिभरीका लागि अझै स्वीकृत हुनुभएको छैन';

  @override
  String get activeDeliveryTitle => 'तपाईंको डेलिभरी';

  @override
  String get headToRestaurant => 'रेस्टुरेन्टतिर जानुहोस्';

  @override
  String get deliverToCustomer => 'ग्राहकलाई डेलिभर गर्नुहोस्';

  @override
  String get noActiveDeliveryTitle => 'हातमा कुनै अर्डर छैन';

  @override
  String get noActiveDeliveryBody =>
      'सूचीबाट अर्डर स्वीकार गर्नुहोस्, त्यो यहाँ देखिनेछ।';

  @override
  String get confirmPickupButton => 'मैले उठाइसकेँ';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle =>
      'रेस्टुरेन्टसँग कोड माग्नुहोस् र यहाँ लेख्नुहोस्।';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode => 'कोड मिलेन। रेस्टुरेन्टसँग जाँच गर्नुहोस्।';

  @override
  String get pickupConfirmed => 'उठाइयो। अब ग्राहकलाई डेलिभर गर्नुहोस्।';

  @override
  String get confirmDeliveryButton => 'डेलिभर भयो';

  @override
  String get stepReachRestaurant => 'रेस्टुरेन्ट पुग्ने';

  @override
  String get stepPickUp => 'खाना उठाउने';

  @override
  String get stepReachCustomer => 'ग्राहककहाँ पुग्ने';

  @override
  String get stepDeliver => 'डेलिभर गर्ने';

  @override
  String get swipePickUp => 'उठाएपछि स्वाइप गर्नुहोस्';

  @override
  String get swipeDeliver => 'डेलिभर गर्न स्वाइप गर्नुहोस्';

  @override
  String get cashToCollectLabel => 'लिनुपर्ने नगद';

  @override
  String get confirmDeliveryTitle => 'डेलिभरी पुष्टि गर्नुहोस्';

  @override
  String get confirmDeliveryBody =>
      'ग्राहकको हातमा अर्डर पुगेपछि मात्र पुष्टि गर्नुहोस्।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'पहिले $amount नगद लिनुहोस्, अनि पुष्टि गर्नुहोस्।';
  }

  @override
  String get deliveryConfirmed =>
      'डेलिभर भयो। धन्यवाद, तपाईं फेरि अनलाइन हुनुहुन्छ।';

  @override
  String get releaseOrderButton => 'फिर्ता गर्नुहोस्';

  @override
  String get releaseOrderTitle => 'यो अर्डर फिर्ता गर्ने?';

  @override
  String get releaseOrderBody =>
      'यो अर्को राइडरका लागि सूचीमा फर्कन्छ। खाना उठाउनुअघि मात्र यसो गर्न सकिन्छ।';

  @override
  String get releaseReasonHint => 'कारण (वैकल्पिक)';

  @override
  String get orderReleased =>
      'फिर्ता गरियो। यो अर्डर अब फेरि अरू राइडरका लागि उपलब्ध छ।';

  @override
  String get finishCurrentOrderFirst =>
      'पहिले हालको अर्डर पूरा गर्नुहोस् वा फिर्ता गर्नुहोस्।';

  @override
  String get callRestaurant => 'रेस्टुरेन्टलाई कल गर्नुहोस्';

  @override
  String get callCustomer => 'ग्राहकलाई कल गर्नुहोस्';

  @override
  String get openInMaps => 'बाटो हेर्नुहोस्';

  @override
  String get customerNoteLabel => 'ग्राहकको नोट';

  @override
  String get orderItemsLabel => 'झोलामा के छ';

  @override
  String get orderDetailsTitle => 'अर्डर विवरण';

  @override
  String get historyTitle => 'पुराना डेलिभरी';

  @override
  String get historyEmptyTitle => 'अहिलेसम्म कुनै डेलिभरी छैन';

  @override
  String get historyEmptyBody => 'तपाईंले पूरा गरेका अर्डर यहाँ देखिनेछन्।';

  @override
  String get historySearchHint => 'अर्डर वा रेस्टुरेन्ट खोज्नुहोस्';

  @override
  String get historyToday => 'आज';

  @override
  String get historyYesterday => 'हिजो';

  @override
  String get historyEarlier => 'पहिलेका';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डेलिभरी',
      one: '1 डेलिभरी',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” सँग मिल्ने केही छैन।';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount नगद लिइयो';
  }

  @override
  String get orderDelivered => 'डेलिभर भयो';

  @override
  String get orderCancelled => 'रद्द भयो';

  @override
  String get orderPreparing => 'तयार हुँदैछ';

  @override
  String get orderReadyForPickup => 'उठाउन तयार';

  @override
  String get orderAssigned => 'तपाईंलाई तोकिएको';

  @override
  String get orderPickedUp => 'उठाइयो';

  @override
  String get orderOutForDelivery => 'बाटोमा छ';

  @override
  String get trackingOn => 'स्थान सेयर चालु छ';

  @override
  String get locationUnavailableMessage =>
      'तपाईंको स्थान पत्ता लाग्न सकेन। स्थान चालु गर्नुहोस् र Nexmile Rider लाई अनुमति दिनुहोस्।';

  @override
  String get locationPermissionTitle => 'स्थान चाहिन्छ';

  @override
  String get locationPermissionBody =>
      'तपाईं कति नजिक हुनुहुन्छ भनेर अर्डर मिलाइन्छ, र ग्राहकले तपाईंलाई नक्सामा हेर्छन्। अनलाइन हुन स्थानको अनुमति दिनुहोस्।';

  @override
  String get locationSettingsButton => 'सेटिङ खोल्नुहोस्';

  @override
  String get enableLocationButton => 'स्थानको अनुमति दिनुहोस्';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'सिफ्ट';

  @override
  String get payoutsTitle => 'भुक्तानी';

  @override
  String get payoutsEntryValue => 'साप्ताहिक कमाइ';

  @override
  String get payoutDetailsTitle => 'साप्ताहिक भुक्तानी';

  @override
  String get payoutsEmptyTitle => 'अहिलेसम्म कुनै भुक्तानी छैन';

  @override
  String get payoutsEmptyBody =>
      'हरेक हप्ताको हिसाब भएपछि त्यो हप्ताको कमाइ यहाँ देखिनेछ।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'पठाउन बाँकी';

  @override
  String get payoutStatusProcessing => 'प्रक्रियामा छ';

  @override
  String get payoutStatusPaid => 'भुक्तानी भयो';

  @override
  String get payoutNotSentNote =>
      'यो हप्ताको तपाईंको कमाइको हिसाब भइसकेको छ। पैसा अझै तपाईंको बैंकमा पठाइएको छैन।';

  @override
  String payoutPaidOn(String date) {
    return '$date मा तपाईंको बैंकमा पठाइयो';
  }

  @override
  String get payoutPaidNote => 'यो हप्ताको रकम बैंकमा ट्रान्सफर भइसकेको छ।';

  @override
  String get payoutReferenceLabel => 'ट्रान्सफर सन्दर्भ';

  @override
  String get payoutNetLabel => 'पाउनुपर्ने रकम';

  @override
  String get payoutDeliveryEarnings => 'डेलिभरीबाट कमाइ';

  @override
  String get payoutReferralEarnings => 'रेफरलबाट कमाइ';

  @override
  String get payoutCarriedIn => 'अघिल्लो हप्ताबाट';

  @override
  String get payoutCarriedInNote =>
      '₹100 भन्दा कम रकम छुट्टै ट्रान्सफर गरिँदैन। बरु त्यो अर्को हप्तामा जोडिन्छ।';

  @override
  String get payoutGross => 'जम्मा कमाइ';

  @override
  String get payoutDeductions => 'कटौती';

  @override
  String get payoutsLatestWeek => 'पछिल्लो हप्ता';

  @override
  String get payoutsPaidSoFar => 'अहिलेसम्म भुक्तानी भएको';

  @override
  String get payoutsNotYetSent => 'अझै पठाइएको छैन';

  @override
  String get payoutStepWorkedOut => 'हिसाब भयो';

  @override
  String get payoutStepSending => 'पठाइँदैछ';

  @override
  String get payoutStepInBank => 'तपाईंको बैंकमा';

  @override
  String get navToRestaurant => 'रेस्टुरेन्टतिर';

  @override
  String get navToCustomer => 'ग्राहकतिर';

  @override
  String navHeadTowards(String place) {
    return '$place तिर जानुहोस्';
  }

  @override
  String navThen(String instruction) {
    return 'त्यसपछि: $instruction';
  }

  @override
  String get navArrived => 'तपाईं आइपुग्नुभयो';

  @override
  String navArrivedAt(String place) {
    return '$place मा';
  }

  @override
  String get navFindingRoute => 'सबैभन्दा राम्रो बाटो खोज्दै…';

  @override
  String get navNoRoute => 'सडकको बाटो उपलब्ध छैन। सीधा रेखाको दूरी देखाइँदैछ।';

  @override
  String get navFindingLocation => 'तपाईंको स्थान खोज्दै…';

  @override
  String get navLocationOff => 'बाटो देखाउन स्थान चालु गर्नुहोस्।';

  @override
  String get navEnd => 'नेभिगेसन बन्द गर्नुहोस्';

  @override
  String get navRecentre => 'केन्द्रित गर्नुहोस्';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनेट';
  }

  @override
  String get navStart => 'नेभिगेट गर्नुहोस्';

  @override
  String get orderReachedRestaurant => 'रेस्टुरेन्टमा पुगेको';

  @override
  String get orderReachedCustomer => 'ग्राहककहाँ पुगेको';

  @override
  String get reachedRestaurantButton => 'म रेस्टुरेन्ट पुगेँ';

  @override
  String get reachedCustomerButton => 'म ग्राहककहाँ पुगेँ';

  @override
  String get reachedRestaurantDone => 'तपाईं आइपुगेको भान्सालाई थाहा भयो';

  @override
  String get reachedCustomerDone => 'तपाईं बाहिर आइपुगेको ग्राहकलाई थाहा भयो';

  @override
  String get offerTitle => 'नयाँ अर्डर';

  @override
  String get offerYouEarn => 'तपाईंको कमाइ';

  @override
  String get offerPickup => 'पिकअप';

  @override
  String get offerDrop => 'ड्रप';

  @override
  String offerAway(String distance) {
    return '$distance टाढा';
  }

  @override
  String offerTrip(String distance) {
    return '$distance को यात्रा';
  }

  @override
  String offerItems(String count) {
    return '$count वस्तु';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount नगद लिनुहोस्';
  }

  @override
  String get offerPrepaid => 'पहिल्यै तिरिएको · नगद छैन';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'लगभग $minutes मिनेटमा खाना तयार';
  }

  @override
  String get offerSwipeToAccept => 'स्वीकार गर्न स्वाइप गर्नुहोस्';

  @override
  String get offerAccepting => 'स्वीकार गर्दै…';

  @override
  String get offerReject => 'अस्वीकार गर्नुहोस्';

  @override
  String get offerRejectTitle => 'किन अस्वीकार गर्दै हुनुहुन्छ?';

  @override
  String get offerReasonTooFar => 'धेरै टाढा';

  @override
  String get offerReasonBusy => 'अहिले व्यस्त छु';

  @override
  String get offerReasonVehicle => 'सवारीमा समस्या';

  @override
  String get offerReasonOther => 'अर्को कारण';

  @override
  String get offerTaken => 'अर्को राइडरले अर्डर लिइसके';

  @override
  String get offerAutoOffline =>
      '3 वटा अर्डर छुटेपछि तपाईंलाई अफलाइन गरियो। तयार भएपछि अनलाइन हुनुहोस्।';

  @override
  String get mockLocationBlocked =>
      'अर्डर पाउन नक्कली स्थान देखाउने एप बन्द गर्नुहोस्।';

  @override
  String get dropoffDoorLabel => 'फ्ल्याट / तल्ला';

  @override
  String get dropoffStreetLabel => 'सडक';

  @override
  String get dropoffLandmarkLabel => 'चिनारी';

  @override
  String get doorPhotoLabel => 'ढोकाको फोटो';

  @override
  String get doorPhotoHint => 'ठूलो हेर्न थिच्नुहोस्';

  @override
  String get doorPhotoUnavailable => 'फोटो अहिले उपलब्ध छैन';

  @override
  String permStepCount(int step, int total) {
    return '$total मध्ये $step';
  }

  @override
  String get permNotNow => 'अहिले होइन';

  @override
  String get permLocationTitle => 'स्थान चालु गर्नुहोस्';

  @override
  String get permLocationBody =>
      'अर्डर रेस्टुरेन्टको सबैभन्दा नजिकको राइडरलाई जान्छ, र ग्राहकले आफ्नो खाना नक्सामा हेर्छन्।';

  @override
  String get permLocationNearTitle => 'तपाईंको नजिकैका अर्डर';

  @override
  String get permLocationNearBody =>
      'हामी तपाईंलाई नजिकैका रेस्टुरेन्टका अर्डर दिन्छौं, त्यसैले कम कुदेर बढी कमाउनुहुन्छ।';

  @override
  String get permLocationTrackTitle => 'लाइभ ट्र्याकिङ';

  @override
  String get permLocationTrackBody =>
      'ग्राहकले तपाईंलाई नक्सामा देख्छन्, त्यसैले कम फोन गर्छन्।';

  @override
  String get permLocationOnlineTitle => 'अनलाइन हुँदा मात्र';

  @override
  String get permLocationOnlineBody =>
      'अफलाइन हुनासाथ यो रोकिन्छ। प्रयोगमा हुँदा सधैं एउटा सूचना देखिन्छ।';

  @override
  String get permLocationAllow => 'स्थानको अनुमति दिनुहोस्';

  @override
  String get permNotifyTitle => 'कुनै अर्डर नछुटाउनुहोस्';

  @override
  String get permNotifyBody =>
      'स्क्रिन लक भएको बेला पनि नयाँ अर्डर फोन कलजस्तै बज्छ।';

  @override
  String get permNotifyRingTitle => 'घण्टी बज्ने अर्डर सूचना';

  @override
  String get permNotifyRingBody => 'सूचनाबाटै स्वीकार वा अस्वीकार गर्नुहोस्।';

  @override
  String get permNotifyUpdatesTitle => 'भुक्तानी र स्वीकृति';

  @override
  String get permNotifyUpdatesBody =>
      'कागजात स्वीकृत हुँदा र पैसा पठाइँदा थाहा पाउनुहोस्।';

  @override
  String get permNotifyControlTitle => 'नियन्त्रण तपाईंकै हातमा';

  @override
  String get permNotifyControlBody =>
      'फोनको सेटिङमा गएर जुनसुकै बेला बदल्न सक्नुहुन्छ।';

  @override
  String get permNotifyAllow => 'सूचना चालु गर्नुहोस्';

  @override
  String get permBatteryTitle => 'अर्डर आइरहन दिनुहोस्';

  @override
  String get permBatteryBody =>
      'ब्याट्री बचाउन फोनले पृष्ठभूमिमा एपहरू बन्द गर्छ। अनलाइन हुँदा Nexmile Rider लाई चलिरहन दिनुहोस्।';

  @override
  String get permBatteryOrdersTitle => 'कुनै अर्डर छुट्दैन';

  @override
  String get permBatteryOrdersBody =>
      'एप बन्द र फोन खल्तीमा भए पनि अर्डर तपाईंसम्म आइपुग्छ।';

  @override
  String get permBatteryLiveTitle => 'ट्र्याकिङ लाइभ रहन्छ';

  @override
  String get permBatteryLiveBody =>
      'तपाईंले डेलिभर नगरेसम्म ग्राहकले तपाईंलाई नक्सामा देखिरहन्छन्।';

  @override
  String get permBatteryLightTitle => 'ब्याट्री कम खर्च';

  @override
  String get permBatteryLightBody =>
      'तपाईं अनलाइन हुँदा मात्र यसले बढी काम गर्छ।';

  @override
  String get permBatteryAllow => 'पृष्ठभूमिमा चल्न अनुमति दिनुहोस्';

  @override
  String get permFullScreenTitle => 'लक स्क्रिनमा अर्डर';

  @override
  String get permFullScreenBody =>
      'आउने कलजस्तै नयाँ अर्डर लक स्क्रिनमाथि देखिन दिनुहोस्, ताकि एकै थिचाइमा स्वीकार गर्न सक्नुहोस्।';

  @override
  String get permFullScreenCallTitle => 'कलजस्तै उठाउनुहोस्';

  @override
  String get permFullScreenCallBody =>
      'फोन अनलक नगरी अर्डर हेर्नुहोस् र स्वीकार गर्नुहोस्।';

  @override
  String get permFullScreenTimeTitle => 'समयमै जवाफ दिनुहोस्';

  @override
  String get permFullScreenTimeBody =>
      'तपाईंले जवाफ नदिएको अर्डर अर्को राइडरलाई जान्छ।';

  @override
  String get permFullScreenOnlyTitle => 'नयाँ अर्डरका लागि मात्र';

  @override
  String get permFullScreenOnlyBody =>
      'तपाईंको लक स्क्रिनमाथि अरू केही कहिल्यै देखिँदैन।';

  @override
  String get setupTitle => 'फोन सेटअप';

  @override
  String get setupIntro =>
      'एप बन्द वा फोन लक भएको बेला पनि नयाँ अर्डर बजोस् भनेर यी पूरा गर्नुहोस्।';

  @override
  String get setupNotifications => 'सूचना';

  @override
  String get setupNotificationsBody => 'नयाँ अर्डर बज्न र देखिन सकोस् भनेर।';

  @override
  String get setupFullScreen => 'पूरा स्क्रिनमा अर्डर सूचना';

  @override
  String get setupFullScreenBody =>
      'कलजस्तै, नयाँ अर्डर लक स्क्रिनमाथि देखाउँछ।';

  @override
  String get setupBattery => 'ब्याट्री: अप्टिमाइज नगर्नुहोस्';

  @override
  String get setupBatteryBody =>
      'तपाईं अनलाइन हुँदा फोनले एप बन्द गर्न पाउँदैन।';

  @override
  String get setupAutostart => 'अटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फोनमा Nexmile Rider का लागि अटोस्टार्ट पनि चालु गर्नुपर्छ। सेटिङ खोल्नुहोस्, अटोस्टार्ट खोज्नुहोस् र चालु गर्नुहोस्।';
  }

  @override
  String get setupLocation => 'स्थान';

  @override
  String get setupLocationBody => 'नजिकैका अर्डर पठाउन चाहिन्छ।';

  @override
  String get setupAllow => 'अनुमति दिनुहोस्';

  @override
  String get setupOpenSettings => 'सेटिङ खोल्नुहोस्';

  @override
  String get setupMarkDone => 'मैले गरिसकेँ';

  @override
  String get setupDoneStep => 'भयो';

  @override
  String get setupBannerTitle => 'फोन सेटअप पूरा गर्नुहोस्';

  @override
  String setupBannerBody(String count) {
    return 'अर्डर सूचना नछुटोस् भनेर $count वटा चरण बाँकी छन्';
  }

  @override
  String get offerEstimatedEarnings => 'अनुमानित कमाइ';

  @override
  String offerPickupLine(String name) {
    return 'पिकअप: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ड्रप: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'तपाईंबाट लगभग $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider बाट बाहिरिने?';

  @override
  String get exitBody => 'के तपाईं साँच्चै एपबाट बाहिरिन चाहनुहुन्छ?';

  @override
  String get exitConfirm => 'बाहिरिनुहोस्';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डेलिभरी पार्टनर बन्नुहोस्';

  @override
  String get onboardingWelcomeSubtitle =>
      'आफ्नै क्षेत्रमा डेलिभरी गर्नुहोस्, आफ्नै समय रोज्नुहोस्, र हरेक हप्ता भुक्तानी पाउनुहोस्।';

  @override
  String get onboardingWelcomeNeed => 'यी तयार राख्नुहोस्';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्राइभिङ लाइसेन्स र सवारीको RC';

  @override
  String get onboardingNeedInsurance => 'सवारी बीमा';

  @override
  String get onboardingNeedBank => 'बैंक खाताको विवरण';

  @override
  String get onboardingNeedNote =>
      'साइकल चलाउनुहुन्छ वा पैदल? तपाईंलाई आधार, PAN र बैंक खाता मात्र चाहिन्छ।';

  @override
  String get onboardingWelcomeTime => 'लगभग 10 मिनेट लाग्छ';

  @override
  String get onboardingGetStarted => 'सुरु गर्नुहोस्';

  @override
  String get onboardingSavedNote => 'हरेक चरणपछि सुरक्षित रूपमा राखिन्छ';

  @override
  String get docsTip =>
      'राम्रो उज्यालोमा खिचिएका प्रस्ट फोटो सबैभन्दा छिटो स्वीकृत हुन्छन्।';

  @override
  String get docsAllDone =>
      'सबै अनिवार्य कागजात थपिए। जाँच गर्न अगाडि बढ्नुहोस्।';

  @override
  String get docGroupIdentity => 'परिचयको प्रमाण';

  @override
  String get docGroupVehicle => 'लाइसेन्स र सवारीका कागजात';

  @override
  String get docGroupMore => 'थप कागजात';

  @override
  String get docTapToAdd => 'थप्न थिच्नुहोस्';

  @override
  String get docUploading => 'अपलोड हुँदैछ…';

  @override
  String get docView => 'हेर्नुहोस्';

  @override
  String get docSheetSubtitle => 'पहिलो पटकमै स्वीकृत गराउने तरिका';

  @override
  String get docTipCorners => 'चारै कुना फोटोभित्र';

  @override
  String get docTipGlare => 'प्रस्ट अक्षर, चमक वा छाया नहोस्';

  @override
  String get docTipOriginal => 'फोटोकपी होइन, सक्कली कागजात';

  @override
  String get docTipFace => 'अनुहार प्रस्ट देखियोस्, सीधा अगाडि हेर्दै';

  @override
  String get docTipBackground => 'सादा पृष्ठभूमि र राम्रो उज्यालो';

  @override
  String get docTipNoCap => 'टोपी, मास्क वा कालो चस्मा नलगाउनुहोस्';

  @override
  String get docTipFullPage => 'पूरै पाना, हरेक लाइन पढ्न मिल्ने गरी';

  @override
  String get docSourceCamera => 'क्यामेरा';

  @override
  String get docSourceGallery => 'ग्यालरी';

  @override
  String get docSourceFile => 'PDF वा फाइल';

  @override
  String get reviewSectionDetails => 'तपाईंको विवरण';

  @override
  String get reviewSectionDocuments => 'कागजात';

  @override
  String get reviewSectionBank => 'बैंक खाता';

  @override
  String get reviewBankHidden => 'थपियो · तपाईंको सुरक्षाका लागि लुकाइएको';

  @override
  String get reviewEdit => 'सम्पादन';

  @override
  String get reviewNextTitle => 'अब के हुन्छ';

  @override
  String get reviewNext1 => 'तपाईं आफ्नो आवेदन पेस गर्नुहुन्छ';

  @override
  String get reviewNext2 => 'हाम्रो टोलीले तपाईंको विवरण र कागजात जाँच गर्छ';

  @override
  String get reviewNext3 =>
      'तपाईंलाई जानकारी दिइन्छ, अनि अनलाइन भएर कमाउन सुरु गर्नुहोस्';

  @override
  String get kycStepSubmitted => 'आवेदन पेस भयो';

  @override
  String get kycStepVerifying => 'तपाईंका कागजात प्रमाणित हुँदैछन्';

  @override
  String get kycStepApproved => 'स्वीकृत — अनलाइन भएर कमाउन सुरु गर्नुहोस्';
}
