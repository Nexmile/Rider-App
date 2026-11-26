// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maithili (`mai`).
class AppLocalizationsMai extends AppLocalizations {
  AppLocalizationsMai([String locale = 'mai']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'तेज डिलीवरी। ताजा मुस्कान।';

  @override
  String get chooseLanguageTitle => 'अपन भाषा चुनू';

  @override
  String get chooseLanguageSubtitle =>
      'जाहि भाषा मे अहाँ सहज छी, ओ चुनू। अहाँ एकरा कहियो सेटिंग्स मे बदलि सकैत छी।';

  @override
  String get searchLanguageHint => 'भाषा ताकू';

  @override
  String get noLanguageFound => 'कोनो भाषा नहि भेटल';

  @override
  String languagesAvailable(int count) {
    return '$count भाषा उपलब्ध अछि';
  }

  @override
  String get continueLabel => 'आगू बढ़ू';

  @override
  String get selectedLabel => 'चुनल गेल';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get homeTitle => 'Nexmile मे अहाँक स्वागत अछि';

  @override
  String get homeSubtitle =>
      'ताजा किराना, गरम भोजन आ रोजक जरूरतक सामान अहाँक लगक दोकान सँ।';

  @override
  String get changeLanguage => 'भाषा बदलू';

  @override
  String get languageUpdated => 'भाषा बदलि गेल';

  @override
  String get appLanguageLabel => 'एप्पक भाषा';

  @override
  String greetingNamed(String name) {
    return 'प्रणाम, $name';
  }

  @override
  String get loginTitle => 'Nexmile मे साइन इन करू';

  @override
  String get loginSubtitle =>
      'अपन ईमेल वा मोबाइल नंबर लिखू, हम सत्यापन कोड पठाएब।';

  @override
  String get emailOrPhoneLabel => 'ईमेल वा मोबाइल नंबर';

  @override
  String get emailOrPhoneHint => 'name@example.com वा 9876543210';

  @override
  String get invalidEmailOrPhone => 'सही ईमेल पता वा 10 अंकक मोबाइल नंबर लिखू';

  @override
  String get loginHeadline => 'Nexmile संग डिलीवरी करू। अपन समय पर कमाउ।';

  @override
  String get loginOrSignUp => 'लॉग इन वा साइन अप करू';

  @override
  String get loginEmailHint => 'अपन ईमेल पता लिखू';

  @override
  String get invalidEmail => 'सही ईमेल पता लिखू';

  @override
  String get loginHeroBadge => 'डिलीवरी पार्टनर';

  @override
  String get sendCode => 'कोड पठाबू';

  @override
  String get agreeToTermsOnContinue =>
      'आगू बढ़ला पर अहाँ हमर सेवाक शर्त आ गोपनीयता नीति सँ सहमत होइत छी।';

  @override
  String get otpTitle => 'पुष्टि करू जे ई अहाँ छी';

  @override
  String otpSubtitle(String target) {
    return '$target पर पठाओल 6 अंकक कोड लिखू';
  }

  @override
  String get otpHelpTitle => 'कोड नहि भेटल?';

  @override
  String get otpHelpCheck =>
      'ऊपर देल नंबर वा ईमेल जाँचू। बदलबाक लेल पाछाँ जाउ।';

  @override
  String get otpHelpWait =>
      'कोड आबय मे एक मिनट धरि लागि सकैत अछि। टाइमर खतम भेला पर अहाँ नव कोड मंगा सकैत छी।';

  @override
  String get otpHelpSpam => 'ईमेल लेल, अपन स्पैम फोल्डर सेहो देखू।';

  @override
  String get verifyCode => 'सत्यापित करू';

  @override
  String get resendCode => 'कोड फेर पठाबू';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकंड मे फेर पठाबू';
  }

  @override
  String get codeResent => 'नव कोड पठाओल गेल अछि';

  @override
  String get incorrectCode =>
      'ई कोड गलत अछि वा एकर समय बीति गेल। नव कोड मंगाबू।';

  @override
  String get enterFullCode => 'पूरा 6 अंक लिखू';

  @override
  String get accountSuspended =>
      'ई खाता निलंबित कऽ देल गेल अछि। कृपया सहायता सँ संपर्क करू।';

  @override
  String get tooManyAttempts =>
      'बहुत बेर कोशिश भऽ गेल। कृपया किछु समय बाद फेर कोशिश करू।';

  @override
  String get sessionExpired =>
      'अहाँक सत्र समाप्त भऽ गेल। कृपया फेर साइन इन करू।';

  @override
  String get networkError =>
      'इंटरनेट कनेक्शन नहि अछि। कनेक्शन देखू आ फेर कोशिश करू।';

  @override
  String get developmentCode => 'डेवलपमेंट कोड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'अहाँ साइन आउट भऽ गेलहुँ';

  @override
  String get somethingWentWrong => 'किछु गलत भऽ गेल। कृपया फेर कोशिश करू।';

  @override
  String get profileTitle => 'प्रोफाइल';

  @override
  String get profileSectionDetails => 'अहाँक विवरण';

  @override
  String get profileSectionWork => 'काज';

  @override
  String get profileSectionApp => 'एप्पक सेटिंग्स';

  @override
  String get viewProfile => 'प्रोफाइल देखू';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get mobileLabel => 'मोबाइल नंबर';

  @override
  String get accountStatusLabel => 'खाताक स्थिति';

  @override
  String get statusActive => 'सक्रिय';

  @override
  String get statusPending => 'विचाराधीन';

