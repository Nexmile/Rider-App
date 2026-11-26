// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dogri (`doi`).
class AppLocalizationsDoi extends AppLocalizations {
  AppLocalizationsDoi([String locale = 'doi']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'तेज़ डिलीवरी। ताज़ी मुस्कान।';

  @override
  String get chooseLanguageTitle => 'अपनी बोली चुनो';

  @override
  String get chooseLanguageSubtitle =>
      'जिस बोली च तुसें सौखा लगदा ओह् चुनो। तुस इसनूं कदी बी सेटिंग्स च बदली सकदे ओ।';

  @override
  String get searchLanguageHint => 'बोली तोपो';

  @override
  String get noLanguageFound => 'कोई बी बोली नेईं लब्भी';

  @override
  String languagesAvailable(int count) {
    return '$count बोलियां उपलब्ध न';
  }

  @override
  String get continueLabel => 'अग्गें बधो';

  @override
  String get selectedLabel => 'चुनी गेई';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile च तुंदा स्वागत ऐ';

  @override
  String get homeSubtitle =>
      'ताज़ा किराना, गरम खाना ते रोज़ दियां लोड़ां तुंदे नेड़लियां दुकानां थमां।';

  @override
  String get changeLanguage => 'बोली बदलो';

  @override
  String get languageUpdated => 'बोली बदली गेई';

  @override
  String get appLanguageLabel => 'ऐप दी बोली';

  @override
  String greetingNamed(String name) {
    return 'नमस्कार, $name';
  }

  @override
  String get loginTitle => 'Nexmile च साइन इन करो';

  @override
  String get loginSubtitle =>
      'अपना ईमेल जां मोबाइल नंबर पाओ, अस तस्दीक कोड भेजगे।';

  @override
  String get emailOrPhoneLabel => 'ईमेल जां मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com जां 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सही ईमेल पता जां 10 अंकें दा मोबाइल नंबर पाओ';

  @override
  String get loginHeadline =>
      'Nexmile कन्नै डिलीवरी करो। अपने समें मताबक कमाओ।';

  @override
  String get loginOrSignUp => 'लॉग इन जां साइन अप करो';

  @override
  String get loginEmailHint => 'अपना ईमेल पता पाओ';

  @override
  String get invalidEmail => 'सही ईमेल पता पाओ';

  @override
  String get loginHeroBadge => 'डिलीवरी पार्टनर';

  @override
  String get sendCode => 'कोड भेजो';

  @override
  String get agreeToTermsOnContinue =>
      'अग्गें बधने कन्नै तुस साढ़ियां सेवा शर्तां ते गोपनीयता नीति नाल सैह्मत ओ।';

  @override
  String get otpTitle => 'तस्दीक करो जे एह् तुस ओ';

  @override
  String otpSubtitle(String target) {
    return '$target पर भेजे दा 6 अंकें दा कोड पाओ';
  }

  @override
  String get otpHelpTitle => 'कोड नेईं मिलेआ?';

  @override
  String get otpHelpCheck =>
      'उप्पर लिखे दा नंबर जां ईमेल जांचो। बदलने आस्तै वापस जाओ।';

  @override
  String get otpHelpWait =>
      'कोड औने च इक मिनट तगर लग्गी सकदा ऐ। टाइमर मुक्कने पर तुस नमां कोड मंगाई सकदे ओ।';

  @override
  String get otpHelpSpam => 'ईमेल आस्तै अपना स्पैम फोल्डर बी दिक्खो।';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'तस्दीक करो';

  @override
  String get resendCode => 'कोड फ्ही भेजो';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सैकिंड च फ्ही भेजो';
  }

  @override
  String get codeResent => 'नमां कोड भेजी दित्ता गेदा ऐ';

  @override
  String get incorrectCode =>
      'एह् कोड गलत ऐ जां इसदी मियाद खत्म होई गेई। नमां कोड मंगाओ।';

  @override
  String get enterFullCode => 'पूरे 6 अंक पाओ';

  @override
  String get accountSuspended =>
      'एह् खाता मुअत्तल करी दित्ता गेदा ऐ। किरपा करियै सहायता कन्नै संपर्क करो।';

  @override
  String get tooManyAttempts =>
      'मते बारी कोशिश होई गेई। किरपा करियै थोह्ड़ी देर बाद फ्ही कोशिश करो।';

  @override
  String get sessionExpired =>
      'तुंदा सैशन खत्म होई गेदा ऐ। किरपा करियै फ्ही साइन इन करो।';

  @override
  String get networkError =>
      'इंटरनैट कनैक्शन नेईं ऐ। अपना कनैक्शन जांचो ते फ्ही कोशिश करो।';

  @override
  String get developmentCode => 'डिवैल्पमैंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'तुस साइन आउट होई गे ओ';

  @override
  String get somethingWentWrong =>
      'किश गलत होई गेदा। किरपा करियै फ्ही कोशिश करो।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get profileSectionDetails => 'तुंदा ब्यौरा';

  @override
  String get profileSectionWork => 'कम्म';

  @override
  String get profileSectionApp => 'ऐप सेटिंग्स';

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
  String get viewProfile => 'प्रोफाइल दिक्खो';

  @override
  String get nameLabel => 'नां';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाते दी हालत';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'बकाया';

  @override
  String get statusSuspended => 'मुअत्तल';

  @override
  String get verifiedLabel => 'तस्दीकशुदा';

  @override
  String get notProvided => 'जोड़े दा नेईं';

  @override
  String get retry => 'फ्ही कोशिश करो';

  @override
  String get loginRiderNote => 'एह् ऐप Nexmile दे डिलीवरी पार्टनरें आस्तै ऐ।';

