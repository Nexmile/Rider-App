// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'तेज़ डिलीवरी. ताज़ी मुस्कान.';

  @override
  String get chooseLanguageTitle => 'अपनी भाषा चुनें';

  @override
  String get chooseLanguageSubtitle =>
      'वह भाषा चुनें जिसमें आप सहज हों. आप इसे कभी भी सेटिंग्स में बदल सकते हैं.';

  @override
  String get searchLanguageHint => 'भाषा खोजें';

  @override
  String get noLanguageFound => 'कोई भाषा नहीं मिली';

  @override
  String languagesAvailable(int count) {
    return '$count भाषाएँ उपलब्ध हैं';
  }

  @override
  String get continueLabel => 'आगे बढ़ें';

  @override
  String get selectedLabel => 'चयनित';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile में आपका स्वागत है';

  @override
  String get homeSubtitle =>
      'ताज़ा किराना, गरम खाना और रोज़मर्रा की ज़रूरतें आपके पास की दुकानों से.';

  @override
  String get changeLanguage => 'भाषा बदलें';

  @override
  String get languageUpdated => 'भाषा बदल दी गई';

  @override
  String get appLanguageLabel => 'ऐप की भाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile में साइन इन करें';

  @override
  String get loginSubtitle =>
      'अपना ईमेल या मोबाइल नंबर दर्ज करें, हम आपको सत्यापन कोड भेजेंगे.';

  @override
  String get emailOrPhoneLabel => 'ईमेल या मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com या 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही ईमेल पता या 10 अंकों का मोबाइल नंबर दर्ज करें';

  @override
  String get loginHeadline => 'Nexmile के साथ डिलीवरी करें। अपने समय पर कमाएँ।';

  @override
  String get loginOrSignUp => 'लॉग इन या साइन अप करें';

  @override
  String get loginEmailHint => 'अपना ईमेल पता दर्ज करें';

  @override
  String get invalidEmail => 'सही ईमेल पता दर्ज करें';

  @override
  String get loginHeroBadge => 'डिलीवरी पार्टनर';

  @override
  String get sendCode => 'कोड भेजें';

  @override
  String get agreeToTermsOnContinue =>
      'आगे बढ़ने पर आप हमारी सेवा की शर्तों और गोपनीयता नीति से सहमत होते हैं.';

  @override
  String get otpTitle => 'पुष्टि करें कि यह आप हैं';

  @override
  String otpSubtitle(String target) {
    return '$target पर भेजा गया 6 अंकों का कोड दर्ज करें';
  }

  @override
  String get otpHelpTitle => 'कोड नहीं मिला?';

  @override
  String get otpHelpCheck =>
      'ऊपर दिया नंबर या ईमेल जाँचें। उसे बदलने के लिए पीछे जाएँ।';

  @override
  String get otpHelpWait =>
      'कोड आने में एक मिनट तक लग सकता है। टाइमर ख़त्म होने पर आप नया कोड मँगा सकते हैं।';

  @override
  String get otpHelpSpam => 'ईमेल के लिए अपना स्पैम फ़ोल्डर भी देखें।';

  @override
  String get verifyCode => 'सत्यापित करें';

  @override
  String get resendCode => 'कोड दोबारा भेजें';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंड में दोबारा भेजें';
  }

  @override
  String get codeResent => 'नया कोड भेज दिया गया है';

  @override
  String get incorrectCode =>
      'यह कोड ग़लत है या समाप्त हो चुका है. नया कोड मँगाएँ.';

  @override
  String get enterFullCode => 'पूरे 6 अंक दर्ज करें';

  @override
  String get accountSuspended =>
      'यह खाता निलंबित कर दिया गया है. कृपया सहायता से संपर्क करें.';

  @override
  String get tooManyAttempts =>
      'बहुत अधिक प्रयास हो गए. कृपया कुछ देर बाद फिर कोशिश करें.';

  @override
  String get sessionExpired =>
      'आपका सत्र समाप्त हो गया है. कृपया फिर से साइन इन करें.';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नहीं है. अपना कनेक्शन जाँचें और फिर कोशिश करें.';

  @override
  String get developmentCode => 'डेवलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'आप साइन आउट हो गए हैं';

  @override
  String get somethingWentWrong => 'कुछ ग़लत हो गया. कृपया फिर कोशिश करें.';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get profileSectionDetails => 'आपकी जानकारी';

  @override
  String get profileSectionWork => 'काम';

  @override
  String get profileSectionApp => 'ऐप सेटिंग्स';

  @override
  String get viewProfile => 'प्रोफ़ाइल देखें';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाते की स्थिति';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'लंबित';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'सत्यापित';

  @override
  String get notProvided => 'जोड़ा नहीं गया';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get loginRiderNote => 'यह ऐप नेक्समाइल डिलीवरी पार्टनर्स के लिए है।';

  @override
  String get checkingYourAccount => 'आपका खाता जाँचा जा रहा है';

  @override
  String get couldNotLoadAccount =>
      'हम आपका खाता लोड नहीं कर सके। अपना कनेक्शन जाँचकर फिर कोशिश करें।';

  @override
  String get notARiderAccountTitle => 'यह डिलीवरी पार्टनर खाता नहीं है';

  @override
  String get notARiderAccount =>
      'यह ईमेल या मोबाइल नंबर पहले से नेक्समाइल ग्राहक के रूप में पंजीकृत है। साइन आउट करके डिलीवरी पार्टनर बनने के लिए दूसरा उपयोग करें।';

  @override
  String notARiderAccountFor(String role) {
    return 'यह ईमेल या मोबाइल नंबर पहले से नेक्समाइल $role के रूप में पंजीकृत है। साइन आउट करके डिलीवरी पार्टनर बनने के लिए दूसरा उपयोग करें।';
  }

  @override
  String get roleCustomer => 'ग्राहक';

  @override
  String get roleMerchant => 'विक्रेता';

  @override
  String get roleAdmin => 'प्रशासक';

  @override
  String get useAnotherAccount => 'दूसरा खाता उपयोग करें';

  @override
  String get onboardingTitle => 'नेक्समाइल पार्टनर बनें';

  @override
  String get onboardingSubtitle =>
      'कुछ जानकारी और आपके दस्तावेज़, फिर हमारी टीम आपको सत्यापित करती है। आम तौर पर दो कार्यदिवस लगते हैं।';

  @override
  String stepOfSteps(int current, int total) {
    return 'चरण $current / $total';
  }

  @override
  String get stepIdentityTitle => 'आपके बारे में';

  @override
  String get stepIdentitySubtitle =>
      'अपना नाम ठीक वैसे ही लिखें जैसे आपके आधार कार्ड पर है।';

  @override
  String get stepVehicleTitle => 'आपका वाहन';

  @override
  String get stepVehicleSubtitle =>
      'बताएँ कि आप क्या चलाते हैं और उसका नंबर क्या है।';

  @override
  String get stepIdentityNumbersTitle => 'पहचान संख्याएँ';

  @override
  String get stepIdentityNumbersSubtitle =>
      'ये उन दस्तावेज़ों से मेल खानी चाहिए जो आप आगे अपलोड करेंगे।';

  @override
  String get stepLicenceTitle => 'लाइसेंस और बीमा';

  @override
  String get stepLicenceSubtitle =>
      'डिलीवरी शुरू करने के दिन दोनों वैध होने चाहिए।';

  @override
  String get stepBankTitle => 'भुगतान कहाँ मिलेगा';

  @override
  String get stepBankSubtitle =>
      'आपकी कमाई इसी खाते में आएगी। इसे ध्यान से जाँचें।';

  @override
  String get stepDocumentsTitle => 'आपके दस्तावेज़';

  @override
  String get stepDocumentsSubtitle =>
      'हर दस्तावेज़ की अच्छी रोशनी में फ़ोटो लें। JPG, PNG या PDF, हर एक 5 MB तक।';

  @override
  String get stepReviewTitle => 'जाँचें और भेजें';

  @override
  String get stepReviewSubtitle =>
      'भेजने के बाद, जब तक हमारी टीम समीक्षा नहीं कर लेती, आपकी जानकारी लॉक रहेगी।';

  @override
  String get saveAndContinue => 'सहेजें और आगे बढ़ें';

  @override
  String get backLabel => 'पीछे';

  @override
  String get fullNameLabel => 'पूरा नाम';

  @override
  String get fullNameHint => 'जैसा आधार पर छपा है';

  @override
  String get dateOfBirthLabel => 'जन्म तिथि';

  @override
  String get selectDate => 'तारीख़ चुनें';

  @override
  String get vehicleTypeLabel => 'वाहन का प्रकार';

  @override
  String get vehicleMotorcycle => 'मोटरसाइकिल';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleEv => 'इलेक्ट्रिक वाहन';

  @override
  String get vehicleBicycle => 'साइकिल';

  @override
  String get vehicleWalk => 'पैदल';

  @override
  String get vehicleNoPapersNote =>
      'वाहन नंबर या आरसी की ज़रूरत नहीं। केवल आधार और पैन मांगा जाएगा।';

  @override
  String get vehicleNumberLabel => 'वाहन नंबर';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'आरसी नंबर';

  @override
  String get aadhaarLabel => 'आधार नंबर';

  @override
  String get aadhaarHint => '12 अंक';

  @override
  String get panLabel => 'पैन (PAN)';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्राइविंग लाइसेंस नंबर';

  @override
  String get drivingLicenceExpiryLabel => 'लाइसेंस की वैधता तक';

  @override
  String get insuranceNumberLabel => 'बीमा पॉलिसी नंबर';

  @override
  String get insuranceExpiryLabel => 'बीमे की वैधता तक';

  @override
  String get bankAccountNameLabel => 'खाताधारक का नाम';

  @override
  String get bankAccountNumberLabel => 'खाता संख्या';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total में से $done अपलोड हुए';
  }

  @override
  String get uploadDocument => 'अपलोड करें';

  @override
  String get replaceDocument => 'बदलें';

  @override
  String get removeDocument => 'हटाएँ';

  @override
  String get takePhoto => 'फ़ोटो लें';

  @override
  String get chooseFromGallery => 'गैलरी से चुनें';

  @override
  String get chooseFile => 'फ़ाइल चुनें';

  @override
  String get uploadingLabel => 'अपलोड हो रहा है';

  @override
  String get documentRejected => 'अस्वीकृत';

  @override
  String get documentUploaded => 'अपलोड हुआ';

  @override
  String get documentApproved => 'स्वीकृत';

  @override
  String get documentRequired => 'ज़रूरी';

  @override
  String get documentOptional => 'वैकल्पिक';

  @override
  String get fileTooLarge =>
      'वह फ़ाइल 5 MB से बड़ी है। स्कैन के बजाय फ़ोटो आज़माएँ।';

  @override
  String get unsupportedFileType => 'JPG, PNG या PDF चुनें।';

  @override
  String get pickerUnavailable =>
      'हम उसे नहीं खोल सके। ऐप की कैमरा और फ़ोटो अनुमतियाँ जाँचें।';

  @override
  String get uploadFailed => 'वह अपलोड पूरा नहीं हुआ। कृपया फिर कोशिश करें।';

  @override
  String get submitForVerification => 'सत्यापन के लिए भेजें';

  @override
  String get submitConfirmTitle => 'सत्यापन के लिए भेजें?';

  @override
  String get submitConfirmBody =>
      'हमारी टीम की समीक्षा तक आपकी जानकारी और दस्तावेज़ लॉक रहेंगे। निर्णय आने तक आप उन्हें बदल नहीं सकेंगे।';

  @override
  String get cancelLabel => 'रद्द करें';

  @override
  String get completeEverythingBeforeSubmitting =>
      'भेजने से पहले हर चरण पूरा करें और सभी दस्तावेज़ अपलोड करें।';

  @override
  String get checkTheHighlightedFields =>
      'चिह्नित फ़ील्ड जाँचकर फिर कोशिश करें।';

  @override
  String get underReviewTitle => 'हम आपके दस्तावेज़ सत्यापित कर रहे हैं';

  @override
  String get underReviewBody =>
      'हमारी टीम आम तौर पर दो कार्यदिवसों में समीक्षा कर लेती है। स्वीकृति मिलते ही हम आपको बता देंगे।';

  @override
  String get checkAgain => 'फिर जाँचें';

  @override
  String get stillUnderReview => 'अब भी समीक्षा में है';

  @override
  String get rejectedTitle => 'हम आपको सत्यापित नहीं कर सके';

  @override
  String get rejectedBody =>
      'नीचे हमारी टीम ने जो बताया है उसे ठीक करके दस्तावेज़ फिर भेजें।';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'ठीक करके फिर भेजें';

  @override
  String get blockedTitle => 'आप अभी ऑनलाइन नहीं हो सकते';

  @override
  String get documentsExpiredMessage =>
      'आपका लाइसेंस या बीमा समाप्त हो चुका है। ऑनलाइन होने के लिए मौजूदा दस्तावेज़ अपलोड करें।';

  @override
  String get awaitingVerificationMessage =>
      'आपके दस्तावेज़ अब भी सत्यापित किए जा रहे हैं।';

  @override
  String get updateDocuments => 'दस्तावेज़ अपडेट करें';

  @override
  String get riderHomeTitle => 'चलने के लिए तैयार';

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
      'ऑनलाइन हों और हम आपको आस-पास की डिलीवरी भेजेंगे।';

  @override
  String get dutyStatusLabel => 'ड्यूटी स्थिति';

  @override
  String get dutyOnline => 'ऑनलाइन';

  @override
  String get dutyOffline => 'ऑफ़लाइन';

  @override
  String get dutyOnBreak => 'ब्रेक पर';

  @override
  String get goOnline => 'ऑनलाइन हों';

  @override
  String get goOffline => 'ऑफ़लाइन हों';

  @override
  String get takeABreak => 'ब्रेक लें';

  @override
  String get waitingForOrders => 'आस-पास ऑर्डर का इंतज़ार है';

  @override
  String get youAreOffline =>
      'आप ऑफ़लाइन हैं। आपको कोई डिलीवरी नहीं भेजी जाएगी।';

  @override
  String get completedDeliveriesLabel => 'पूरी हुई डिलीवरी';

  @override
  String get ratingLabel => 'रेटिंग';

  @override
  String get notRatedYet => 'अभी कोई रेटिंग नहीं';

  @override
  String get vehicleLabel => 'वाहन';

  @override
  String get kycStatusLabel => 'सत्यापन';

  @override
  String get kycPending => 'नहीं भेजा गया';

  @override
  String get kycSubmitted => 'समीक्षा में';

  @override
  String get kycVerified => 'स्वीकृत';

  @override
  String get kycRejected => 'अस्वीकृत';

  @override
  String get fieldRequired => 'यह ज़रूरी है';

  @override
  String get invalidAadhaar => 'अपने आधार नंबर के 12 अंक दर्ज करें';

  @override
  String get invalidPan => 'वैध पैन दर्ज करें, जैसे ABCDE1234F';

  @override
  String get invalidIfsc => 'वैध IFSC कोड दर्ज करें, जैसे SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'नंबर ठीक वैसे ही दर्ज करें जैसा नंबर प्लेट पर है';

  @override
  String get invalidAccountNumber => 'वैध खाता संख्या दर्ज करें';

  @override
  String get dateMustBeFuture => 'यह तारीख़ पहले ही बीत चुकी है';

  @override
  String get mustBeEighteen =>
      'डिलीवरी करने के लिए आपकी उम्र कम से कम 18 वर्ष होनी चाहिए';

  @override
  String get docAadhaarFront => 'आधार कार्ड (सामने)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (पीछे)';

  @override
  String get docDrivingLicence => 'ड्राइविंग लाइसेंस';

  @override
  String get docVehicleRc => 'वाहन पंजीकरण प्रमाणपत्र';

  @override
  String get docInsurance => 'वाहन बीमा';

  @override
  String get docProfilePhoto => 'प्रोफ़ाइल फ़ोटो';

  @override
  String get docPan => 'पैन कार्ड';

  @override
  String get docBankProof => 'रद्द किया गया चेक या बैंक स्टेटमेंट';

  @override
  String get ordersTab => 'ऑर्डर';

  @override
  String get deliveryTab => 'डिलीवरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'आपके पास के ऑर्डर';

  @override
  String get orderBoardSubtitle =>
      'सबसे नज़दीकी रेस्टोरेंट पहले. सूची अपने आप ताज़ा होती रहती है.';

  @override
  String orderNumberLabel(String number) {
    return 'ऑर्डर $number';
  }

  @override
  String get pickupLabel => 'यहाँ से लें';

  @override
  String get dropoffLabel => 'यहाँ पहुँचाएँ';

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
      other: '$count चीज़ें',
      one: '1 चीज़',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'आपकी कमाई';

  @override
  String get collectCashLabel => 'नकद लें';

  @override
  String get prepaidLabel => 'ऑनलाइन भुगतान हो चुका';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहक से $amount लें';
  }

  @override
  String get nothingToCollect => 'भुगतान हो चुका है. पैसे न माँगें.';

  @override
  String get acceptOrder => 'स्वीकार करें';

  @override
  String get viewOrder => 'देखें';

  @override
  String get orderAccepted => 'ऑर्डर स्वीकार हुआ. रेस्टोरेंट पहुँचें.';

  @override
  String get orderAlreadyTaken =>
      'यह ऑर्डर किसी और राइडर ने ले लिया. यह नई सूची है.';

  @override
  String get orderNoLongerYours => 'यह ऑर्डर अब आपका नहीं है.';

  @override
  String get boardEmptyTitle => 'अभी कोई ऑर्डर नहीं';

  @override
  String get boardEmptyBody =>
      'ऑनलाइन बने रहें. रेस्टोरेंट व्यस्त होते ही सूची अपने आप भर जाएगी.';

  @override
  String get boardOfflineTitle => 'आप ऑफ़लाइन हैं';

  @override
  String get boardOfflineBody => 'ऑर्डर पाने के लिए ऑनलाइन हों.';

  @override
  String get boardBusyTitle => 'पहले अपनी डिलीवरी पूरी करें';

  @override
  String get boardBusyBody => 'यह ऑर्डर पहुँचाने के बाद ही आप दूसरा ले सकेंगे.';

  @override
  String get boardNoLocationTitle => 'हम आपको ढूँढ नहीं पा रहे';

  @override
  String get boardNoLocationBody =>
      'ऑर्डर रेस्टोरेंट की दूरी के हिसाब से दिखते हैं, इसलिए कुछ भी दिखाने के लिए आपकी लोकेशन ज़रूरी है.';

  @override
  String get boardNotVerifiedTitle => 'अभी राइड करने की मंज़ूरी नहीं है';

  @override
  String get activeDeliveryTitle => 'आपकी डिलीवरी';

  @override
  String get headToRestaurant => 'रेस्टोरेंट पहुँचें';

  @override
  String get deliverToCustomer => 'ग्राहक तक पहुँचाएँ';

  @override
  String get noActiveDeliveryTitle => 'अभी कोई ऑर्डर नहीं है';

  @override
  String get noActiveDeliveryBody =>
      'सूची से कोई ऑर्डर स्वीकार करें, वह यहाँ दिखने लगेगा.';

  @override
  String get confirmPickupButton => 'मैंने ले लिया है';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle => 'रेस्टोरेंट से कोड पूछें और यहाँ लिखें.';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode =>
      'यह कोड मेल नहीं खाया. रेस्टोरेंट से दोबारा पूछें.';

  @override
  String get pickupConfirmed => 'ऑर्डर ले लिया. अब ग्राहक तक पहुँचाएँ.';

  @override
  String get confirmDeliveryButton => 'पहुँचा दिया';

  @override
  String get stepReachRestaurant => 'रेस्टोरेंट पहुँचें';

  @override
  String get stepPickUp => 'ऑर्डर लें';

  @override
  String get stepReachCustomer => 'ग्राहक तक पहुँचें';

  @override
  String get stepDeliver => 'डिलीवर करें';

  @override
  String get swipePickUp => 'ऑर्डर लेकर स्वाइप करें';

  @override
  String get swipeDeliver => 'डिलीवर करने के लिए स्वाइप करें';

  @override
  String get cashToCollectLabel => 'ग्राहक से नकद लें';

  @override
  String get confirmDeliveryTitle => 'डिलीवरी की पुष्टि करें';

  @override
  String get confirmDeliveryBody =>
      'तभी पुष्टि करें जब ऑर्डर ग्राहक के हाथ में पहुँच चुका हो.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'पहले $amount लें, फिर पुष्टि करें.';
  }

  @override
  String get deliveryConfirmed => 'पहुँचा दिया. धन्यवाद, आप फिर से ऑनलाइन हैं.';

  @override
  String get releaseOrderButton => 'वापस कर दें';

  @override
  String get releaseOrderTitle => 'यह ऑर्डर वापस करना है?';

  @override
  String get releaseOrderBody =>
      'यह दूसरे राइडर के लिए सूची में वापस चला जाएगा. खाना लेने से पहले ही ऐसा कर सकते हैं.';

  @override
  String get releaseReasonHint => 'कारण (ज़रूरी नहीं)';

  @override
  String get orderReleased =>
      'वापस कर दिया. यह दूसरे राइडर के लिए फिर उपलब्ध है.';

  @override
  String get finishCurrentOrderFirst =>
      'पहले अपना मौजूदा ऑर्डर पूरा करें या वापस कर दें.';

  @override
  String get callRestaurant => 'रेस्टोरेंट को कॉल करें';

  @override
  String get callCustomer => 'ग्राहक को कॉल करें';

  @override
  String get openInMaps => 'रास्ता देखें';

  @override
  String get customerNoteLabel => 'ग्राहक का संदेश';

  @override
  String get orderItemsLabel => 'बैग में क्या है';

  @override
  String get orderDetailsTitle => 'ऑर्डर का विवरण';

  @override
  String get historyTitle => 'पिछली डिलीवरी';

  @override
  String get historyEmptyTitle => 'अभी कोई डिलीवरी नहीं';

  @override
  String get historyEmptyBody => 'आपने जो ऑर्डर पूरे किए हैं वे यहाँ दिखेंगे.';

  @override
  String get historySearchHint => 'ऑर्डर या रेस्टोरेंट खोजें';

  @override
  String get historyToday => 'आज';

  @override
  String get historyYesterday => 'कल';

  @override
  String get historyEarlier => 'पुरानी डिलीवरी';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिलीवरी',
      one: '1 डिलीवरी',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” से कुछ भी मेल नहीं खाता।';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount नकद लिए';
  }

  @override
  String get orderDelivered => 'पहुँचा दिया';

  @override
  String get orderCancelled => 'रद्द';

  @override
  String get orderPreparing => 'तैयार हो रहा है';

  @override
  String get orderReadyForPickup => 'लेने के लिए तैयार';

  @override
  String get orderAssigned => 'आपको सौंपा गया';

  @override
  String get orderPickedUp => 'ले लिया गया';

  @override
  String get orderOutForDelivery => 'रास्ते में';

  @override
  String get trackingOn => 'लोकेशन साझा हो रही है';

  @override
  String get locationUnavailableMessage =>
      'हम आपकी लोकेशन नहीं पढ़ पा रहे. लोकेशन चालू करें और Nexmile Rider को अनुमति दें.';

  @override
  String get locationPermissionTitle => 'लोकेशन ज़रूरी है';

  @override
  String get locationPermissionBody =>
      'ऑर्डर आपकी दूरी के हिसाब से बाँटे जाते हैं, और ग्राहक नक्शे पर आपको देखता है. ऑनलाइन होने के लिए लोकेशन की अनुमति दें.';

  @override
  String get locationSettingsButton => 'सेटिंग्स खोलें';

  @override
  String get enableLocationButton => 'लोकेशन की अनुमति दें';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'शिफ़्ट';

  @override
  String get payoutsTitle => 'भुगतान';

  @override
  String get payoutsEntryValue => 'साप्ताहिक कमाई';

  @override
  String get payoutDetailsTitle => 'साप्ताहिक भुगतान';

  @override
  String get payoutsEmptyTitle => 'अभी कोई भुगतान नहीं';

  @override
  String get payoutsEmptyBody =>
      'हर हफ़्ते का हिसाब होने के बाद उस हफ़्ते की आपकी कमाई यहाँ दिखेगी।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'लंबित';

  @override
  String get payoutStatusProcessing => 'प्रक्रिया में';

  @override
  String get payoutStatusPaid => 'भुगतान हो गया';

  @override
  String get payoutNotSentNote =>
      'इस हफ़्ते की आपकी कमाई का हिसाब हो गया है। पैसे अभी आपके बैंक में नहीं भेजे गए हैं।';

  @override
  String payoutPaidOn(String date) {
    return '$date को आपके बैंक में भेजे गए';
  }

  @override
  String get payoutPaidNote => 'इस हफ़्ते का बैंक ट्रांसफ़र पूरा हो गया है।';

  @override
  String get payoutReferenceLabel => 'ट्रांसफ़र रेफ़रेंस';

  @override
  String get payoutNetLabel => 'आपको मिलने वाली राशि';

  @override
  String get payoutDeliveryEarnings => 'डिलीवरी से कमाई';

  @override
  String get payoutReferralEarnings => 'रेफ़रल से कमाई';

  @override
  String get payoutCarriedIn => 'पिछले हफ़्ते से';

  @override
  String get payoutCarriedInNote =>
      '₹100 से कम की राशि अलग से ट्रांसफ़र नहीं की जाती। उसे अगले हफ़्ते में जोड़ दिया जाता है।';

  @override
  String get payoutGross => 'कुल कमाई';

  @override
  String get payoutDeductions => 'कटौती';

  @override
  String get payoutsLatestWeek => 'हाल का हफ़्ता';

  @override
  String get payoutsPaidSoFar => 'अब तक भुगतान हुआ';

  @override
  String get payoutsNotYetSent => 'अभी भेजा नहीं गया';

  @override
  String get payoutStepWorkedOut => 'हिसाब हो गया';

  @override
  String get payoutStepSending => 'भेजा जा रहा है';

  @override
  String get payoutStepInBank => 'आपके बैंक में';

  @override
  String get navToRestaurant => 'रेस्टोरेंट की ओर';

  @override
  String get navToCustomer => 'ग्राहक की ओर';

  @override
  String navHeadTowards(String place) {
    return '$place की ओर जाएँ';
  }

  @override
  String navThen(String instruction) {
    return 'फिर: $instruction';
  }

  @override
  String get navArrived => 'आप पहुँच गए हैं';

  @override
  String navArrivedAt(String place) {
    return '$place पर';
  }

  @override
  String get navFindingRoute => 'सबसे अच्छा रास्ता ढूँढ रहे हैं…';

  @override
  String get navNoRoute =>
      'सड़क का रास्ता उपलब्ध नहीं है। सीधी दूरी दिखाई जा रही है।';

  @override
  String get navFindingLocation => 'आपकी लोकेशन ढूँढ रहे हैं…';

  @override
  String get navLocationOff => 'नेविगेशन के लिए लोकेशन चालू करें।';

  @override
  String get navEnd => 'नेविगेशन बंद करें';

  @override
  String get navRecentre => 'फिर से केंद्रित करें';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनट';
  }

  @override
  String get navStart => 'नेविगेट करें';

  @override
  String get orderReachedRestaurant => 'रेस्टोरेंट पर';

  @override
  String get orderReachedCustomer => 'ग्राहक के पास';

  @override
  String get reachedRestaurantButton => 'मैं रेस्टोरेंट पर हूँ';

  @override
  String get reachedCustomerButton => 'मैं ग्राहक के पास हूँ';

  @override
  String get reachedRestaurantDone => 'रेस्टोरेंट को पता है कि आप यहाँ हैं';

  @override
  String get reachedCustomerDone => 'ग्राहक को पता है कि आप बाहर हैं';

  @override
  String get offerTitle => 'नया ऑर्डर';

  @override
  String get offerYouEarn => 'आपकी कमाई';

  @override
  String get offerPickup => 'यहाँ से लें';

  @override
  String get offerDrop => 'यहाँ पहुँचाएँ';

  @override
  String offerAway(String distance) {
    return '$distance दूर';
  }

  @override
  String offerTrip(String distance) {
    return '$distance की ट्रिप';
  }

  @override
  String offerItems(String count) {
    return '$count चीज़ें';
  }

  @override
  String offerCollectCash(String amount) {
    return 'ग्राहक से $amount नकद लें';
  }

  @override
  String get offerPrepaid => 'भुगतान हो चुका · नकद नहीं';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'खाना लगभग $minutes मिनट में तैयार होगा';
  }

  @override
  String get offerSwipeToAccept => 'स्वीकार करने के लिए स्वाइप करें';

  @override
  String get offerAccepting => 'स्वीकार हो रहा है…';

  @override
  String get offerReject => 'मना करें';

  @override
  String get offerRejectTitle => 'आप मना क्यों कर रहे हैं?';

  @override
  String get offerReasonTooFar => 'बहुत दूर है';

  @override
  String get offerReasonBusy => 'अभी व्यस्त हूँ';

  @override
  String get offerReasonVehicle => 'वाहन में दिक्कत';

  @override
  String get offerReasonOther => 'कोई और कारण';

  @override
  String get offerTaken => 'ऑर्डर किसी और राइडर ने ले लिया';

  @override
  String get offerAutoOffline =>
      '3 ऑर्डर छूटने के बाद आपको ऑफ़लाइन कर दिया गया। तैयार हों तो ऑनलाइन हो जाएँ।';

  @override
  String get mockLocationBlocked =>
      'ऑर्डर पाने के लिए नकली लोकेशन वाला कोई भी ऐप बंद करें।';

  @override
  String get dropoffDoorLabel => 'फ़्लैट / मंज़िल';

  @override
  String get dropoffStreetLabel => 'गली';

  @override
  String get dropoffLandmarkLabel => 'लैंडमार्क';

  @override
  String get doorPhotoLabel => 'दरवाज़े की फ़ोटो';

  @override
  String get doorPhotoHint => 'बड़ा देखने के लिए टैप करें';

  @override
  String get doorPhotoUnavailable => 'फ़ोटो अभी उपलब्ध नहीं है';

  @override
  String permStepCount(int step, int total) {
    return '$total में से $step';
  }

  @override
  String get permNotNow => 'अभी नहीं';

  @override
  String get permLocationTitle => 'लोकेशन चालू करें';

  @override
  String get permLocationBody =>
      'ऑर्डर रेस्टोरेंट के सबसे पास वाले राइडर को जाते हैं, और ग्राहक नक्शे पर अपना खाना आते हुए देखते हैं।';

  @override
  String get permLocationNearTitle => 'आपके पास के ऑर्डर';

  @override
  String get permLocationNearBody =>
      'हम आपको पास के रेस्टोरेंट से ऑर्डर देते हैं, ताकि आप कम चलाएँ और ज़्यादा कमाएँ।';

  @override
  String get permLocationTrackTitle => 'लाइव ट्रैकिंग';

  @override
  String get permLocationTrackBody =>
      'ग्राहक आपको नक्शे पर देखते हैं, इसलिए आपको कम कॉल करते हैं।';

  @override
  String get permLocationOnlineTitle => 'सिर्फ़ जब आप ऑनलाइन हों';

  @override
  String get permLocationOnlineBody =>
      'ऑफ़लाइन होते ही यह रुक जाता है। जब भी यह चालू हो, एक नोटिफ़िकेशन दिखता है।';

  @override
  String get permLocationAllow => 'लोकेशन की अनुमति दें';

  @override
  String get permNotifyTitle => 'कोई ऑर्डर न छूटे';

  @override
  String get permNotifyBody =>
      'नए ऑर्डर फ़ोन कॉल की तरह बजते हैं, स्क्रीन लॉक होने पर भी।';

  @override
  String get permNotifyRingTitle => 'बजने वाले ऑर्डर अलर्ट';

  @override
  String get permNotifyRingBody => 'अलर्ट से ही सीधे स्वीकार करें या मना करें।';

  @override
  String get permNotifyUpdatesTitle => 'भुगतान और मंज़ूरी';

  @override
  String get permNotifyUpdatesBody =>
      'जानें कि आपके दस्तावेज़ कब स्वीकृत हुए और पैसे कब भेजे गए।';

  @override
  String get permNotifyControlTitle => 'कंट्रोल आपके हाथ में';

  @override
  String get permNotifyControlBody =>
      'इसे कभी भी अपने फ़ोन की सेटिंग्स में बदलें।';

  @override
  String get permNotifyAllow => 'नोटिफ़िकेशन चालू करें';

  @override
  String get permBatteryTitle => 'ऑर्डर आते रहें';

  @override
  String get permBatteryBody =>
      'बैटरी बचाने के लिए फ़ोन बैकग्राउंड में ऐप बंद कर देते हैं। ऑनलाइन रहते समय Nexmile Rider को चलते रहने दें।';

  @override
  String get permBatteryOrdersTitle => 'कोई ऑर्डर नहीं छूटेगा';

  @override
  String get permBatteryOrdersBody =>
      'ऐप बंद हो और फ़ोन जेब में, तब भी ऑर्डर आप तक पहुँचते हैं।';

  @override
  String get permBatteryLiveTitle => 'ट्रैकिंग लाइव रहती है';

  @override
  String get permBatteryLiveBody =>
      'डिलीवरी होने तक ग्राहक आपको नक्शे पर देखते रहते हैं।';

  @override
  String get permBatteryLightTitle => 'बैटरी कम खर्च';

  @override
  String get permBatteryLightBody =>
      'यह सिर्फ़ आपके ऑनलाइन रहते समय ज़्यादा काम करता है।';

  @override
  String get permBatteryAllow => 'बैकग्राउंड में चलने दें';

  @override
  String get permFullScreenTitle => 'लॉक स्क्रीन पर ऑर्डर';

  @override
  String get permFullScreenBody =>
      'नए ऑर्डर को इनकमिंग कॉल की तरह लॉक स्क्रीन पर दिखने दें, ताकि आप एक टैप में स्वीकार कर सकें।';

  @override
  String get permFullScreenCallTitle => 'कॉल की तरह जवाब दें';

  @override
  String get permFullScreenCallBody =>
      'फ़ोन अनलॉक किए बिना ऑर्डर देखें और स्वीकार करें।';

  @override
  String get permFullScreenTimeTitle => 'समय पर जवाब दें';

  @override
  String get permFullScreenTimeBody =>
      'जिस ऑर्डर का आप जवाब नहीं देते, वह दूसरे राइडर के पास चला जाता है।';

  @override
  String get permFullScreenOnlyTitle => 'सिर्फ़ नए ऑर्डर के लिए';

  @override
  String get permFullScreenOnlyBody =>
      'आपकी लॉक स्क्रीन पर और कुछ भी कभी नहीं दिखता।';

  @override
  String get setupTitle => 'फ़ोन सेटअप';

  @override
  String get setupIntro =>
      'ये पूरे करें ताकि ऐप बंद हो या फ़ोन लॉक हो, तब भी नए ऑर्डर बजें।';

  @override
  String get setupNotifications => 'नोटिफ़िकेशन';

  @override
  String get setupNotificationsBody => 'ताकि नए ऑर्डर बज सकें और दिख सकें।';

  @override
  String get setupFullScreen => 'फ़ुल-स्क्रीन ऑर्डर अलर्ट';

  @override
  String get setupFullScreenBody =>
      'नया ऑर्डर कॉल की तरह आपकी लॉक स्क्रीन पर दिखाता है।';

  @override
  String get setupBattery => 'बैटरी: ऑप्टिमाइज़ न करें';

  @override
  String get setupBatteryBody =>
      'ऑनलाइन रहते समय आपका फ़ोन ऐप को बंद नहीं करेगा।';

  @override
  String get setupAutostart => 'ऑटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फ़ोन में Nexmile Rider के लिए ऑटोस्टार्ट भी चालू करना होता है। सेटिंग्स खोलें, ऑटोस्टार्ट ढूँढें और उसे चालू करें।';
  }

  @override
  String get setupLocation => 'लोकेशन';

  @override
  String get setupLocationBody => 'आपको पास के ऑर्डर भेजने के लिए ज़रूरी है।';

  @override
  String get setupAllow => 'अनुमति दें';

  @override
  String get setupOpenSettings => 'सेटिंग्स खोलें';

  @override
  String get setupMarkDone => 'मैंने यह कर लिया है';

  @override
  String get setupDoneStep => 'हो गया';

  @override
  String get setupBannerTitle => 'फ़ोन सेटअप पूरा करें';

  @override
  String setupBannerBody(String count) {
    return 'ऑर्डर अलर्ट न छूटें, इसके लिए $count चरण बाक़ी हैं';
  }

  @override
  String get offerEstimatedEarnings => 'अनुमानित कमाई';

  @override
  String offerPickupLine(String name) {
    return 'यहाँ से लें: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'यहाँ पहुँचाएँ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'आपसे लगभग $distance दूर';
  }

  @override
  String get exitTitle => 'Nexmile Rider से बाहर निकलें?';

  @override
  String get exitBody => 'क्या आप सच में ऐप से बाहर निकलना चाहते हैं?';

  @override
  String get exitConfirm => 'बाहर निकलें';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डिलीवरी पार्टनर बनें';

  @override
  String get onboardingWelcomeSubtitle =>
      'अपने इलाक़े में डिलीवरी करें, अपने घंटे खुद चुनें, और हर हफ़्ते भुगतान पाएँ।';

  @override
  String get onboardingWelcomeNeed => 'ये तैयार रखें';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'पैन कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्राइविंग लाइसेंस और वाहन की आरसी';

  @override
  String get onboardingNeedInsurance => 'वाहन बीमा';

  @override
  String get onboardingNeedBank => 'बैंक खाते की जानकारी';

  @override
  String get onboardingNeedNote =>
      'साइकिल से या पैदल डिलीवरी करेंगे? तो आपको सिर्फ़ आधार, पैन और बैंक खाता चाहिए।';

  @override
  String get onboardingWelcomeTime => 'लगभग 10 मिनट लगते हैं';

  @override
  String get onboardingGetStarted => 'शुरू करें';

  @override
  String get onboardingSavedNote =>
      'हर चरण के बाद सुरक्षित रूप से सहेजा जाता है';

  @override
  String get docsTip =>
      'अच्छी रोशनी में ली गई साफ़ फ़ोटो सबसे जल्दी स्वीकृत होती हैं।';

  @override
  String get docsAllDone =>
      'सभी ज़रूरी दस्तावेज़ जमा हो गए हैं। जाँचने के लिए आगे बढ़ें।';

  @override
  String get docGroupIdentity => 'पहचान का प्रमाण';

  @override
  String get docGroupVehicle => 'लाइसेंस और वाहन के कागज़';

  @override
  String get docGroupMore => 'और दस्तावेज़';

  @override
  String get docTapToAdd => 'जोड़ने के लिए टैप करें';

  @override
  String get docUploading => 'अपलोड हो रहा है…';

  @override
  String get docView => 'देखें';

  @override
  String get docSheetSubtitle => 'पहली बार में ही स्वीकृति कैसे पाएँ';

  @override
  String get docTipCorners => 'चारों कोने फ़ोटो के अंदर हों';

  @override
  String get docTipGlare => 'साफ़ अक्षर, कोई चमक या परछाईं नहीं';

  @override
  String get docTipOriginal => 'असली दस्तावेज़, फ़ोटोकॉपी नहीं';

  @override
  String get docTipFace => 'आपका चेहरा साफ़ दिखे, सीधे सामने देखते हुए';

  @override
  String get docTipBackground => 'सादा बैकग्राउंड और अच्छी रोशनी';

  @override
  String get docTipNoCap => 'टोपी, मास्क या धूप का चश्मा नहीं';

  @override
  String get docTipFullPage => 'पूरा पेज, हर लाइन पढ़ने लायक';

  @override
  String get docSourceCamera => 'कैमरा';

  @override
  String get docSourceGallery => 'गैलरी';

  @override
  String get docSourceFile => 'PDF या फ़ाइल';

  @override
  String get reviewSectionDetails => 'आपकी जानकारी';

  @override
  String get reviewSectionDocuments => 'दस्तावेज़';

  @override
  String get reviewSectionBank => 'बैंक खाता';

  @override
  String get reviewBankHidden => 'जोड़ा गया · आपकी सुरक्षा के लिए छिपाया गया';

  @override
  String get reviewEdit => 'बदलें';

  @override
  String get reviewNextTitle => 'आगे क्या होगा';

  @override
  String get reviewNext1 => 'आप अपना आवेदन भेजते हैं';

  @override
  String get reviewNext2 => 'हमारी टीम आपकी जानकारी और दस्तावेज़ जाँचती है';

  @override
  String get reviewNext3 =>
      'आपको सूचना मिलती है, फिर ऑनलाइन हों और कमाई शुरू करें';

  @override
  String get kycStepSubmitted => 'आवेदन भेज दिया गया';

  @override
  String get kycStepVerifying => 'आपके दस्तावेज़ सत्यापित हो रहे हैं';

  @override
  String get kycStepApproved => 'स्वीकृत — ऑनलाइन हों और कमाई शुरू करें';
}