  @override
  String get statusSuspended => 'निलंबित';

  @override
  String get verifiedLabel => 'सत्यापित';

  @override
  String get notProvided => 'जोड़ल नहि गेल';

  @override
  String get retry => 'फेर कोशिश करू';

  @override
  String get loginRiderNote => 'ई एप्प Nexmile डिलीवरी पार्टनरक लेल अछि।';

  @override
  String get checkingYourAccount => 'अहाँक खाता जाँचल जा रहल अछि';

  @override
  String get couldNotLoadAccount =>
      'अहाँक खाता लोड नहि भऽ सकल। कनेक्शन देखू आ फेर कोशिश करू।';

  @override
  String get notARiderAccountTitle => 'ई डिलीवरी पार्टनर खाता नहि अछि';

  @override
  String get notARiderAccount =>
      'ई ईमेल वा मोबाइल नंबर पहिने सँ Nexmile क आन खाता पर रजिस्टर्ड अछि। डिलीवरी पार्टनरक रूप मे जुड़बाक लेल साइन आउट करू आ दोसर ईमेल वा नंबर प्रयोग करू।';

  @override
  String notARiderAccountFor(String role) {
    return 'ई ईमेल वा मोबाइल नंबर पहिने सँ Nexmile पर $role क रूप मे रजिस्टर्ड अछि। डिलीवरी पार्टनरक रूप मे जुड़बाक लेल साइन आउट करू आ दोसर ईमेल वा नंबर प्रयोग करू।';
  }

  @override
  String get roleCustomer => 'ग्राहक';

  @override
  String get roleMerchant => 'मर्चेंट';

  @override
  String get roleAdmin => 'एडमिन';

  @override
  String get useAnotherAccount => 'दोसर खाता प्रयोग करू';

  @override
  String get onboardingTitle => 'Nexmile पार्टनर बनू';