  @override
  String get checkingYourAccount => 'तुंदा खाता जांचेआ जा करदा ऐ';

  @override
  String get couldNotLoadAccount =>
      'अस तुंदा खाता लोड नेईं करी सके। अपना कनैक्शन जांचो ते फ्ही कोशिश करो।';

  @override
  String get notARiderAccountTitle => 'एह् डिलीवरी पार्टनर खाता नेईं ऐ';

  @override
  String get notARiderAccount =>
      'एह् ईमेल जां मोबाइल नंबर पैह्लें गै कुसै होर Nexmile खाते उप्पर रजिस्टर ऐ। डिलीवरी पार्टनर बनने आस्तै साइन आउट करो ते कोई होर ईमेल जां नंबर बरतो।';

  @override
  String notARiderAccountFor(String role) {
    return 'एह् ईमेल जां मोबाइल नंबर पैह्लें गै Nexmile $role दे तौर पर रजिस्टर ऐ। डिलीवरी पार्टनर बनने आस्तै साइन आउट करो ते कोई होर ईमेल जां नंबर बरतो।';
  }

  @override
  String get roleCustomer => 'ग्राहक';

  @override
  String get roleMerchant => 'दुकानदार';

  @override
  String get roleAdmin => 'एडमिन';

  @override
  String get useAnotherAccount => 'कोई होर खाता बरतो';

  @override
  String get onboardingTitle => 'Nexmile पार्टनर बनो';