  @override
  String get onboardingSubtitle =>
      'किछु विवरण आ अहाँक कागजात, तकर बाद हमर टीम अहाँक सत्यापन करत। एहि मे सामान्यतः दू कामकाजी दिन धरि लगैत अछि।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total मे सँ चरण $current';
  }

  @override
  String get stepIdentityTitle => 'अहाँक बारे मे';

  @override
  String get stepIdentitySubtitle =>
      'अपन नाम ठीक ओहिना लिखू जेना अहाँक आधार कार्ड पर अछि।';

  @override
  String get stepVehicleTitle => 'अहाँक गाड़ी';

  @override
  String get stepVehicleSubtitle =>
      'बताउ जे अहाँ कोन गाड़ी चलबैत छी आ ओहि पर कोन नंबर प्लेट अछि।';

  @override
  String get stepIdentityNumbersTitle => 'पहिचान नंबर';

  @override
  String get stepIdentityNumbersSubtitle =>
      'ई सभ ओहि कागजात सँ मेल खेबाक चाही जे अहाँ बाद मे अपलोड करब।';

  @override
  String get stepLicenceTitle => 'लाइसेंस आ बीमा';

  @override
  String get stepLicenceSubtitle =>
      'डिलीवरी शुरू करबाक दिन दुनू मान्य होएबाक चाही।';

  @override
  String get stepBankTitle => 'पाइ कतय भेटत';

  @override
  String get stepBankSubtitle =>
      'अहाँक कमाई एही खाता मे पठाओल जाएत। एकरा ध्यान सँ जाँचि लिअ।';

  @override
  String get stepDocumentsTitle => 'अहाँक कागजात';

  @override
  String get stepDocumentsSubtitle =>
      'प्रत्येक कागजक फोटो नीक इजोत मे खींचू। JPG, PNG वा PDF, प्रत्येक 5 MB धरि।';

  @override
  String get stepReviewTitle => 'जाँचू आ जमा करू';

  @override
  String get stepReviewSubtitle =>
      'जमा कएलाक बाद, हमर टीमक जाँच पूरा होएबा धरि अहाँक विवरण लॉक रहत।';

  @override
  String get saveAndContinue => 'सहेजू आ आगू बढ़ू';

  @override
  String get backLabel => 'पाछाँ';

  @override
  String get fullNameLabel => 'पूरा नाम';

  @override
  String get fullNameHint => 'जेना अहाँक आधार पर छपल अछि';

  @override
  String get dateOfBirthLabel => 'जन्म तिथि';

  @override
  String get selectDate => 'तारीख चुनू';

  @override
  String get vehicleTypeLabel => 'गाड़ीक प्रकार';

  @override
  String get vehicleMotorcycle => 'मोटरसाइकिल';

  @override
  String get vehicleScooter => 'स्कूटर';

  @override
  String get vehicleEv => 'इलेक्ट्रिक गाड़ी';

  @override
  String get vehicleBicycle => 'साइकिल';

  @override
  String get vehicleWalk => 'पैदल';

  @override
  String get vehicleNoPapersNote =>
      'गाड़ीक नंबर वा RC नहि चाही। अहाँ सँ मात्र आधार आ PAN मांगल जाएत।';

  @override
  String get vehicleNumberLabel => 'गाड़ीक नंबर';

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
  String get drivingLicenceExpiryLabel => 'लाइसेंस कहिया धरि मान्य';

  @override
  String get insuranceNumberLabel => 'बीमा पॉलिसी नंबर';

  @override
  String get insuranceExpiryLabel => 'बीमा कहिया धरि मान्य';

  @override
  String get bankAccountNameLabel => 'खाताधारकक नाम';

  @override
  String get bankAccountNumberLabel => 'खाता नंबर';

  @override
  String get bankIfscLabel => 'IFSC कोड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total मे सँ $done अपलोड भेल';
  }

  @override
  String get uploadDocument => 'अपलोड करू';

  @override
  String get replaceDocument => 'बदलू';

  @override
  String get removeDocument => 'हटाउ';

  @override
  String get takePhoto => 'फोटो खींचू';

  @override
  String get chooseFromGallery => 'गैलरी सँ चुनू';

  @override
  String get chooseFile => 'फाइल चुनू';

  @override
  String get uploadingLabel => 'अपलोड भऽ रहल अछि';

  @override
  String get documentRejected => 'अस्वीकृत';

  @override
  String get documentUploaded => 'अपलोड भेल';

  @override
  String get documentApproved => 'स्वीकृत';

  @override
  String get documentRequired => 'अनिवार्य';

  @override
  String get documentOptional => 'वैकल्पिक';

  @override
  String get fileTooLarge => 'ई फाइल 5 MB सँ बेसी अछि। स्कैनक बदला फोटो आजमाउ।';

  @override
  String get unsupportedFileType => 'JPG, PNG वा PDF चुनू।';

  @override
  String get pickerUnavailable =>
      'ई नहि खुजि सकल। एप्पक कैमरा आ फोटोक अनुमति जाँचू।';

  @override
  String get uploadFailed => 'ई अपलोड नहि भऽ सकल। कृपया फेर कोशिश करू।';

  @override
  String get submitForVerification => 'सत्यापन लेल जमा करू';

  @override
  String get submitConfirmTitle => 'सत्यापन लेल जमा करी?';

  @override
  String get submitConfirmBody =>
      'हमर टीमक जाँच काल अहाँक विवरण आ कागजात लॉक रहत। निर्णय भेला धरि अहाँ एकरा नहि बदलि सकब।';

  @override
  String get cancelLabel => 'रद्द करू';

  @override
  String get completeEverythingBeforeSubmitting =>
      'जमा करबा सँ पहिने सब चरण पूरा करू आ सब कागजात अपलोड करू।';

  @override
  String get checkTheHighlightedFields =>
      'चिन्हित खाना सभ जाँचू आ फेर कोशिश करू।';

  @override
  String get underReviewTitle => 'हम अहाँक कागजातक सत्यापन कऽ रहल छी';

  @override
  String get underReviewBody =>
      'हमर टीम सामान्यतः दू कामकाजी दिनक भीतर जाँच करैत अछि। स्वीकृत होइते हम अहाँकेँ सूचित करब।';

  @override
  String get checkAgain => 'फेर जाँचू';

  @override
  String get stillUnderReview => 'अखनो जाँच चलि रहल अछि';

  @override
  String get rejectedTitle => 'हम अहाँक सत्यापन नहि कऽ सकलहुँ';

  @override
  String get rejectedBody =>
      'हमर टीम नीचाँ जे लिखने अछि से ठीक करू, तखन अपन कागजात फेर पठाउ।';

  @override
  String get rejectionReasonLabel => 'कारण';

  @override
  String get fixAndResubmit => 'ठीक करू आ फेर जमा करू';

  @override
  String get blockedTitle => 'अहाँ अखन ऑनलाइन नहि भऽ सकैत छी';

  @override
  String get documentsExpiredMessage =>
      'अहाँक लाइसेंस वा बीमाक अवधि खतम भऽ गेल अछि। ऑनलाइन होएबाक लेल मान्य कागजात अपलोड करू।';

  @override
  String get awaitingVerificationMessage =>
      'अहाँक कागजातक सत्यापन अखनो चलि रहल अछि।';

  @override
  String get updateDocuments => 'कागजात अपडेट करू';

  @override
  String get riderHomeTitle => 'निकलबाक लेल तैयार';

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
  String get riderHomeSubtitle => 'ऑनलाइन होउ आ हम अहाँकेँ लगक डिलीवरी पठाएब।';

  @override
  String get dutyStatusLabel => 'ड्यूटी स्थिति';

  @override
  String get dutyOnline => 'ऑनलाइन';

  @override
  String get dutyOffline => 'ऑफलाइन';

  @override
  String get dutyOnBreak => 'ब्रेक पर';

  @override
  String get goOnline => 'ऑनलाइन होउ';

  @override
  String get goOffline => 'ऑफलाइन होउ';

  @override
  String get takeABreak => 'ब्रेक लिअ';

  @override
  String get waitingForOrders => 'लगक ऑर्डरक इंतजार';

  @override
  String get youAreOffline =>
      'अहाँ ऑफलाइन छी। अहाँकेँ कोनो डिलीवरी नहि पठाओल जाएत।';

  @override
  String get completedDeliveriesLabel => 'पूरा भेल डिलीवरी';

  @override
  String get ratingLabel => 'रेटिंग';

  @override
  String get notRatedYet => 'अखन धरि कोनो रेटिंग नहि';

  @override
  String get vehicleLabel => 'गाड़ी';

  @override
  String get kycStatusLabel => 'सत्यापन';

  @override
  String get kycPending => 'जमा नहि भेल';

  @override
  String get kycSubmitted => 'जाँच चलि रहल अछि';

  @override
  String get kycVerified => 'स्वीकृत';

  @override
  String get kycRejected => 'अस्वीकृत';

  @override
  String get fieldRequired => 'ई खाना जरूरी अछि';

  @override
  String get invalidAadhaar => 'अपन आधार नंबरक 12 अंक लिखू';

  @override
  String get invalidPan => 'सही PAN लिखू, जेना ABCDE1234F';

  @override
  String get invalidIfsc => 'सही IFSC कोड लिखू, जेना SBIN0001234';

  @override
  String get invalidVehicleNumber => 'नंबर ठीक ओहिना लिखू जेना प्लेट पर अछि';

  @override
  String get invalidAccountNumber => 'सही खाता नंबर लिखू';

  @override
  String get dateMustBeFuture => 'ई तारीख बीति गेल अछि';

  @override
  String get mustBeEighteen =>
      'डिलीवरी करबाक लेल अहाँक उमेर कम सँ कम 18 बरख होएबाक चाही';

  @override
  String get docAadhaarFront => 'आधार कार्ड (आगूक भाग)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (पाछूक भाग)';

  @override
  String get docDrivingLicence => 'ड्राइविंग लाइसेंस';

  @override
  String get docVehicleRc => 'गाड़ीक रजिस्ट्रेशन सर्टिफिकेट';

  @override
  String get docInsurance => 'गाड़ीक बीमा';

  @override
  String get docProfilePhoto => 'प्रोफाइल फोटो';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'कैंसल चेक वा बैंक स्टेटमेंट';

  @override
  String get ordersTab => 'ऑर्डर';

  @override
  String get deliveryTab => 'डिलीवरी';

  @override
  String get historyTab => 'इतिहास';

  @override
  String get orderBoardTitle => 'अहाँक लगक ऑर्डर';

  @override
  String get orderBoardSubtitle =>
      'सभसँ लगक रेस्टोरेंट पहिने। सूची अपने-आप अपडेट होइत अछि।';

  @override
  String orderNumberLabel(String number) {
    return 'ऑर्डर $number';
  }

  @override
  String get pickupLabel => 'पिकअप';

  @override
  String get dropoffLabel => 'डिलीवरी पता';

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
      other: '$count वस्तु',
      one: '1 वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'अहाँक कमाई';

  @override
  String get collectCashLabel => 'नगद लिअ';

  @override
  String get prepaidLabel => 'ऑनलाइन भुगतान भऽ गेल';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहक सँ $amount लिअ';
  }

  @override
  String get nothingToCollect => 'भुगतान भऽ गेल अछि। पाइ नहि मांगू।';

  @override
  String get acceptOrder => 'स्वीकार करू';

  @override
  String get viewOrder => 'देखू';

  @override
  String get orderAccepted => 'ऑर्डर स्वीकार भेल। रेस्टोरेंट दिस चलू।';

  @override
  String get orderAlreadyTaken =>
      'ई ऑर्डर दोसर राइडर लऽ लेलनि। ई रहल नवीनतम सूची।';

  @override
  String get orderNoLongerYours => 'ई ऑर्डर आब अहाँक नहि अछि।';

  @override
  String get boardEmptyTitle => 'अखन कोनो ऑर्डर नहि';

  @override
  String get boardEmptyBody =>
      'ऑनलाइन रहू। रेस्टोरेंट मे काज बढ़ला पर सूची अपने-आप अपडेट होइत अछि।';

  @override
  String get boardOfflineTitle => 'अहाँ ऑफलाइन छी';

  @override
  String get boardOfflineBody => 'ऑर्डर भेटब शुरू करबाक लेल ऑनलाइन होउ।';

  @override
  String get boardBusyTitle => 'पहिने अपन डिलीवरी पूरा करू';

  @override
  String get boardBusyBody =>
      'ई ऑर्डर डिलीवर भेलाक बाद अहाँ दोसर ऑर्डर लऽ सकैत छी।';

  @override
  String get boardNoLocationTitle => 'अहाँक स्थान नहि भेटि रहल अछि';

  @override
  String get boardNoLocationBody =>
      'ऑर्डर रेस्टोरेंटक दूरीक हिसाब सँ सजाओल जाइत अछि, तेँ किछु देखेबाक लेल हमरा अहाँक स्थान चाही।';

  @override
  String get boardNotVerifiedTitle => 'डिलीवरी लेल अखन स्वीकृत नहि';

  @override
  String get activeDeliveryTitle => 'अहाँक डिलीवरी';

  @override
  String get headToRestaurant => 'रेस्टोरेंट दिस चलू';

  @override
  String get deliverToCustomer => 'ग्राहक केँ डिलीवर करू';

  @override
  String get noActiveDeliveryTitle => 'हाथ मे कोनो ऑर्डर नहि';

  @override
  String get noActiveDeliveryBody =>
      'सूची सँ कोनो ऑर्डर स्वीकार करू, ओ एतय देखाएत।';

  @override
  String get confirmPickupButton => 'हम ऑर्डर लऽ लेलहुँ';

  @override
  String get pickupCodeTitle => 'पिकअप कोड';

  @override
  String get pickupCodeSubtitle => 'रेस्टोरेंट सँ कोड मांगू आ एतय लिखू।';

  @override
  String get pickupCodeHint => 'कोड';

  @override
  String get wrongPickupCode => 'ई कोड मेल नहि खेलक। रेस्टोरेंट सँ जाँचि लिअ।';

  @override
  String get pickupConfirmed => 'पिकअप भऽ गेल। ग्राहक केँ डिलीवर करू।';

  @override
  String get confirmDeliveryButton => 'डिलीवर भऽ गेल';

  @override
  String get stepReachRestaurant => 'रेस्टोरेंट पहुँचू';

  @override
  String get stepPickUp => 'पिकअप करू';

  @override
  String get stepReachCustomer => 'ग्राहक लग पहुँचू';

  @override
  String get stepDeliver => 'डिलीवर करू';

  @override
  String get swipePickUp => 'ऑर्डर लेलाक बाद स्वाइप करू';

  @override
  String get swipeDeliver => 'डिलीवर करबाक लेल स्वाइप करू';

  @override
  String get cashToCollectLabel => 'ग्राहक सँ लेबाक नगद';

  @override
  String get confirmDeliveryTitle => 'डिलीवरी पक्का करू';

  @override
  String get confirmDeliveryBody =>
      'ग्राहकक हाथ मे ऑर्डर पहुँचलाक बादे पक्का करू।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'पहिने ग्राहक सँ $amount लिअ, तखन पक्का करू।';
  }

  @override
  String get deliveryConfirmed => 'डिलीवर भऽ गेल। धन्यवाद, अहाँ फेर ऑनलाइन छी।';

  @override
  String get releaseOrderButton => 'वापस करू';

  @override
  String get releaseOrderTitle => 'ई ऑर्डर वापस करी?';

  @override
  String get releaseOrderBody =>
      'ई दोसर राइडरक लेल फेर सूची मे चलि जाएत। ई अहाँ भोजन लेबा सँ पहिनहि कऽ सकैत छी।';

  @override
  String get releaseReasonHint => 'कारण (वैकल्पिक)';

  @override
  String get orderReleased =>
      'वापस भऽ गेल। ई फेर सँ दोसर राइडर लेल उपलब्ध अछि।';

  @override
  String get finishCurrentOrderFirst =>
      'पहिने अपन चालू ऑर्डर पूरा करू वा वापस करू।';

  @override
  String get callRestaurant => 'रेस्टोरेंट केँ कॉल करू';

  @override
  String get callCustomer => 'ग्राहक केँ कॉल करू';

  @override
  String get openInMaps => 'रास्ता देखू';

  @override
  String get customerNoteLabel => 'ग्राहकक नोट';

  @override
  String get orderItemsLabel => 'बैग मे की अछि';

  @override
  String get orderDetailsTitle => 'ऑर्डरक विवरण';

  @override
  String get historyTitle => 'पुरान डिलीवरी';

  @override
  String get historyEmptyTitle => 'अखन धरि कोनो डिलीवरी नहि';

  @override
  String get historyEmptyBody => 'अहाँ जे ऑर्डर पूरा कएने छी, से एतय देखाएत।';

  @override
  String get historySearchHint => 'ऑर्डर वा रेस्टोरेंट ताकू';

  @override
  String get historyToday => 'आइ';

  @override
  String get historyYesterday => 'काल्हि';

  @override
  String get historyEarlier => 'पहिलुका';

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
    return '“$query” सँ किछु मेल नहि खाइत अछि।';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount नगद लेलहुँ';
  }

  @override
  String get orderDelivered => 'डिलीवर भऽ गेल';

  @override
  String get orderCancelled => 'रद्द भऽ गेल';

  @override
  String get orderPreparing => 'तैयार भऽ रहल अछि';

  @override
  String get orderReadyForPickup => 'पिकअप लेल तैयार';

  @override
  String get orderAssigned => 'अहाँकेँ देल गेल';

  @override
  String get orderPickedUp => 'पिकअप भऽ गेल';

  @override
  String get orderOutForDelivery => 'रास्ता मे';

  @override
  String get trackingOn => 'लोकेशन शेयरिंग चालू';

  @override
  String get locationUnavailableMessage =>
      'अहाँक स्थान नहि पढ़ल जा रहल अछि। स्थान चालू करू आ Nexmile Rider केँ अनुमति दिअ।';

  @override
  String get locationPermissionTitle => 'स्थान चाही';

  @override
  String get locationPermissionBody =>
      'ऑर्डर अहाँक दूरीक हिसाब सँ भेटैत अछि, आ ग्राहक नक्शा पर अहाँकेँ देखैत छथि। ऑनलाइन होएबाक लेल स्थानक अनुमति दिअ।';

  @override
  String get locationSettingsButton => 'सेटिंग्स खोलू';

  @override
  String get enableLocationButton => 'स्थानक अनुमति दिअ';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'शिफ्ट';

  @override
  String get payoutsTitle => 'भुगतान';

  @override
  String get payoutsEntryValue => 'साप्ताहिक कमाई';

  @override
  String get payoutDetailsTitle => 'साप्ताहिक भुगतान';

  @override
  String get payoutsEmptyTitle => 'अखन धरि कोनो भुगतान नहि';

  @override
  String get payoutsEmptyBody =>
      'सप्ताहक हिसाब भेलाक बाद प्रत्येक सप्ताहक अहाँक कमाई एतय देखाएत।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'भुगतान बाँकी';

  @override
  String get payoutStatusProcessing => 'प्रक्रिया मे';

  @override
  String get payoutStatusPaid => 'भुगतान भऽ गेल';

  @override
  String get payoutNotSentNote =>
      'एहि सप्ताहक अहाँक कमाईक हिसाब भऽ गेल अछि। पाइ अखन धरि अहाँक बैंक मे नहि पठाओल गेल अछि।';

  @override
  String payoutPaidOn(String date) {
    return '$date केँ अहाँक बैंक मे पठाओल गेल';
  }

  @override
  String get payoutPaidNote => 'एहि सप्ताहक बैंक ट्रांसफर पूरा भऽ गेल अछि।';

  @override
  String get payoutReferenceLabel => 'ट्रांसफर रेफरेंस';

  @override
  String get payoutNetLabel => 'देय राशि';

  @override
  String get payoutDeliveryEarnings => 'डिलीवरीक कमाई';

  @override
  String get payoutReferralEarnings => 'रेफरलक कमाई';

  @override
  String get payoutCarriedIn => 'पहिलुका सप्ताह सँ';

  @override
  String get payoutCarriedInNote =>
      '₹100 सँ कमक राशि असगर नहि पठाओल जाइत अछि। ओ अगिला सप्ताह मे जोड़ि देल जाइत अछि।';

  @override
  String get payoutGross => 'कुल कमाई';

  @override
  String get payoutDeductions => 'कटौती';

  @override
  String get payoutsLatestWeek => 'नवीनतम सप्ताह';

  @override
  String get payoutsPaidSoFar => 'अखन धरि भुगतान भेल';

  @override
  String get payoutsNotYetSent => 'अखन धरि नहि पठाओल गेल';

  @override
  String get payoutStepWorkedOut => 'हिसाब भेल';

  @override
  String get payoutStepSending => 'पठाओल जा रहल';

  @override
  String get payoutStepInBank => 'अहाँक बैंक मे';

  @override
  String get navToRestaurant => 'रेस्टोरेंट दिस';

  @override
  String get navToCustomer => 'ग्राहक दिस';

  @override
  String navHeadTowards(String place) {
    return '$place दिस चलू';
  }

  @override
  String navThen(String instruction) {
    return 'तकर बाद: $instruction';
  }

  @override
  String get navArrived => 'अहाँ पहुँचि गेलहुँ';

  @override
  String navArrivedAt(String place) {
    return '$place पर';
  }

  @override
  String get navFindingRoute => 'सभसँ नीक रास्ता ताकि रहल छी…';

  @override
  String get navNoRoute =>
      'सड़कक रास्ता उपलब्ध नहि अछि। सीधा दूरी देखाओल जा रहल अछि।';

  @override
  String get navFindingLocation => 'अहाँक स्थान ताकि रहल छी…';

  @override
  String get navLocationOff => 'नेविगेशन लेल स्थान चालू करू।';

  @override
  String get navEnd => 'नेविगेशन बन्द करू';

  @override
  String get navRecentre => 'केंद्रित करू';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनट';
  }

  @override
  String get navStart => 'नेविगेट करू';

  @override
  String get orderReachedRestaurant => 'रेस्टोरेंट पर';

  @override
  String get orderReachedCustomer => 'ग्राहक लग';

  @override
  String get reachedRestaurantButton => 'हम रेस्टोरेंट पहुँचि गेलहुँ';

  @override
  String get reachedCustomerButton => 'हम ग्राहक लग पहुँचि गेलहुँ';

  @override
  String get reachedRestaurantDone => 'रसोई केँ खबरि भऽ गेल जे अहाँ आबि गेलहुँ';

  @override
  String get reachedCustomerDone => 'ग्राहक केँ खबरि भऽ गेल जे अहाँ बाहर छी';

  @override
  String get offerTitle => 'नव ऑर्डर';

  @override
  String get offerYouEarn => 'अहाँक कमाई';

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
    return '$distance क यात्रा';
  }

  @override
  String offerItems(String count) {
    return '$count वस्तु';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount नगद लिअ';
  }

  @override
  String get offerPrepaid => 'पहिने सँ भुगतान · नगद नहि';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'भोजन लगभग $minutes मिनट मे तैयार';
  }

  @override
  String get offerSwipeToAccept => 'स्वीकार करबाक लेल स्वाइप करू';

  @override
  String get offerAccepting => 'स्वीकार भऽ रहल अछि…';

  @override
  String get offerReject => 'मना करू';

  @override
  String get offerRejectTitle => 'अहाँ किएक मना कऽ रहल छी?';

  @override
  String get offerReasonTooFar => 'बहुत दूर';

  @override
  String get offerReasonBusy => 'अखन व्यस्त छी';

  @override
  String get offerReasonVehicle => 'गाड़ी मे खराबी';

  @override
  String get offerReasonOther => 'आन कारण';

  @override
  String get offerTaken => 'दोसर राइडर ऑर्डर लऽ लेलनि';

  @override
  String get offerAutoOffline =>
      '3 ऑर्डर छुटलाक बाद अहाँकेँ ऑफलाइन कऽ देल गेल। तैयार भेला पर ऑनलाइन होउ।';

  @override
  String get mockLocationBlocked =>
      'ऑर्डर भेटबाक लेल कोनो नकली लोकेशन एप्प बन्द करू।';

  @override
  String get dropoffDoorLabel => 'फ्लैट / मंजिल';

  @override
  String get dropoffStreetLabel => 'गली';

  @override
  String get dropoffLandmarkLabel => 'चिन्ह';

  @override
  String get doorPhotoLabel => 'दरवाजाक फोटो';

  @override
  String get doorPhotoHint => 'पैघ देखबाक लेल दबाउ';

  @override
  String get doorPhotoUnavailable => 'फोटो अखन उपलब्ध नहि अछि';

  @override
  String permStepCount(int step, int total) {
    return '$total मे सँ $step';
  }

  @override
  String get permNotNow => 'अखन नहि';

  @override
  String get permLocationTitle => 'स्थान चालू करू';

  @override
  String get permLocationBody =>
      'ऑर्डर रेस्टोरेंटक सभसँ लगक राइडर केँ जाइत अछि, आ ग्राहक नक्शा पर अपन भोजन देखैत छथि।';

  @override
  String get permLocationNearTitle => 'अहाँक लगक ऑर्डर';

  @override
  String get permLocationNearBody =>
      'हम अहाँकेँ लगक रेस्टोरेंटक ऑर्डर दैत छी, जाहि सँ अहाँ कम चलब आ बेसी कमाएब।';

  @override
  String get permLocationTrackTitle => 'लाइव ट्रैकिंग';

  @override
  String get permLocationTrackBody =>
      'ग्राहक अहाँकेँ नक्शा पर देखैत छथि, तेँ ओ अहाँकेँ कम फोन करैत छथि।';

  @override
  String get permLocationOnlineTitle => 'मात्र ऑनलाइन रहला पर';

  @override
  String get permLocationOnlineBody =>
      'ऑफलाइन होइते ई बन्द भऽ जाइत अछि। जखन एकर प्रयोग होइत अछि, एकटा सूचना देखाइत अछि।';

  @override
  String get permLocationAllow => 'स्थानक अनुमति दिअ';

  @override
  String get permNotifyTitle => 'कोनो ऑर्डर नहि छुटत';

  @override
  String get permNotifyBody =>
      'नव ऑर्डरक घंटी फोन कॉल जकाँ बजैत अछि, स्क्रीन लॉक रहलो पर।';

  @override
  String get permNotifyRingTitle => 'घंटी बजय बला ऑर्डर अलर्ट';

  @override
  String get permNotifyRingBody => 'अलर्ट सँ सीधा स्वीकार करू वा मना करू।';

  @override
  String get permNotifyUpdatesTitle => 'भुगतान आ स्वीकृति';

  @override
  String get permNotifyUpdatesBody =>
      'जानू जे अहाँक कागजात कखन स्वीकृत भेल आ पाइ कखन पठाओल गेल।';

  @override
  String get permNotifyControlTitle => 'नियंत्रण अहाँक हाथ मे';

  @override
  String get permNotifyControlBody =>
      'फोनक सेटिंग्स मे जा कऽ कखनो बदलि सकैत छी।';

  @override
  String get permNotifyAllow => 'सूचना चालू करू';

  @override
  String get permBatteryTitle => 'ऑर्डर अबैत रहय';

  @override
  String get permBatteryBody =>
      'बैटरी बचेबाक लेल फोन पृष्ठभूमि मे एप्प बन्द कऽ दैत अछि। ऑनलाइन रहबा काल Nexmile Rider केँ चलैत रहय दिअ।';

  @override
  String get permBatteryOrdersTitle => 'कोनो ऑर्डर नहि छुटत';

  @override
  String get permBatteryOrdersBody =>
      'एप्प बन्द रहलो पर आ फोन जेबी मे रहलो पर ऑफर अहाँ धरि पहुँचैत अछि।';

  @override
  String get permBatteryLiveTitle => 'ट्रैकिंग लाइव रहैत अछि';

  @override
  String get permBatteryLiveBody =>
      'डिलीवरी धरि ग्राहक अहाँकेँ नक्शा पर देखैत रहैत छथि।';

  @override
  String get permBatteryLightTitle => 'बैटरी कम खर्च';

  @override
  String get permBatteryLightBody =>
      'ई मात्र ऑनलाइन रहबा काल बेसी काज करैत अछि।';

  @override
  String get permBatteryAllow => 'पृष्ठभूमि मे चलबाक अनुमति दिअ';

  @override
  String get permFullScreenTitle => 'लॉक स्क्रीन पर ऑर्डर';

  @override
  String get permFullScreenBody =>
      'नव ऑर्डर केँ अबैत कॉल जकाँ लॉक स्क्रीनक ऊपर देखाबय दिअ, जाहि सँ अहाँ एक टैप मे स्वीकार कऽ सकी।';

  @override
  String get permFullScreenCallTitle => 'कॉल जकाँ उठाउ';

  @override
  String get permFullScreenCallBody =>
      'फोन अनलॉक कएने बिना ऑर्डर देखू आ स्वीकार करू।';

  @override
  String get permFullScreenTimeTitle => 'समय पर जवाब दिअ';

  @override
  String get permFullScreenTimeBody =>
      'जाहि ऑफरक जवाब अहाँ नहि देब, ओ दोसर राइडर लग चलि जाएत।';

  @override
  String get permFullScreenOnlyTitle => 'मात्र नव ऑर्डरक लेल';

  @override
  String get permFullScreenOnlyBody =>
      'अहाँक लॉक स्क्रीन पर आओर किछु कहियो नहि देखाएत।';

  @override
  String get setupTitle => 'फोन सेटअप';

  @override
  String get setupIntro =>
      'ई सभ पूरा करू, जाहि सँ एप्प बन्द रहलो पर वा फोन लॉक रहलो पर नव ऑर्डरक घंटी बजय।';

  @override
  String get setupNotifications => 'सूचना';

  @override
  String get setupNotificationsBody => 'जाहि सँ नव ऑर्डरक घंटी बजय आ ओ देखाए।';

  @override
  String get setupFullScreen => 'फुल-स्क्रीन ऑर्डर अलर्ट';

  @override
  String get setupFullScreenBody =>
      'नव ऑर्डर केँ कॉल जकाँ अहाँक लॉक स्क्रीन पर देखबैत अछि।';

  @override
  String get setupBattery => 'बैटरी: ऑप्टिमाइज नहि करू';

  @override
  String get setupBatteryBody =>
      'ऑनलाइन रहबा काल फोन केँ एप्प बन्द करबा सँ रोकैत अछि।';

  @override
  String get setupAutostart => 'ऑटोस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फोन पर Nexmile Rider लेल ऑटोस्टार्ट सेहो चालू होएबाक चाही। सेटिंग्स खोलू, ऑटोस्टार्ट ताकू आ ओकरा चालू करू।';
  }

  @override
  String get setupLocation => 'स्थान';

  @override
  String get setupLocationBody => 'लगक ऑर्डर पठेबाक लेल जरूरी।';

  @override
  String get setupAllow => 'अनुमति दिअ';

  @override
  String get setupOpenSettings => 'सेटिंग्स खोलू';

  @override
  String get setupMarkDone => 'हम ई कऽ लेलहुँ';

  @override
  String get setupDoneStep => 'भऽ गेल';

  @override
  String get setupBannerTitle => 'फोन सेटअप पूरा करू';

  @override
  String setupBannerBody(String count) {
    return '$count चरण बाँकी, जाहि सँ कोनो ऑर्डर अलर्ट नहि छुटय';
  }

  @override
  String get offerEstimatedEarnings => 'अनुमानित कमाई';

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
    return 'अहाँ सँ लगभग $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider सँ बाहर निकलब?';

  @override
  String get exitBody => 'की अहाँ सत्ते एप्प सँ बाहर निकलय चाहैत छी?';

  @override
  String get exitConfirm => 'बाहर निकलू';

  @override
  String get onboardingWelcomeTitle => 'Nexmile डिलीवरी पार्टनर बनू';

  @override
  String get onboardingWelcomeSubtitle =>
      'अपन इलाका मे डिलीवरी करू, अपन समय स्वयं चुनू, आ हर सप्ताह भुगतान पाउ।';

  @override
  String get onboardingWelcomeNeed => 'ई सभ तैयार राखू';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्राइविंग लाइसेंस आ गाड़ीक RC';

  @override
  String get onboardingNeedInsurance => 'गाड़ीक बीमा';

  @override
  String get onboardingNeedBank => 'बैंक खाताक विवरण';

  @override
  String get onboardingNeedNote =>
      'साइकिल सँ वा पैदल डिलीवरी करब? अहाँकेँ मात्र आधार, PAN आ बैंक खाता चाही।';

  @override
  String get onboardingWelcomeTime => 'लगभग 10 मिनट लगैत अछि';

  @override
  String get onboardingGetStarted => 'शुरू करू';

  @override
  String get onboardingSavedNote =>
      'प्रत्येक चरणक बाद सुरक्षित रूप सँ सहेजल जाइत अछि';

  @override
  String get docsTip =>
      'नीक इजोत मे खींचल साफ फोटो सभसँ जल्दी स्वीकृत होइत अछि।';

  @override
  String get docsAllDone => 'सब जरूरी कागजात जमा भऽ गेल। जाँच लेल आगू बढ़ू।';

  @override
  String get docGroupIdentity => 'पहिचानक प्रमाण';

  @override
  String get docGroupVehicle => 'लाइसेंस आ गाड़ीक कागजात';

  @override
  String get docGroupMore => 'आओर कागजात';

  @override
  String get docTapToAdd => 'जोड़बाक लेल दबाउ';

  @override
  String get docUploading => 'अपलोड भऽ रहल अछि…';

  @override
  String get docView => 'देखू';

  @override
  String get docSheetSubtitle => 'पहिल बेर मे कोना स्वीकृत कराबी';

  @override
  String get docTipCorners => 'चारू कोना फोटोक भीतर';

  @override
  String get docTipGlare => 'साफ अक्षर, कोनो चमक वा छाया नहि';

  @override
  String get docTipOriginal => 'असली कागजात, फोटोकॉपी नहि';

  @override
  String get docTipFace => 'अहाँक चेहरा साफ देखाइ, सीधा सामने देखैत';

  @override
  String get docTipBackground => 'सादा पृष्ठभूमि आ नीक इजोत';

  @override
  String get docTipNoCap => 'टोपी, मास्क वा धूपक चश्मा नहि';

  @override
  String get docTipFullPage => 'पूरा पन्ना, प्रत्येक पंक्ति पढ़ल जा सकय';

  @override
  String get docSourceCamera => 'कैमरा';

  @override
  String get docSourceGallery => 'गैलरी';

  @override
  String get docSourceFile => 'PDF वा फाइल';

  @override
  String get reviewSectionDetails => 'अहाँक विवरण';

  @override
  String get reviewSectionDocuments => 'कागजात';

  @override
  String get reviewSectionBank => 'बैंक खाता';

  @override
  String get reviewBankHidden => 'जोड़ल गेल · अहाँक सुरक्षा लेल नुकाएल';

  @override
  String get reviewEdit => 'संपादित करू';

  @override
  String get reviewNextTitle => 'आगू की होएत';

  @override
  String get reviewNext1 => 'अहाँ अपन आवेदन जमा करैत छी';

  @override
  String get reviewNext2 => 'हमर टीम अहाँक विवरण आ कागजात जाँचैत अछि';

  @override
  String get reviewNext3 => 'अहाँकेँ सूचना भेटत, ऑनलाइन होउ आ कमाई शुरू करू';

  @override
  String get kycStepSubmitted => 'आवेदन जमा भेल';

  @override
  String get kycStepVerifying => 'अहाँक कागजातक सत्यापन भऽ रहल अछि';

  @override
  String get kycStepApproved => 'स्वीकृत — ऑनलाइन होउ आ कमाई शुरू करू';
}