  @override
  String get onboardingSubtitle =>
      'थोह्ड़ा ब्यौरा ते तुंदे दस्तावेज़, फ्ही साढ़ी टीम तुंदी तस्दीक करदी ऐ। आमतौर पर इस च दो कम्मकाजी दिनें तगर लगदे न।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total बिच्चा कदम $current';
  }

  @override
  String get stepIdentityTitle => 'तुंदे बारै';

  @override
  String get stepIdentitySubtitle =>
      'अपना नां ठीक उस्सै चाल्ली लिखो जियां तुंदे आधार कार्ड उप्पर छपे दा ऐ।';

  @override
  String get stepVehicleTitle => 'तुंदी गड्डी';

  @override
  String get stepVehicleSubtitle =>
      'दस्सो तुस केह्ड़ी गड्डी चलांदे ओ ते उसदी नंबर प्लेट उप्पर केह् लिखे दा ऐ।';

  @override
  String get stepIdentityNumbersTitle => 'पन्छान दे नंबर';

  @override
  String get stepIdentityNumbersSubtitle =>
      'एह् उनें दस्तावेज़ें कन्नै मेल खाने चाहिदे न जेह्ड़े तुस बाद च अपलोड करगे ओ।';

  @override
  String get stepLicenceTitle => 'लाइसेंस ते बीमा';

  @override
  String get stepLicenceSubtitle =>
      'जिस दिन तुस डिलीवरी शुरू करो, उस दिन दोऐ वैध होने चाहिदे न।';

  @override
  String get stepBankTitle => 'तुंदे पैसे कुत्थें औङन';

  @override
  String get stepBankSubtitle =>
      'तुंदी कमाई इस खाते च भेजी जंदी ऐ। ध्यान कन्नै जांची लैओ।';

  @override
  String get stepDocumentsTitle => 'तुंदे दस्तावेज़';

  @override
  String get stepDocumentsSubtitle =>
      'हर इक दी फोटो बधिया रोशनी च खिच्चो। JPG, PNG जां PDF, हर इक 5 MB तगर।';

  @override
  String get stepReviewTitle => 'जांचो ते भेजो';

  @override
  String get stepReviewSubtitle =>
      'इक बारी भेजने पर, जदूं तगर साढ़ी टीम जांच नेईं करी लैंदी, तुंदा ब्यौरा लॉक रौंह्दा ऐ।';

  @override
  String get saveAndContinue => 'संभालो ते अग्गें बधो';

  @override
  String get backLabel => 'पिच्छें';

  @override
  String get fullNameLabel => 'पूरा नां';

  @override
  String get fullNameHint => 'जियां आधार उप्पर छपे दा ऐ';

  @override
  String get dateOfBirthLabel => 'जन्म तरीक';

  @override
  String get selectDate => 'तरीक चुनो';

  @override
  String get vehicleTypeLabel => 'गड्डी दी किस्म';

  @override
  String get vehicleMotorcycle => 'मोटरसाइकल';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleEv => 'इलैक्ट्रिक गड्डी';

  @override
  String get vehicleBicycle => 'साइकल';

  @override
  String get vehicleWalk => 'पैदल';

  @override
  String get vehicleNoPapersNote =>
      'गड्डी नंबर जां RC दी लोड़ नेईं। तुंदे कोला सिर्फ आधार ते PAN मंगे जाङन।';

  @override
  String get vehicleNumberLabel => 'गड्डी नंबर';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC नंबर';

  @override
  String get aadhaarLabel => 'आधार नंबर';

  @override
  String get aadhaarHint => '12 अंक';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्राइविंग लाइसेंस नंबर';

  @override
  String get drivingLicenceExpiryLabel => 'लाइसेंस कदूं तगर वैध ऐ';

  @override
  String get insuranceNumberLabel => 'बीमा पॉलिसी नंबर';

  @override
  String get insuranceExpiryLabel => 'बीमा कदूं तगर वैध ऐ';

  @override
  String get bankAccountNameLabel => 'खाताधारक दा नां';

  @override
  String get bankAccountNumberLabel => 'खाता नंबर';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total बिच्चा $done अपलोड होए';
  }

  @override
  String get uploadDocument => 'अपलोड करो';

  @override
  String get replaceDocument => 'बदलो';

  @override
  String get removeDocument => 'हटाओ';

  @override
  String get takePhoto => 'फोटो खिच्चो';

  @override
  String get chooseFromGallery => 'गैलरी चा चुनो';

  @override
  String get chooseFile => 'फाइल चुनो';

  @override
  String get uploadingLabel => 'अपलोड होआ करदा ऐ';

  @override
  String get documentRejected => 'नामंज़ूर';

  @override
  String get documentUploaded => 'अपलोड होई गेआ';

  @override
  String get documentApproved => 'मंज़ूर';

  @override
  String get documentRequired => 'लोड़ींदा';

  @override
  String get documentOptional => 'मरजी दा';

  @override
  String get fileTooLarge =>
      'एह् फाइल 5 MB थमां बड्डी ऐ। स्कैन दी जगह फोटो अजमाओ।';

  @override
  String get unsupportedFileType => 'JPG, PNG जां PDF चुनो।';

  @override
  String get pickerUnavailable =>
      'एह् नेईं खुल्ली सकेआ। ऐप गी कैमरा ते फोटो दी इजाजत ऐ जां नेईं, जांचो।';

  @override
  String get uploadFailed => 'अपलोड नेईं होई सकेआ। किरपा करियै फ्ही कोशिश करो।';

  @override
  String get submitForVerification => 'तस्दीक आस्तै भेजो';

  @override
  String get submitConfirmTitle => 'तस्दीक आस्तै भेजना ऐ?';

  @override
  String get submitConfirmBody =>
      'साढ़ी टीम दी जांच दौरान तुंदा ब्यौरा ते दस्तावेज़ लॉक रौह्ङन। फैसला होने तगर तुस इनेंगी बदली नेईं सकदे।';

  @override
  String get cancelLabel => 'रद्द करो';

  @override
  String get completeEverythingBeforeSubmitting =>
      'भेजने थमां पैह्लें हर कदम पूरा करो ते सारे दस्तावेज़ अपलोड करो।';

  @override
  String get checkTheHighlightedFields =>
      'हाइलाइट कीते गेदे खाने जांचो ते फ्ही कोशिश करो।';

  @override
  String get underReviewTitle => 'अस तुंदे दस्तावेज़ें दी तस्दीक करा करदे आं';

  @override
  String get underReviewBody =>
      'साढ़ी टीम आमतौर पर दो कम्मकाजी दिनें दे अंदर जांच करदी ऐ। मंज़ूरी मिलदे गै अस तुसेंगी दस्सगे।';

  @override
  String get checkAgain => 'फ्ही जांचो';

  @override
  String get stillUnderReview => 'हाल्ली जांच होआ करदी ऐ';

  @override
  String get rejectedTitle => 'अस तुंदी तस्दीक नेईं करी सके';

  @override
  String get rejectedBody =>
      'हेठ साढ़ी टीम जेह्ड़ी गल्ल लिखी ऐ, ओह् ठीक करो ते उसदे बाद अपने दस्तावेज़ दोबारा भेजो।';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'ठीक करियै फ्ही भेजो';

  @override
  String get blockedTitle => 'तुस हाल्ली ऑनलाइन नेईं होई सकदे';

  @override
  String get documentsExpiredMessage =>
      'तुंदे लाइसेंस जां बीमे दी मियाद खत्म होई गेई ऐ। ऑनलाइन होने आस्तै नमें दस्तावेज़ अपलोड करो।';

  @override
  String get awaitingVerificationMessage =>
      'तुंदे दस्तावेज़ें दी तस्दीक हाल्ली होआ करदी ऐ।';

  @override
  String get updateDocuments => 'दस्तावेज़ अपडेट करो';

  @override
  String get riderHomeTitle => 'चलने आस्तै त्यार';

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
      'ऑनलाइन होओ ते अस तुसेंगी नेड़े दियां डिलीवरियां भेजगे।';

  @override
  String get dutyStatusLabel => 'ड्यूटी दी हालत';

  @override
  String get dutyOnline => 'ऑनलाइन';

  @override
  String get dutyOffline => 'ऑफलाइन';

  @override
  String get dutyOnBreak => 'ब्रेक पर';

  @override
  String get goOnline => 'ऑनलाइन होओ';

  @override
  String get goOffline => 'ऑफलाइन होओ';

  @override
  String get takeABreak => 'ब्रेक लैओ';

  @override
  String get waitingForOrders => 'नेड़े दे ऑर्डरें दा इंतज़ार होआ करदा ऐ';

  @override
  String get youAreOffline =>
      'तुस ऑफलाइन ओ। तुसेंगी कोई डिलीवरी नेईं भेजी जाग।';

  @override
  String get completedDeliveriesLabel => 'पूरी होइयां डिलीवरियां';

  @override
  String get ratingLabel => 'रेटिंग';

  @override
  String get notRatedYet => 'हाल्ली कोई रेटिंग नेईं';

  @override
  String get vehicleLabel => 'गड्डी';

  @override
  String get kycStatusLabel => 'तस्दीक';

  @override
  String get kycPending => 'हाल्ली नेईं भेजेआ';

  @override
  String get kycSubmitted => 'जांच च';

  @override
  String get kycVerified => 'मंज़ूर';

  @override
  String get kycRejected => 'नामंज़ूर';

  @override
  String get fieldRequired => 'एह् खाना ज़रूरी ऐ';

  @override
  String get invalidAadhaar => 'अपने आधार नंबर दे 12 अंक पाओ';

  @override
  String get invalidPan => 'सही PAN पाओ, जियां ABCDE1234F';

  @override
  String get invalidIfsc => 'सही IFSC कोड पाओ, जियां SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'नंबर ठीक उस्सै चाल्ली पाओ जियां प्लेट उप्पर लिखे दा ऐ';

  @override
  String get invalidAccountNumber => 'सही खाता नंबर पाओ';

  @override
  String get dateMustBeFuture => 'एह् तरीक बीती गेदी ऐ';

  @override
  String get mustBeEighteen =>
      'डिलीवरी करने आस्तै तुंदी उमर घट्टोघट्ट 18 साल होनी चाहिदी ऐ';

  @override
  String get docAadhaarFront => 'आधार कार्ड (अगला पास्सा)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (पिछला पास्सा)';

  @override
  String get docDrivingLicence => 'ड्राइविंग लाइसेंस';

  @override
  String get docVehicleRc => 'गड्डी दा रजिस्ट्रेशन सर्टिफिकेट (RC)';

  @override
  String get docInsurance => 'गड्डी दा बीमा';

  @override
  String get docProfilePhoto => 'प्रोफाइल फोटो';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'रद्द कीता दा चैक जां बैंक स्टेटमैंट';

  @override
  String get ordersTab => 'ऑर्डर';

  @override
  String get deliveryTab => 'डिलीवरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'तुंदे नेड़ले ऑर्डर';

  @override
  String get orderBoardSubtitle =>
      'सारें शा नेड़ला रेस्टोरेंट पैह्लें। लिस्ट अपने आप ताज़ा होंदी रौंह्दी ऐ।';

  @override
  String orderNumberLabel(String number) {
    return 'ऑर्डर $number';
  }

  @override
  String get pickupLabel => 'पिकअप';

  @override
  String get dropoffLabel => 'डिलीवरी दा पता';

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
      other: '$count चीज़ां',
      one: '1 चीज़',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'तुंदी कमाई';

  @override
  String get collectCashLabel => 'नकद लैओ';

  @override
  String get prepaidLabel => 'ऑनलाइन भुगतान होई गेदा';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहक थमां $amount नकद लैओ';
  }

  @override
  String get nothingToCollect =>
      'भुगतान पैह्लें गै होई गेदा ऐ। पैसे नेईं मंगो।';

  @override
  String get acceptOrder => 'मंज़ूर करो';

  @override
  String get viewOrder => 'दिक्खो';

  @override
  String get orderAccepted => 'ऑर्डर मंज़ूर होई गेआ। रेस्टोरेंट पासै चलो।';

  @override
  String get orderAlreadyTaken =>
      'एह् ऑर्डर कुसै होर राइडर लेई लैता। एह् ऐ ताज़ा लिस्ट।';

  @override
  String get orderNoLongerYours => 'एह् ऑर्डर हुन तुंदा नेईं ऐ।';

  @override
  String get boardEmptyTitle => 'हुन कोई ऑर्डर नेईं';

  @override
  String get boardEmptyBody =>
      'ऑनलाइन रौह्ओ। जियां-जियां रेस्टोरेंटें च कम्म बधदा ऐ, लिस्ट अपने आप अपडेट होंदी रौंह्दी ऐ।';

  @override
  String get boardOfflineTitle => 'तुस ऑफलाइन ओ';

  @override
  String get boardOfflineBody => 'ऑर्डर लैना शुरू करने आस्तै ऑनलाइन होओ।';

  @override
  String get boardBusyTitle => 'पैह्लें अपनी डिलीवरी पूरी करो';

  @override
  String get boardBusyBody =>
      'एह् ऑर्डर डिलीवर होने बाद तुस होर ऑर्डर लेई सकदे ओ।';

  @override
  String get boardNoLocationTitle => 'असेंगी तुंदी थाह्र नेईं लब्भी';

  @override
  String get boardNoLocationBody =>
      'ऑर्डर रेस्टोरेंट दी दूरी दे हिसाब कन्नै छांटे जंदे न, इस आस्तै किश बी दस्सने आस्तै असेंगी तुंदी थाह्र दी लोड़ ऐ।';

  @override
  String get boardNotVerifiedTitle => 'हाल्ली डिलीवरी दी मंज़ूरी नेईं मिली';

  @override
  String get activeDeliveryTitle => 'तुंदी डिलीवरी';

  @override
  String get headToRestaurant => 'रेस्टोरेंट पासै चलो';

  @override
  String get deliverToCustomer => 'ग्राहक गी डिलीवर करो';

  @override
  String get noActiveDeliveryTitle => 'हत्थ च कोई ऑर्डर नेईं';

  @override
  String get noActiveDeliveryBody =>
      'लिस्ट चा कोई ऑर्डर मंज़ूर करो, ओह् इत्थै दिक्खग।';

  @override
  String get confirmPickupButton => 'मैं ऑर्डर चुक्की लैता ऐ';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle => 'रेस्टोरेंट कोला कोड मंगो ते इत्थै लिखो।';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode =>
      'कोड मेल नेईं खंदा। रेस्टोरेंट कन्नै जांची लैओ।';

  @override
  String get pickupConfirmed => 'ऑर्डर चुक्की लैता। हुन ग्राहक गी डिलीवर करो।';

  @override
  String get confirmDeliveryButton => 'डिलीवर होई गेआ';

  @override
  String get stepReachRestaurant => 'रेस्टोरेंट पुज्जो';

  @override
  String get stepPickUp => 'ऑर्डर चुक्को';

  @override
  String get stepReachCustomer => 'ग्राहक कोल पुज्जो';

  @override
  String get stepDeliver => 'डिलीवर करो';

  @override
  String get swipePickUp => 'चुक्कने पर स्वाइप करो';

  @override
  String get swipeDeliver => 'डिलीवर करने आस्तै स्वाइप करो';

  @override
  String get cashToCollectLabel => 'ग्राहक थमां लैने आह्ला नकद';

  @override
  String get confirmDeliveryTitle => 'डिलीवरी पक्की करो';

  @override
  String get confirmDeliveryBody =>
      'ग्राहक दे हत्थ च ऑर्डर पुज्जी जाने पर गै पक्का करो।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'पैह्लें ग्राहक थमां $amount नकद लैओ, फ्ही पक्का करो।';
  }

  @override
  String get deliveryConfirmed => 'डिलीवर होई गेआ। धन्यवाद, तुस फ्ही ऑनलाइन ओ।';

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
  String get releaseOrderButton => 'वापस करो';

  @override
  String get releaseOrderTitle => 'एह् ऑर्डर वापस करना ऐ?';

  @override
  String get releaseOrderBody =>
      'एह् कुसै होर राइडर आस्तै फ्ही लिस्ट च चली जाग। एह् तुस सिर्फ खाना चुक्कने थमां पैह्लें करी सकदे ओ।';

  @override
  String get releaseReasonHint => 'कारण (मरजी दा)';

  @override
  String get orderReleased =>
      'वापस करी दित्ता। एह् फ्ही दूए राइडरें आस्तै उपलब्ध ऐ।';

  @override
  String get finishCurrentOrderFirst =>
      'पैह्लें अपना हुनका ऑर्डर पूरा करो जां वापस करो।';

  @override
  String get callRestaurant => 'रेस्टोरेंट गी कॉल करो';

  @override
  String get callCustomer => 'ग्राहक गी कॉल करो';

  @override
  String get openInMaps => 'रस्ता दिक्खो';

  @override
  String get customerNoteLabel => 'ग्राहक दा नोट';

  @override
  String get orderItemsLabel => 'बैग च केह् ऐ';

  @override
  String get orderDetailsTitle => 'ऑर्डर दा ब्यौरा';

  @override
  String get historyTitle => 'पुरानियां डिलीवरियां';

  @override
  String get historyEmptyTitle => 'हाल्ली कोई डिलीवरी नेईं';

  @override
  String get historyEmptyBody =>
      'तुंदे पूरे कीते दे ऑर्डर इत्थै दिक्खने गी मिलङन।';

  @override
  String get historySearchHint => 'ऑर्डर जां रेस्टोरेंट तोपो';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'अज्ज';

  @override
  String get historyYesterday => 'कल्ल';

  @override
  String get historyEarlier => 'पैह्लें दे';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिलीवरियां',
      one: '1 डिलीवरी',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” कन्नै किश बी मेल नेईं खंदा।';
  }

  @override
  String historyCashTaken(String amount) {
    return 'नकद लैता $amount';
  }

  @override
  String get orderDelivered => 'डिलीवर होई गेदा';

  @override
  String get orderCancelled => 'रद्द होई गेआ';

  @override
  String get orderPreparing => 'त्यार होआ करदा';

  @override
  String get orderReadyForPickup => 'पिकअप आस्तै त्यार';

  @override
  String get orderAssigned => 'तुसेंगी सौंपेआ गेआ';

  @override
  String get orderPickedUp => 'चुक्की लैता';

  @override
  String get orderOutForDelivery => 'रस्ते च';

  @override
  String get trackingOn => 'थाह्र शेयरिंग चालू';

  @override
  String get locationUnavailableMessage =>
      'तुंदी थाह्र दा पता नेईं लग्गा करदा। थाह्र चालू करो ते Nexmile Rider गी इसदी इजाजत देओ।';

  @override
  String get locationPermissionTitle => 'थाह्र दी लोड़ ऐ';

  @override
  String get locationPermissionBody =>
      'ऑर्डर इस हिसाब कन्नै दित्ते जंदे न जे तुस कितने नेड़े ओ, ते ग्राहक नक्शे पर तुसेंगी दिक्खदा रौंह्दा ऐ। ऑनलाइन होने आस्तै थाह्र दी इजाजत देओ।';

  @override
  String get locationSettingsButton => 'सेटिंग्स खोह्लो';

  @override
  String get enableLocationButton => 'थाह्र दी इजाजत देओ';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'शिफ्ट';

  @override
  String get payoutsTitle => 'पेआउट';

  @override
  String get payoutsEntryValue => 'हफ्तावार कमाई';

  @override
  String get payoutDetailsTitle => 'हफ्ते दा पेआउट';

  @override
  String get payoutsEmptyTitle => 'हाल्ली कोई पेआउट नेईं';

  @override
  String get payoutsEmptyBody =>
      'हर हफ्ते दा हिसाब होने पर, उस हफ्ते दी तुंदी कमाई इत्थै दिक्खने गी मिलग।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'बकाया';

  @override
  String get payoutStatusProcessing => 'प्रोसैस होआ करदा';

  @override
  String get payoutStatusPaid => 'भुगतान होई गेआ';

  @override
  String get payoutNotSentNote =>
      'इस हफ्ते दी तुंदी कमाई दा हिसाब होई गेदा ऐ। पैसे हाल्ली तुंदे बैंक च नेईं भेजे गे।';

  @override
  String payoutPaidOn(String date) {
    return '$date गी तुंदे बैंक च भेजे गे';
  }

  @override
  String get payoutPaidNote => 'इस हफ्ते दा बैंक ट्रांसफर पूरा होई गेआ ऐ।';

  @override
  String get payoutReferenceLabel => 'ट्रांसफर रेफरेंस';

  @override
  String get payoutNetLabel => 'मिलने आह्ली रकम';

  @override
  String get payoutDeliveryEarnings => 'डिलीवरी दी कमाई';

  @override
  String get payoutReferralEarnings => 'रैफरल दी कमाई';

  @override
  String get payoutCarriedIn => 'पिछले हफ्ते थमां';

  @override
  String get payoutCarriedInNote =>
      '₹100 थमां घट्ट रकम अलग थमां ट्रांसफर नेईं कीती जंदी। उसगी अगले हफ्ते च जोड़ी दित्ता जंदा ऐ।';

  @override
  String get payoutGross => 'कुल कमाई';

  @override
  String get payoutDeductions => 'कटौतियां';

  @override
  String get payoutsLatestWeek => 'हाल दा हफ्ता';

  @override
  String get payoutsPaidSoFar => 'हुन तगर भुगतान होआ';

  @override
  String get payoutsNotYetSent => 'हाल्ली नेईं भेजे गे';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'हिसाब होई गेआ';

  @override
  String get payoutStepSending => 'भेजे जा करदे';

  @override
  String get payoutStepInBank => 'तुंदे बैंक च';

  @override
  String get navToRestaurant => 'रेस्टोरेंट पासै';

  @override
  String get navToCustomer => 'ग्राहक पासै';

  @override
  String navHeadTowards(String place) {
    return '$place पासै चलो';
  }

  @override
  String navThen(String instruction) {
    return 'फ्ही: $instruction';
  }

  @override
  String get navArrived => 'तुस पुज्जी गे ओ';

  @override
  String navArrivedAt(String place) {
    return '$place पर';
  }

  @override
  String get navFindingRoute => 'सारें शा बधिया रस्ता तोपा करदे आं…';

  @override
  String get navNoRoute =>
      'सड़क दा रस्ता उपलब्ध नेईं ऐ। सिद्धी लकीर दी दूरी दस्सी जा करदी ऐ।';

  @override
  String get navFindingLocation => 'तुंदी थाह्र तोपा करदे आं…';

  @override
  String get navLocationOff => 'रस्ता दिक्खने आस्तै थाह्र चालू करो।';

  @override
  String get navEnd => 'नेविगेशन बंद करो';

  @override
  String get navRecentre => 'फ्ही केंद्रित करो';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनट';
  }

  @override
  String get navStart => 'रस्ता दस्सो';

  @override
  String get orderReachedRestaurant => 'रेस्टोरेंट पर';

  @override
  String get orderReachedCustomer => 'ग्राहक कोल';

  @override
  String get reachedRestaurantButton => 'मैं रेस्टोरेंट पर आं';

  @override
  String get reachedCustomerButton => 'मैं ग्राहक दे पते पर आं';

  @override
  String get reachedRestaurantDone => 'रसोई गी पता ऐ जे तुस पुज्जी गे ओ';

  @override
  String get reachedCustomerDone => 'ग्राहक गी पता ऐ जे तुस बाह्र ओ';

  @override
  String get offerTitle => 'नमां ऑर्डर';

  @override
  String get offerYouEarn => 'तुंदी कमाई';

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
    return '$distance दा सफर';
  }

  @override
  String offerItems(String count) {
    return '$count चीज़ां';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount नकद लैओ';
  }

  @override
  String get offerPrepaid => 'पैह्लें गै भुगतान · नकद नेईं';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'खाना लगभग $minutes मिनटें च त्यार';
  }

  @override
  String get offerSwipeToAccept => 'मंज़ूर करने आस्तै स्वाइप करो';

  @override
  String get offerAccepting => 'मंज़ूर होआ करदा ऐ…';

  @override
  String get offerReject => 'मना करो';

  @override
  String get offerRejectTitle => 'तुस कीं मना करा करदे ओ?';

  @override
  String get offerReasonTooFar => 'बड़ा दूर';

  @override
  String get offerReasonBusy => 'हुन फुर्सत नेईं';

  @override
  String get offerReasonVehicle => 'गड्डी च खराबी';

  @override
  String get offerReasonOther => 'कोई होर कारण';

  @override
  String get offerTaken => 'कुसै होर राइडर ऑर्डर लेई लैता';

  @override
  String get offerAutoOffline =>
      '3 ऑर्डर छुट्टने कारण तुसेंगी ऑफलाइन करी दित्ता गेआ। जदूं त्यार होओ, ऑनलाइन होई जाओ।';

  @override
  String get mockLocationBlocked =>
      'ऑर्डर लैने आस्तै नकली थाह्र दस्सने आह्ला कोई बी ऐप बंद करो।';

  @override
  String get dropoffDoorLabel => 'फ्लैट / मंजल';

  @override
  String get dropoffStreetLabel => 'गली';

  @override
  String get dropoffLandmarkLabel => 'निशानी';

  @override
  String get doorPhotoLabel => 'दरवाजे दी फोटो';

  @override
  String get doorPhotoHint => 'बड्डा दिक्खने आस्तै टैप करो';

  @override
  String get doorPhotoUnavailable => 'फोटो हुन उपलब्ध नेईं ऐ';

  @override
  String permStepCount(int step, int total) {
    return '$total बिच्चा $step';
  }

  @override
  String get permNotNow => 'हुन नेईं';

  @override
  String get permLocationTitle => 'थाह्र चालू करो';

  @override
  String get permLocationBody =>
      'ऑर्डर रेस्टोरेंट दे सारें शा नेड़े दे राइडर गी जंदे न, ते ग्राहक नक्शे पर अपना खाना दिक्खदे रौंह्दे न।';

  @override
  String get permLocationNearTitle => 'तुंदे नेड़ले ऑर्डर';

  @override
  String get permLocationNearBody =>
      'अस तुसेंगी नेड़ले रेस्टोरेंटें दे ऑर्डर दिंदे आं, तां जे तुस घट्ट चलो ते मता कमाओ।';

  @override
  String get permLocationTrackTitle => 'लाइव ट्रैकिंग';

  @override
  String get permLocationTrackBody =>
      'ग्राहक तुसेंगी नक्शे पर दिक्खदे न, इस आस्तै ओह् घट्ट कॉल करदे न।';

  @override
  String get permLocationOnlineTitle => 'सिर्फ ऑनलाइन होने बेल्लै';

  @override
  String get permLocationOnlineBody =>
      'ऑफलाइन होने पर एह् बंद होई जंदा ऐ। जदूं बी एह् चलदा ऐ, इक नोटिफिकेशन दिक्खदा ऐ।';

  @override
  String get permLocationAllow => 'थाह्र दी इजाजत देओ';

  @override
  String get permNotifyTitle => 'कोई बी ऑर्डर नेईं छुट्टग';

  @override
  String get permNotifyBody =>
      'नमें ऑर्डर फोन कॉल आंह्गर बजदे न, स्क्रीन लॉक होने पर बी।';

  @override
  String get permNotifyRingTitle => 'बजने आह्ले ऑर्डर अलर्ट';

  @override
  String get permNotifyRingBody =>
      'अलर्ट थमां गै सिद्धा मंज़ूर करो जां मना करो।';

  @override
  String get permNotifyUpdatesTitle => 'पेआउट ते मंज़ूरियां';

  @override
  String get permNotifyUpdatesBody =>
      'पता लग्गग जे तुंदे दस्तावेज़ कदूं मंज़ूर होए ते पैसे कदूं भेजे गे।';

  @override
  String get permNotifyControlTitle => 'कंट्रोल तुंदे हत्थ च';

  @override
  String get permNotifyControlBody => 'अपने फोन दियां सेटिंग्स च कदी बी बदलो।';

  @override
  String get permNotifyAllow => 'नोटिफिकेशन चालू करो';

  @override
  String get permBatteryTitle => 'ऑर्डर औंदे रौह्न';

  @override
  String get permBatteryBody =>
      'बैटरी बचाने आस्तै फोन पिच्छें चलदे ऐप बंद करी दिंदे न। ऑनलाइन होने बेल्लै Nexmile Rider गी चलदा रौह्न देओ।';

  @override
  String get permBatteryOrdersTitle => 'कोई ऑर्डर नेईं छुट्टग';

  @override
  String get permBatteryOrdersBody =>
      'ऐप बंद होऐ ते फोन जेब च होऐ, तां बी ऑर्डर तुंदे तगर पुज्जदे न।';

  @override
  String get permBatteryLiveTitle => 'ट्रैकिंग चालू रौंह्दी ऐ';

  @override
  String get permBatteryLiveBody =>
      'डिलीवरी होने तगर ग्राहक तुसेंगी नक्शे पर दिक्खदे रौंह्दे न।';

  @override
  String get permBatteryLightTitle => 'बैटरी पर हल्का';

  @override
  String get permBatteryLightBody =>
      'एह् सिर्फ ऑनलाइन होने बेल्लै गै मती बैटरी बरतदा ऐ।';

  @override
  String get permBatteryAllow => 'पिच्छें चलने दी इजाजत देओ';

  @override
  String get permFullScreenTitle => 'लॉक स्क्रीन पर ऑर्डर';

  @override
  String get permFullScreenBody =>
      'नमें ऑर्डरें गी औंदी कॉल आंह्गर लॉक स्क्रीन उप्पर दिक्खन देओ, तां जे तुस इक टैप च मंज़ूर करी सको।';

  @override
  String get permFullScreenCallTitle => 'कॉल आंह्गर जवाब देओ';

  @override
  String get permFullScreenCallBody =>
      'फोन अनलॉक कीते बगैर ऑर्डर दिक्खो ते मंज़ूर करो।';

  @override
  String get permFullScreenTimeTitle => 'समें पर जवाब देओ';

  @override
  String get permFullScreenTimeBody =>
      'जिस ऑर्डर दा तुस जवाब नेईं दिंदे, ओह् कुसै होर राइडर कोल चली जंदा ऐ।';

  @override
  String get permFullScreenOnlyTitle => 'सिर्फ नमें ऑर्डरें आस्तै';

  @override
  String get permFullScreenOnlyBody =>
      'तुंदी लॉक स्क्रीन उप्पर होर किश बी कदी नेईं दिक्खदा।';

  @override
  String get setupTitle => 'फोन सेटअप';

  @override
  String get setupIntro =>
      'एह् पूरे करो तां जे ऐप बंद होने जां फोन लॉक होने पर बी नमें ऑर्डर बजन।';

  @override
  String get setupNotifications => 'नोटिफिकेशन';

  @override
  String get setupNotificationsBody =>
      'तां जे नमें ऑर्डर बजी सकन ते स्क्रीन पर आई सकन।';

  @override
  String get setupFullScreen => 'फुल-स्क्रीन ऑर्डर अलर्ट';

  @override
  String get setupFullScreenBody =>
      'नमां ऑर्डर कॉल आंह्गर तुंदी लॉक स्क्रीन उप्पर दस्सदा ऐ।';

  @override
  String get setupBattery => 'बैटरी: ऑप्टिमाइज़ नेईं करो';

  @override
  String get setupBatteryBody => 'ऑनलाइन होने बेल्लै फोन ऐप गी बंद नेईं करदा।';

  @override
  String get setupAutostart => 'ऑटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फोनें च Nexmile Rider आस्तै ऑटोस्टार्ट बी चालू करना पौंदा ऐ। सेटिंग्स खोह्लो, ऑटोस्टार्ट तोपो, ते उसी चालू करो।';
  }

  @override
  String get setupLocation => 'थाह्र';

  @override
  String get setupLocationBody =>
      'तुसेंगी नेड़े दे ऑर्डर भेजने आस्तै लोड़ींदा।';

  @override
  String get setupAllow => 'इजाजत देओ';

  @override
  String get setupOpenSettings => 'सेटिंग्स खोह्लो';

  @override
  String get setupMarkDone => 'मैं एह् करी लैता';

  @override
  String get setupDoneStep => 'होई गेआ';

  @override
  String get setupBannerTitle => 'फोन सेटअप पूरा करो';

  @override
  String setupBannerBody(String count) {
    return '$count बाकी — पूरे करो तां जे कोई ऑर्डर अलर्ट नेईं छुट्टै';
  }

  @override
  String get offerEstimatedEarnings => 'अंदाज़न कमाई';

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
    return 'तुंदे कोला लगभग $distance दूर';
  }

  @override
  String get exitTitle => 'Nexmile Rider थमां बाह्र निकलना ऐ?';

  @override
  String get exitBody => 'केह् तुस सच्चें गै ऐप थमां बाह्र निकलना चांह्दे ओ?';

  @override
  String get exitConfirm => 'बाह्र निकलो';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डिलीवरी पार्टनर बनो';

  @override
  String get onboardingWelcomeSubtitle =>
      'अपने इलाके च डिलीवरी करो, अपने कम्म दे घैंटे अपूं चुनो, ते हर हफ्ते पैसे पाओ।';

  @override
  String get onboardingWelcomeNeed => 'एह् त्यार रक्खो';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्राइविंग लाइसेंस ते गड्डी दी RC';

  @override
  String get onboardingNeedInsurance => 'गड्डी दा बीमा';

  @override
  String get onboardingNeedBank => 'बैंक खाते दा ब्यौरा';

  @override
  String get onboardingNeedNote =>
      'साइकल पर जां पैदल डिलीवरी? तुसेंगी सिर्फ आधार, PAN ते बैंक खाते दी लोड़ ऐ।';

  @override
  String get onboardingWelcomeTime => 'लगभग 10 मिनट लगदे न';

  @override
  String get onboardingGetStarted => 'शुरू करो';

  @override
  String get onboardingSavedNote =>
      'हर कदम दे बाद सुरक्षित तरीके कन्नै संभालेआ जंदा ऐ';

  @override
  String get docsTip =>
      'बधिया रोशनी च खिच्चियां साफ फोटो सारें शा जल्दी मंज़ूर होंदियां न।';

  @override
  String get docsAllDone =>
      'सारे लोड़ींदे दस्तावेज़ जमा होई गे न। जांचने आस्तै अग्गें बधो।';

  @override
  String get docGroupIdentity => 'पन्छान दा सबूत';

  @override
  String get docGroupVehicle => 'लाइसेंस ते गड्डी दे कागज़';

  @override
  String get docGroupMore => 'होर दस्तावेज़';

  @override
  String get docTapToAdd => 'जोड़ने आस्तै टैप करो';

  @override
  String get docUploading => 'अपलोड होआ करदा ऐ…';

  @override
  String get docView => 'दिक्खो';

  @override
  String get docSheetSubtitle => 'पैह्ली बारी च गै मंज़ूरी कियां लैनी ऐ';

  @override
  String get docTipCorners => 'चारै कोने फोटो दे अंदर';

  @override
  String get docTipGlare => 'साफ अक्खर, चमक जां परछावां नेईं';

  @override
  String get docTipOriginal => 'असली दस्तावेज़, फोटोकॉपी नेईं';

  @override
  String get docTipFace => 'तुंदा चेहरा साफ दिक्खै, सिद्धा सामनै दिक्खदे होई';

  @override
  String get docTipBackground => 'पिच्छें सादी कंध ते बधिया रोशनी';

  @override
  String get docTipNoCap => 'टोपी, मास्क जां काली ऐनक नेईं';

  @override
  String get docTipFullPage => 'पूरा पन्ना, जिसदी हर लाइन पढ़ी जाई सकै';

  @override
  String get docSourceCamera => 'कैमरा';

  @override
  String get docSourceGallery => 'गैलरी';

  @override
  String get docSourceFile => 'PDF जां फाइल';

  @override
  String get reviewSectionDetails => 'तुंदा ब्यौरा';

  @override
  String get reviewSectionDocuments => 'दस्तावेज़';

  @override
  String get reviewSectionBank => 'बैंक खाता';

  @override
  String get reviewBankHidden => 'जोड़ेआ गेआ · तुंदी सुरक्षा आस्तै छपाया गेदा';

  @override
  String get reviewEdit => 'सोध्दो';

  @override
  String get reviewNextTitle => 'अग्गें केह् होग';

  @override
  String get reviewNext1 => 'तुस अपनी अर्ज़ी भेजदे ओ';

  @override
  String get reviewNext2 => 'साढ़ी टीम तुंदा ब्यौरा ते दस्तावेज़ जांचदी ऐ';

  @override
  String get reviewNext3 =>
      'तुसेंगी खबर दित्ती जंदी ऐ, फ्ही ऑनलाइन होइयै कमाई शुरू करो';

  @override
  String get kycStepSubmitted => 'अर्ज़ी भेजी गेई';

  @override
  String get kycStepVerifying => 'तुंदे दस्तावेज़ें दी तस्दीक होआ करदी ऐ';

  @override
  String get kycStepApproved => 'मंज़ूर — ऑनलाइन होइयै कमाई शुरू करो';
}
