// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bodo (`brx`).
class AppLocalizationsBrx extends AppLocalizations {
  AppLocalizationsBrx([String locale = 'brx']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'गोख्रों डेलिभारि। गोदान मिनिस्लु।';

  @override
  String get chooseLanguageTitle => 'नोंथांनि राव सायख';

  @override
  String get chooseLanguageSubtitle =>
      'नोंथांनो गोसो जायो एरै रावखौ सायख। नोंथाङो बेखौ जेब्लाबाबो सेटिंसआव सोलायनो हागोन।';

  @override
  String get searchLanguageHint => 'राव नागिर';

  @override
  String get noLanguageFound => 'जेबो राव मोनाखै';

  @override
  String languagesAvailable(int count) {
    return '$count राव मोननो हायो';
  }

  @override
  String get continueLabel => 'लाबोबाय था';

  @override
  String get selectedLabel => 'सायखनाय';

  @override
  String get defaultLabel => 'डिफल्ट';

  @override
  String get homeTitle => 'Nexmile आव आजादा';

  @override
  String get homeSubtitle =>
      'गोदान किराना, गोदै आहार आरो सानफ्रोमबो नांगौ बेसादफोर नोंथांनि खात्रिनि दुखानिफ्राय।';

  @override
  String get changeLanguage => 'राव सोलाय';

  @override
  String get languageUpdated => 'राव सोलायबाय';

  @override
  String get appLanguageLabel => 'एपनि राव';

  @override
  String greetingNamed(String name) {
    return 'आजादा, $name';
  }

  @override
  String get loginTitle => 'Nexmile आव साइन इन खालाम';

  @override
  String get loginSubtitle =>
      'नोंथांनि इमेइल एबा मबाइल नामबार दा, जों थि खालामनाय कड दैथाय होगोन।';

  @override
  String get emailOrPhoneLabel => 'इमेइल एबा मबाइल नामबार';

  @override
  String get emailOrPhoneHint => 'name@example.com एबा 9876543210';

  @override
  String get invalidEmailOrPhone => 'थार इमेइल थं एबा 10 अंकनि मबाइल नामबार दा';

  @override
  String get loginHeadline =>
      'Nexmile जों डेलिभारि खालाम। नोंथांनि गावनि समाव कामाइ खालाम।';

  @override
  String get loginOrSignUp => 'साइन इन एबा साइन आप खालाम';

  @override
  String get loginEmailHint => 'नोंथांनि इमेइल थं दा';

  @override
  String get invalidEmail => 'थार इमेइल थं दा';

  @override
  String get loginHeroBadge => 'डेलिभारि पार्टनार';

  @override
  String get sendCode => 'कड दैथाय हो';

  @override
  String get agreeToTermsOnContinue =>
      'लाबोबाय थानाय जों नोंथाङो जोंनि सिबिथाइनि नेमखान्थि आरो गुबैथि नीति जों रोंगौ।';

  @override
  String get otpTitle => 'बेयो नोंथाङ नामा थि खालाम';

  @override
  String otpSubtitle(String target) {
    return '$target आव दैथाय होनाय 6 अंकनि कड दा';
  }

  @override
  String get otpHelpTitle => 'कड मोनाखै ना?';

  @override
  String get otpHelpCheck =>
      'गोजौआव थानाय नामबार एबा इमेइलखौ नाय। बेखौ सोलायनो फैफिनआव टेप खालाम।';

  @override
  String get otpHelpWait =>
      'कडआ सोसननो 1 मिनिट सिम सम लानो हागोन। टाइमारआ जोबब्ला नोंथाङो गोदान कड बिनो हागोन।';

  @override
  String get otpHelpSpam => 'इमेइलनि थाखाय, नोंथांनि स्पाम फल्डारआवबो नाय।';

  @override
  String get verifyCode => 'थि खालाम';

  @override
  String get resendCode => 'कड फिन दैथाय हो';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds सेकेन्डआव फिन दैथाय हो';
  }

  @override
  String get codeResent => 'गोदान कड दैथाय होबाय';

  @override
  String get incorrectCode => 'बे कडआ गोरोन्थि एबा समआ जोबबाय। गोदान कड बे।';

  @override
  String get enterFullCode => 'आबुं 6 अंक दा';

  @override
  String get accountSuspended =>
      'बे एकाउन्टखौ थाबाय होनाय जाबाय। अन्नानै मददनि जों सोंख्रीमा खालाम।';

  @override
  String get tooManyAttempts =>
      'गोबां बार नाजानाय जाबाय। अन्नानै मोनसे सम उनाव फिन नाजा।';

  @override
  String get sessionExpired =>
      'नोंथांनि सेसननि समआ जोबबाय। अन्नानै फिन साइन इन खालाम।';

  @override
  String get networkError => 'इन्टारनेट जोनाय गैया। जोनायखौ नाय आरो फिन नाजा।';

  @override
  String get developmentCode => 'डेभेलपमेन्ट कड';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signedOut => 'नोंथाङ साइन आउट जाबाय';

  @override
  String get somethingWentWrong => 'मा मानो गोरोन्थि जाबाय। अन्नानै फिन नाजा।';

  @override
  String get profileTitle => 'प्रफाइल';

  @override
  String get profileSectionDetails => 'नोंथांनि बिबुंथि';

  @override
  String get profileSectionWork => 'हाबा';

  @override
  String get profileSectionApp => 'एपनि सेटिंस';

  @override
  String get viewProfile => 'प्रफाइल नाय';

  @override
  String get nameLabel => 'मुं';

  @override
  String get emailLabel => 'इमेइल';

  @override
  String get mobileLabel => 'मबाइल नामबार';

  @override
  String get accountStatusLabel => 'एकाउन्टनि थाखो';

  @override
  String get statusActive => 'मावथि';

  @override
  String get statusPending => 'नेथाबाय';

  @override
  String get statusSuspended => 'थाबाय होनाय';

  @override
  String get verifiedLabel => 'थि खालामनाय';

  @override
  String get notProvided => 'दाजाबदेराखै';

  @override
  String get retry => 'फिन नाजा';

  @override
  String get loginRiderNote =>
      'बे एपआ Nexmile नि डेलिभारि पार्टनारफोरनि थाखाय।';

  @override
  String get checkingYourAccount => 'नोंथांनि एकाउन्ट नायगासिनो दङ';

  @override
  String get couldNotLoadAccount =>
      'जों नोंथांनि एकाउन्टखौ लड खालामनो हायाखै। जोनायखौ नाय आरो फिन नाजा।';

  @override
  String get notARiderAccountTitle => 'बेयो डेलिभारि पार्टनार एकाउन्ट नङा';

  @override
  String get notARiderAccount =>
      'बे इमेइल एबा मबाइल नामबारआ सिगांनोनो गुबुन मोनसे Nexmile एकाउन्टआव रेजिस्टार जानाय दङ। डेलिभारि पार्टनार महरै जोनो साइन आउट खालाम आरो गुबुन मोनसे बाहाय।';

  @override
  String notARiderAccountFor(String role) {
    return 'बे इमेइल एबा मबाइल नामबारआ सिगांनोनो Nexmile $role महरै रेजिस्टार जानाय दङ। डेलिभारि पार्टनार महरै जोनो साइन आउट खालाम आरो गुबुन मोनसे बाहाय।';
  }

  @override
  String get roleCustomer => 'गिराहा';

  @override
  String get roleMerchant => 'बेपारि';

  @override
  String get roleAdmin => 'एडमिन';

  @override
  String get useAnotherAccount => 'गुबुन एकाउन्ट बाहाय';

  @override
  String get onboardingTitle => 'Nexmile नि पार्टनार जा';

  @override
  String get onboardingSubtitle =>
      'खायसे बिबुंथि आरो नोंथांनि कागजफोर हो, बेनि उनाव जोंनि दलआ नोंथांखौ थि खालामगोन। बेयाव गोबांसिनै 2 खामानि सान सिम लायो।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total नि स्टेप $current';
  }

  @override
  String get stepIdentityTitle => 'नोंथांनि सोमोन्दै';

  @override
  String get stepIdentitySubtitle =>
      'नोंथांनि आधार कार्डआव लिरनाय बादियैनो नोंथांनि मुंखौ लिर।';

  @override
  String get stepVehicleTitle => 'नोंथांनि गारि';

  @override
  String get stepVehicleSubtitle =>
      'नोंथाङो मा गारि बाहायो आरो बिनि नामबार प्लेटआव मा नामबार दङ, जोंनो बुं।';

  @override
  String get stepIdentityNumbersTitle => 'सिनायथिनि नामबारफोर';

  @override
  String get stepIdentityNumbersSubtitle =>
      'बेफोरा नोंथाङो उनाव आपल\'ड खालामनाय कागजफोरजों गोरोबनांगोन।';

  @override
  String get stepLicenceTitle => 'लाइसेन्स आरो बिमा';

  @override
  String get stepLicenceSubtitle =>
      'नोंथाङो डेलिभारि जागायनाय सानाव मोननैनिबो समा जोबाखै थानांगोन।';

  @override
  String get stepBankTitle => 'नोंथाङो बबेयाव रां मोनगोन';

  @override
  String get stepBankSubtitle =>
      'नोंथांनि कामाइ बे एकाउन्टआव होनाय जागोन। होसियारै नाय।';

  @override
  String get stepDocumentsTitle => 'नोंथांनि कागजफोर';

  @override
  String get stepDocumentsSubtitle =>
      'मोनफ्रोमबोखौ मोजां सोरांआव सावगारि ला। JPG, PNG एबा PDF, मोनफ्रोमबो 5 MB सिम।';

  @override
  String get stepReviewTitle => 'नाय आरो दैथाय हो';

  @override
  String get stepReviewSubtitle =>
      'दैथाय होनाय उनाव, जोंनि दलआ नायफिननाय जोबनाय सिम नोंथांनि बिबुंथिखौ सोलायनो हाया।';

  @override
  String get saveAndContinue => 'थिना दोननानै लाबोबाय था';

  @override
  String get backLabel => 'फैफिन';

  @override
  String get fullNameLabel => 'आबुं मुं';

  @override
  String get fullNameHint => 'नोंथांनि आधारआव लिरनाय बादि';

  @override
  String get dateOfBirthLabel => 'जोनोमनि तारिख';

  @override
  String get selectDate => 'मोनसे तारिख सायख';

  @override
  String get vehicleTypeLabel => 'गारिनि रोखोम';

  @override
  String get vehicleMotorcycle => 'मटरसाइकेल';

  @override
  String get vehicleScooter => 'स्कुटार';

  @override
  String get vehicleEv => 'इलेक्ट्रिक गारि';

  @override
  String get vehicleBicycle => 'साइकेल';

  @override
  String get vehicleWalk => 'थाबायनानै';

  @override
  String get vehicleNoPapersNote =>
      'गारिनि नामबार एबा RC नांगौ नङा। नोंथांनिफ्राय आधार आरो PAN ल\' बिगोन।';

  @override
  String get vehicleNumberLabel => 'गारिनि नामबार';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC नामबार';

  @override
  String get aadhaarLabel => 'आधार नामबार';

  @override
  String get aadhaarHint => '12 अंक';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ड्राइभिं लाइसेन्स नामबार';

  @override
  String get drivingLicenceExpiryLabel => 'लाइसेन्सनि सम जोबनाय तारिख';

  @override
  String get insuranceNumberLabel => 'बिमा पलिसि नामबार';

  @override
  String get insuranceExpiryLabel => 'बिमानि सम जोबनाय तारिख';

  @override
  String get bankAccountNameLabel => 'एकाउन्ट गोनां सुबुंनि मुं';

  @override
  String get bankAccountNumberLabel => 'एकाउन्ट नामबार';

  @override
  String get bankIfscLabel => 'IFSC कड';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total नि $done आपल\'ड जाबाय';
  }

  @override
  String get uploadDocument => 'आपल\'ड';

  @override
  String get replaceDocument => 'सोलाय';

  @override
  String get removeDocument => 'बोखार';

  @override
  String get takePhoto => 'सावगारि ला';

  @override
  String get chooseFromGallery => 'गेलारिनिफ्राय सायख';

  @override
  String get chooseFile => 'मोनसे फाइल सायख';

  @override
  String get uploadingLabel => 'आपल\'ड जागासिनो दङ';

  @override
  String get documentRejected => 'नेवसिबाय';

  @override
  String get documentUploaded => 'आपल\'ड जाबाय';

  @override
  String get documentApproved => 'मंजुर जाबाय';

  @override
  String get documentRequired => 'गोनांथि';

  @override
  String get documentOptional => 'गोसोखां';

  @override
  String get fileTooLarge =>
      'बे फाइलआ 5 MB निख्रुइ गेदेर। स्केन नङाबालानै मोनसे सावगारि नाजा।';

  @override
  String get unsupportedFileType => 'JPG, PNG एबा PDF सायख।';

  @override
  String get pickerUnavailable =>
      'जों बेखौ खेवनो हायाखै। एपनि केमेरा आरो सावगारिनि गनायथिखौ नाय।';

  @override
  String get uploadFailed => 'बे आपल\'डआ जायाखै। अन्नानै फिन नाजा।';

  @override
  String get submitForVerification => 'थि खालामनो दैथाय हो';

  @override
  String get submitConfirmTitle => 'थि खालामनो दैथाय होनो नामा?';

  @override
  String get submitConfirmBody =>
      'जोंनि दलआ नायफिननाय समाव नोंथांनि बिबुंथि आरो कागजफोरखौ लक खालामनाय जागोन। जोंनिफ्राय फिननाय मोननाय सिम नोंथाङो बेफोरखौ सोलायनो हाया।';

  @override
  String get cancelLabel => 'बातिल खालाम';

  @override
  String get completeEverythingBeforeSubmitting =>
      'दैथाय होनायनि सिगां गासै स्टेप जोबहो आरो गासै कागज आपल\'ड खालाम।';

  @override
  String get checkTheHighlightedFields =>
      'सिन होनाय खोन्दोफोरखौ नाय आरो फिन नाजा।';

  @override
  String get underReviewTitle => 'जों नोंथांनि कागजफोरखौ थि खालामगासिनो दङ';

  @override
  String get underReviewBody =>
      'जोंनि दलआ गोबांसिनै 2 खामानि सान सिङाव नायफिनो। नोंथाङो मंजुर जाब्लानो जों नोंथांखौ मिथिहोगोन।';

  @override
  String get checkAgain => 'फिन नाय';

  @override
  String get stillUnderReview => 'दासिमबो नायफिन जागासिनो दङ';

  @override
  String get rejectedTitle => 'जों नोंथांखौ थि खालामनो हायाखै';

  @override
  String get rejectedBody =>
      'जोंनि दलआ गाहायाव लिरनाय मुवाफोरखौ सुद्राय, बेनि उनाव नोंथांनि कागजफोरखौ फिन दैथाय हो।';

  @override
  String get rejectionReasonLabel => 'जाहोन';

  @override
  String get fixAndResubmit => 'सुद्रायनानै फिन दैथाय हो';

  @override
  String get blockedTitle => 'नोंथाङो दासिम अनलाइन जानो हाया';

  @override
  String get documentsExpiredMessage =>
      'नोंथांनि लाइसेन्स एबा बिमानि समा जोबबाय। अनलाइन जानो गोदान कागज आपल\'ड खालाम।';

  @override
  String get awaitingVerificationMessage =>
      'नोंथांनि कागजफोरखौ दासिमबो थि खालामगासिनो दङ।';

  @override
  String get updateDocuments => 'कागज आपडेट खालाम';

  @override
  String get riderHomeTitle => 'डेलिभारि खालामनो थियार';

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
      'अनलाइन जा, जों नोंथांनो खात्रिनि डेलिभारिफोर दैथाय होगोन।';

  @override
  String get dutyStatusLabel => 'डिउटिनि थाखो';

  @override
  String get dutyOnline => 'अनलाइन';

  @override
  String get dutyOffline => 'अफलाइन';

  @override
  String get dutyOnBreak => 'जिरायगासिनो दङ';

  @override
  String get goOnline => 'अनलाइन जा';

  @override
  String get goOffline => 'अफलाइन जा';

  @override
  String get takeABreak => 'मोनसे सम जिराय';

  @override
  String get waitingForOrders => 'खात्रिनि अर्डारनि थाखाय नेथागासिनो दङ';

  @override
  String get youAreOffline =>
      'नोंथाङ अफलाइन दङ। नोंथांनो जेबो डेलिभारि दैथाय होनाय जाया।';

  @override
  String get completedDeliveriesLabel => 'जोबनाय डेलिभारि';

  @override
  String get ratingLabel => 'रेटिं';

  @override
  String get notRatedYet => 'दासिम रेटिं गैया';

  @override
  String get vehicleLabel => 'गारि';

  @override
  String get kycStatusLabel => 'थि खालामनाय';

  @override
  String get kycPending => 'दैथाय होआखै';

  @override
  String get kycSubmitted => 'नायफिन जागासिनो दङ';

  @override
  String get kycVerified => 'मंजुर जाबाय';

  @override
  String get kycRejected => 'नेवसिबाय';

  @override
  String get fieldRequired => 'बे खोन्दोआ नांगौ';

  @override
  String get invalidAadhaar => 'नोंथांनि आधार नामबारनि 12 अंक दा';

  @override
  String get invalidPan => 'थार PAN दा, जेरै ABCDE1234F';

  @override
  String get invalidIfsc => 'थार IFSC कड दा, जेरै SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'नामबार प्लेटआव थानाय बादियैनो नामबारखौ दा';

  @override
  String get invalidAccountNumber => 'थार एकाउन्ट नामबार दा';

  @override
  String get dateMustBeFuture => 'बे तारिखआ सिगांनोनो थांलांबाय';

  @override
  String get mustBeEighteen =>
      'डेलिभारि खालामनो नोंथांनि बैसो खमैबो 18 बोसोर जानांगोन';

  @override
  String get docAadhaarFront => 'आधार कार्ड (सिगांनि फार्से)';

  @override
  String get docAadhaarBack => 'आधार कार्ड (उननि फार्से)';

  @override
  String get docDrivingLicence => 'ड्राइभिं लाइसेन्स';

  @override
  String get docVehicleRc => 'गारिनि रेजिस्ट्रेसन सार्टिफिकेट';

  @override
  String get docInsurance => 'गारिनि बिमा';

  @override
  String get docProfilePhoto => 'प्रफाइल सावगारि';

  @override
  String get docPan => 'PAN कार्ड';

  @override
  String get docBankProof => 'बातिल खालामनाय चेक एबा बेंक स्टेटमेन्ट';

  @override
  String get ordersTab => 'अर्डार';

  @override
  String get deliveryTab => 'डेलिभारि';

  @override
  String get historyTab => 'जारिमिन';

  @override
  String get orderBoardTitle => 'नोंथांनि खात्रिनि अर्डारफोर';

  @override
  String get orderBoardSubtitle =>
      'खात्रिसिन रेस्टुरेन्टआ गिबियाव। लिस्टआ गावनोनो आपडेट जायो।';

  @override
  String orderNumberLabel(String number) {
    return 'अर्डार $number';
  }

  @override
  String get pickupLabel => 'पिकआप';

  @override
  String get dropoffLabel => 'डेलिभारि थं';

  @override
  String distanceMetres(String metres) {
    return '$metres मि';
  }

  @override
  String distanceKilometres(String km) {
    return '$km किमि';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count बेसाद',
      one: '1 बेसाद',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'नोंथांनि कामाइ';

  @override
  String get collectCashLabel => 'नगद ला';

  @override
  String get prepaidLabel => 'अनलाइनआव रां होबाय';

  @override
  String collectAtDoor(String amount) {
    return 'गिराहानिफ्राय $amount नगद ला';
  }

  @override
  String get nothingToCollect =>
      'सिगांनोनो रां होबाय। गिराहानिफ्राय रां दा बि।';

  @override
  String get acceptOrder => 'आजाव';

  @override
  String get viewOrder => 'नाय';

  @override
  String get orderAccepted => 'अर्डार आजावबाय। रेस्टुरेन्टआव थां।';

  @override
  String get orderAlreadyTaken =>
      'गुबुन मोनसे राइडारआ बेखौ लाबाय। बेयो गोदान लिस्ट।';

  @override
  String get orderNoLongerYours => 'बे अर्डारा दानो नोंथांनि नङा।';

  @override
  String get boardEmptyTitle => 'दानो जेबो अर्डार गैया';

  @override
  String get boardEmptyBody =>
      'अनलाइन थाबाय था। रेस्टुरेन्टफोराव अर्डार बांब्ला लिस्टआ गावनोनो आपडेट जागोन।';

  @override
  String get boardOfflineTitle => 'नोंथाङ अफलाइन दङ';

  @override
  String get boardOfflineBody => 'अर्डार मोननो जागायनो अनलाइन जा।';

  @override
  String get boardBusyTitle => 'गिबियाव नोंथांनि डेलिभारिखौ जोबहो';

  @override
  String get boardBusyBody =>
      'बे अर्डारखौ डेलिभारि खालामनाय उनाव नोंथाङो गुबुन अर्डार लानो हागोन।';

  @override
  String get boardNoLocationTitle => 'जों नोंथांनि जायगा मोनाखै';

  @override
  String get boardNoLocationBody =>
      'अर्डारफोरखौ रेस्टुरेन्टआ माखाथि दङ बेनि बादियै थाखो होनाय जायो, बेनि थाखाय जायखिजाया दिन्थिनोबो जोंनो नोंथांनि जायगा नांगौ।';

  @override
  String get boardNotVerifiedTitle => 'दासिम डेलिभारि खालामनो मंजुर जायाखै';

  @override
  String get activeDeliveryTitle => 'नोंथांनि डेलिभारि';

  @override
  String get headToRestaurant => 'रेस्टुरेन्टआव थां';

  @override
  String get deliverToCustomer => 'गिराहानो डेलिभारि खालाम';

  @override
  String get noActiveDeliveryTitle => 'आखायाव जेबो गैया';

  @override
  String get noActiveDeliveryBody =>
      'लिस्टनिफ्राय मोनसे अर्डार आजाव, बेयो बेयाव नुजागोन।';

  @override
  String get confirmPickupButton => 'आं बेखौ लाबाय';

  @override
  String get pickupCodeTitle => 'पिकआप कड';

  @override
  String get pickupCodeSubtitle =>
      'रेस्टुरेन्टनिफ्राय कडखौ बि आरो बेयाव टाइप खालाम।';

  @override
  String get pickupCodeHint => 'कड';

  @override
  String get wrongPickupCode =>
      'बे कडआ गोरोबाखै। रेस्टुरेन्टनिफ्राय कडखौ फिन सोंनानै नाय।';

  @override
  String get pickupConfirmed => 'लाबाय। गिराहानो डेलिभारि खालाम।';

  @override
  String get confirmDeliveryButton => 'डेलिभार जाबाय';

  @override
  String get stepReachRestaurant => 'रेस्टुरेन्टआव सोसन';

  @override
  String get stepPickUp => 'आहार ला';

  @override
  String get stepReachCustomer => 'गिराहानि थंआव सोसन';

  @override
  String get stepDeliver => 'डेलिभारि खालाम';

  @override
  String get swipePickUp => 'लाबायब्ला बोर';

  @override
  String get swipeDeliver => 'डेलिभारि खालामनो बोर';

  @override
  String get cashToCollectLabel => 'गिराहानिफ्राय लानांगौ नगद';

  @override
  String get confirmDeliveryTitle => 'डेलिभारि थि खालाम';

  @override
  String get confirmDeliveryBody =>
      'गिराहानि आखायाव अर्डार सोसनब्लासिनो थि खालाम।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'गिबियाव गिराहानिफ्राय $amount नगद ला, बेनि उनाव थि खालाम।';
  }

  @override
  String get deliveryConfirmed =>
      'डेलिभार जाबाय। साबायखर, नोंथाङ फिन अनलाइन दङ।';

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
  String get releaseOrderButton => 'फिनहो';

  @override
  String get releaseOrderTitle => 'बे अर्डारखौ फिनहोनो नामा?';

  @override
  String get releaseOrderBody =>
      'बेयो गुबुन राइडारनि थाखाय लिस्टआव फिन थांगोन। नोंथाङो आहार लानायनि सिगांसिनो बेखौ खालामनो हागोन।';

  @override
  String get releaseReasonHint => 'जाहोन (इच्छा)';

  @override
  String get orderReleased =>
      'फिनहोबाय। बेयो गुबुन राइडारफोरनि थाखाय फिन मोननो हायो।';

  @override
  String get finishCurrentOrderFirst =>
      'गिबियाव नोंथांनि दानिनि अर्डारखौ जोबहो एबा फिनहो।';

  @override
  String get callRestaurant => 'रेस्टुरेन्टखौ कल खालाम';

  @override
  String get callCustomer => 'गिराहाखौ कल खालाम';

  @override
  String get openInMaps => 'लामा दिन्थि';

  @override
  String get customerNoteLabel => 'गिराहानि नोट';

  @override
  String get orderItemsLabel => 'बेगआव मा मा दङ';

  @override
  String get orderDetailsTitle => 'अर्डारनि बिबुंथि';

  @override
  String get historyTitle => 'सिगांनि डेलिभारिफोर';

  @override
  String get historyEmptyTitle => 'दासिम जेबो डेलिभारि गैया';

  @override
  String get historyEmptyBody => 'नोंथाङो जोबनाय अर्डारफोर बेयाव नुजागोन।';

  @override
  String get historySearchHint => 'अर्डार एबा रेस्टुरेन्ट नागिर';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'दिनै';

  @override
  String get historyYesterday => 'मैया';

  @override
  String get historyEarlier => 'सिगांनि';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डेलिभारि',
      one: '1 डेलिभारि',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” जों जेबो गोरोबाखै।';
  }

  @override
  String historyCashTaken(String amount) {
    return 'नगद $amount लाबाय';
  }

  @override
  String get orderDelivered => 'डेलिभार जाबाय';

  @override
  String get orderCancelled => 'बातिल जाबाय';

  @override
  String get orderPreparing => 'बानायगासिनो दङ';

  @override
  String get orderReadyForPickup => 'लानो थियार';

  @override
  String get orderAssigned => 'नोंथांनो होबाय';

  @override
  String get orderPickedUp => 'लाबाय';

  @override
  String get orderOutForDelivery => 'लामायाव दङ';

  @override
  String get trackingOn => 'जायगा सेयार खालामगासिनो दङ';

  @override
  String get locationUnavailableMessage =>
      'जों नोंथांनि जायगा फरायनो हाया। जायगा खेव आरो Nexmile Rider नि थाखाय गनायथि हो।';

  @override
  String get locationPermissionTitle => 'जायगा नांगौ';

  @override
  String get locationPermissionBody =>
      'नोंथाङ माखाथि दङ बेनि बादियै अर्डारफोरखौ थाखो होनाय जायो, आरो गिराहाया मेपआव नोंथांखौ नायो। अनलाइन जानो जायगानि गनायथि हो।';

  @override
  String get locationSettingsButton => 'सेटिंस खेव';

  @override
  String get enableLocationButton => 'जायगानि गनायथि हो';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'सिफ्ट';

  @override
  String get payoutsTitle => 'पेआउट';

  @override
  String get payoutsEntryValue => 'सप्तानि कामाइ';

  @override
  String get payoutDetailsTitle => 'सप्तानि पेआउट';

  @override
  String get payoutsEmptyTitle => 'दासिम जेबो पेआउट गैया';

  @override
  String get payoutsEmptyBody =>
      'सप्तानि हिसाब जाब्ला, नोंथांनि सप्ताफ्रोमबोनि कामाइ बेयाव नुजागोन।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'नेथाबाय';

  @override
  String get payoutStatusProcessing => 'खामानि मावगासिनो दङ';

  @override
  String get payoutStatusPaid => 'रां होबाय';

  @override
  String get payoutNotSentNote =>
      'नोंथांनि बे सप्तानि कामाइनि हिसाब जाबाय। रांखौ दासिम नोंथांनि बेंकआव दैथाय होनाय जायाखै।';

  @override
  String payoutPaidOn(String date) {
    return '$date आव नोंथांनि बेंकआव दैथाय होबाय';
  }

  @override
  String get payoutPaidNote =>
      'बे सप्तानि रांखौ नोंथांनि बेंकआव दैथाय होनाय जाबाय।';

  @override
  String get payoutReferenceLabel => 'ट्रान्सफारनि रेफारेन्स';

  @override
  String get payoutNetLabel => 'होनांगौ रां';

  @override
  String get payoutDeliveryEarnings => 'डेलिभारिनि कामाइ';

  @override
  String get payoutReferralEarnings => 'रेफारेलनि कामाइ';

  @override
  String get payoutCarriedIn => 'सिगांनि सप्तानिफ्राय';

  @override
  String get payoutCarriedInNote =>
      '₹100 निख्रुइ खम रांखौ गावसिनो दैथाय होनाय जाया। बेनि सोलायाव बेखौ उननि सप्तानि रांजों दाजाबदेरनाय जायो।';

  @override
  String get payoutGross => 'गासै कामाइ';

  @override
  String get payoutDeductions => 'खमानाय रां';

  @override
  String get payoutsLatestWeek => 'जोबथा सप्ता';

  @override
  String get payoutsPaidSoFar => 'दासिम सिम होनाय';

  @override
  String get payoutsNotYetSent => 'दासिम दैथाय होआखै';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'हिसाब जाबाय';

  @override
  String get payoutStepSending => 'दैथाय होगासिनो दङ';

  @override
  String get payoutStepInBank => 'नोंथांनि बेंकआव';

  @override
  String get navToRestaurant => 'रेस्टुरेन्टनि फारसे';

  @override
  String get navToCustomer => 'गिराहानि फारसे';

  @override
  String navHeadTowards(String place) {
    return '$place नि फारसे थां';
  }

  @override
  String navThen(String instruction) {
    return 'बेनि उनाव: $instruction';
  }

  @override
  String get navArrived => 'नोंथाङ सोसनबाय';

  @override
  String navArrivedAt(String place) {
    return '$place आव';
  }

  @override
  String get navFindingRoute => 'बांसिन मोजां लामा नागिरगासिनो दङ…';

  @override
  String get navNoRoute =>
      'लामा दिन्थिनाय दानो मोनाकै। सोजा लाइनाव गोजानखौ दिन्थिगासिनो दङ।';

  @override
  String get navFindingLocation => 'नोंथांनि जायगा नागिरगासिनो दङ…';

  @override
  String get navLocationOff => 'नेभिगेसननि थाखाय जायगा खेव।';

  @override
  String get navEnd => 'नेभिगेसन बन्द खालाम';

  @override
  String get navRecentre => 'फिन केन्द्र खालाम';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes मिनिट';
  }

  @override
  String get navStart => 'नेभिगेसन जागाय';

  @override
  String get orderReachedRestaurant => 'रेस्टुरेन्टआव सोसनबाय';

  @override
  String get orderReachedCustomer => 'गिराहानि दरजायाव सोसनबाय';

  @override
  String get reachedRestaurantButton => 'आं रेस्टुरेन्टआव सोसनबाय';

  @override
  String get reachedCustomerButton => 'आं गिराहानि दरजायाव सोसनबाय';

  @override
  String get reachedRestaurantDone =>
      'नोंथाङ सोसनबाय होन्नानै रान्नाशालआ मिथिबाय';

  @override
  String get reachedCustomerDone =>
      'नोंथाङ दरजायाव दङ होन्नानै गिराहाया मिथिबाय';

  @override
  String get offerTitle => 'गोदान अर्डार';

  @override
  String get offerYouEarn => 'नोंथांनि कामाइ';

  @override
  String get offerPickup => 'पिकआप';

  @override
  String get offerDrop => 'ड्रप';

  @override
  String offerAway(String distance) {
    return '$distance गोजानाव';
  }

  @override
  String offerTrip(String distance) {
    return '$distance जात्रा';
  }

  @override
  String offerItems(String count) {
    return '$count बेसाद';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount नगद ला';
  }

  @override
  String get offerPrepaid => 'रां होबाय · नगद गैया';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'मोनसे $minutes मिनिट सिङाव आहार बानायनाय जोबगोन';
  }

  @override
  String get offerSwipeToAccept => 'आजावनो बोर';

  @override
  String get offerAccepting => 'आजावगासिनो दङ…';

  @override
  String get offerReject => 'नेवसि';

  @override
  String get offerRejectTitle => 'नोंथाङो मानो नेवसिगासिनो दङ?';

  @override
  String get offerReasonTooFar => 'जोबोद गोजान';

  @override
  String get offerReasonBusy => 'दानो सम गैया';

  @override
  String get offerReasonVehicle => 'गारिनि जेंना';

  @override
  String get offerReasonOther => 'गुबुन जाहोन';

  @override
  String get offerTaken => 'गुबुन राइडारआ अर्डारखौ लाबाय';

  @override
  String get offerAutoOffline =>
      '3 अर्डार आजावाखैनि थाखाय नोंथांखौ अफलाइन खालामनाय जाबाय। नोंथाङ थियार जाब्ला अनलाइन जा।';

  @override
  String get mockLocationBlocked =>
      'अर्डार मोननो जायखिजाया नकल जायगानि एपखौ बन्द खालाम।';

  @override
  String get dropoffDoorLabel => 'फ्लेट / फ्लर';

  @override
  String get dropoffStreetLabel => 'लामा';

  @override
  String get dropoffLandmarkLabel => 'सिन';

  @override
  String get doorPhotoLabel => 'दरजानि सावगारि';

  @override
  String get doorPhotoHint => 'गेदेरै नायनो टेप खालाम';

  @override
  String get doorPhotoUnavailable => 'सावगारि दानो मोनाकै';

  @override
  String permStepCount(int step, int total) {
    return '$total नि $step';
  }

  @override
  String get permNotNow => 'दानो नङा';

  @override
  String get permLocationTitle => 'जायगा खेव';

  @override
  String get permLocationBody =>
      'अर्डारफोरा रेस्टुरेन्टनि खाथिसिन थानाय राइडारनो थांयो, आरो गिराहाफोरा मेपआव गावनि आहारखौ नायो।';

  @override
  String get permLocationNearTitle => 'नोंथांनि खात्रिनि अर्डारफोर';

  @override
  String get permLocationNearBody =>
      'जों नोंथांनो खाथिनि रेस्टुरेन्टनिफ्राय अर्डार होयो, बेनि थाखाय नोंथाङो खम थांयो आरो बांसिन कामाइ खालामो।';

  @override
  String get permLocationTrackTitle => 'लाइभ ट्रेकिं';

  @override
  String get permLocationTrackBody =>
      'गिराहाफोरा मेपआव नोंथांखौ नुयो, बेनि थाखाय बिसोरा नोंथांखौ खम कल खालामो।';

  @override
  String get permLocationOnlineTitle => 'नोंथाङ अनलाइन थाब्लासिनो';

  @override
  String get permLocationOnlineBody =>
      'अफलाइन जाब्ला बेयो बन्द जागोन। बेखौ बाहायगासिनो थानाय गासै समाव मोनसे नटिफिकेसन नुजायो।';

  @override
  String get permLocationAllow => 'जायगानि गनायथि हो';

  @override
  String get permNotifyTitle => 'गासैबो अर्डारनि खोबोर मोन';

  @override
  String get permNotifyBody =>
      'नोंथांनि स्क्रिन लक थाब्लाबो गोदान अर्डारफोरा फन कल बादि रिं जायो।';

  @override
  String get permNotifyRingTitle => 'रिं जानाय अर्डार खोबोर';

  @override
  String get permNotifyRingBody => 'खोबोरनिफ्रायनो सोजानै आजाव एबा नेवसि।';

  @override
  String get permNotifyUpdatesTitle => 'पेआउट आरो मंजुरि';

  @override
  String get permNotifyUpdatesBody =>
      'नोंथांनि कागजफोर जेब्ला मंजुर जायो आरो रां जेब्ला दैथाय होनाय जायो, बेखौ मिथि।';

  @override
  String get permNotifyControlTitle => 'गासैबो नोंथांनि आखायाव';

  @override
  String get permNotifyControlBody =>
      'जेब्लाबाबो नोंथांनि फननि सेटिंसआव बेखौ सोलाय।';

  @override
  String get permNotifyAllow => 'नटिफिकेसन खेव';

  @override
  String get permBatteryTitle => 'अर्डार मोनबाय था';

  @override
  String get permBatteryBody =>
      'बेटारि रैखा खालामनो फनफोरा बेकग्राउन्डआव एपफोरखौ बन्द खालामो। नोंथाङ अनलाइन थाब्ला Nexmile Rider खौ सोलिबाय थानो हो।';

  @override
  String get permBatteryOrdersTitle => 'जेबो अर्डार गोमाया';

  @override
  String get permBatteryOrdersBody =>
      'एपआ बन्द थाब्लाबो आरो फनआ नोंथांनि जेबआव थाब्लाबो अर्डारफोरा नोंथांसो सोसनो।';

  @override
  String get permBatteryLiveTitle => 'ट्रेकिं लाइभ थायो';

  @override
  String get permBatteryLiveBody =>
      'नोंथाङो डेलिभारि खालामनाय सिम गिराहाफोरा मेपआव नोंथांखौ नुबाय थायो।';

  @override
  String get permBatteryLightTitle => 'बेटारि खम बाहायो';

  @override
  String get permBatteryLightBody =>
      'नोंथाङ अनलाइन थाब्लासिनो बेयो गोबां खामानि मावो।';

  @override
  String get permBatteryAllow => 'बेकग्राउन्डआव बाहायनो गनायथि हो';

  @override
  String get permFullScreenTitle => 'नोंथांनि लक स्क्रिनआव अर्डार';

  @override
  String get permFullScreenBody =>
      'गोदान अर्डारफोरखौ कल बादि लक स्क्रिननि सायाव नुजानो हो, बेनि थाखाय नोंथाङो मोनसे टेपनो आजावनो हागोन।';

  @override
  String get permFullScreenCallTitle => 'कल बादि आजाव';

  @override
  String get permFullScreenCallBody =>
      'फनखौ आनलक खालामै अर्डारखौ नाय आरो आजाव।';

  @override
  String get permFullScreenTimeTitle => 'समाव फिननाय हो';

  @override
  String get permFullScreenTimeBody =>
      'नोंथाङो फिननाय होयाब्ला अर्डारआ गुबुन राइडारनो थांगोन।';

  @override
  String get permFullScreenOnlyTitle => 'गोदान अर्डारनि थाखायल\'';

  @override
  String get permFullScreenOnlyBody =>
      'नोंथांनि लक स्क्रिननि सायाव गुबुन जेबो नुजाया।';

  @override
  String get setupTitle => 'फन सेटआप';

  @override
  String get setupIntro =>
      'एपआ बन्द थाब्लाबो एबा फनआ लक थाब्लाबो गोदान अर्डारफोरा रिं जानो थाखाय बेफोरखौ जोबहो।';

  @override
  String get setupNotifications => 'नटिफिकेसन';

  @override
  String get setupNotificationsBody =>
      'गोदान अर्डारफोरा रिं जानो आरो नुजानो थाखाय।';

  @override
  String get setupFullScreen => 'फुल-स्क्रिन अर्डार खोबोर';

  @override
  String get setupFullScreenBody =>
      'कल बादि नोंथांनि लक स्क्रिननि सायाव गोदान अर्डार दिन्थियो।';

  @override
  String get setupBattery => 'बेटारि: अप्टिमाइज खालामनो नङा';

  @override
  String get setupBatteryBody =>
      'नोंथाङ अनलाइन थाब्ला नोंथांनि फनआ एपखौ बन्द खालामनायखौ हेंथायो।';

  @override
  String get setupAutostart => 'अटस्टार्ट';

  @override
  String setupAutostartBody(String brand) {
    return '$brand फनफोराव Nexmile Rider नि थाखाय अटस्टार्टबो खेवनांगौ। सेटिंस खेव, अटस्टार्ट नागिर आरो बेखौ खेव।';
  }

  @override
  String get setupLocation => 'जायगा';

  @override
  String get setupLocationBody => 'नोंथांनो खाथिनि अर्डार दैथाय होनो नांगौ।';

  @override
  String get setupAllow => 'गनायथि हो';

  @override
  String get setupOpenSettings => 'सेटिंस खेव';

  @override
  String get setupMarkDone => 'आं बेखौ खालामबाय';

  @override
  String get setupDoneStep => 'जोबबाय';

  @override
  String get setupBannerTitle => 'फन सेटआप जोबहो';

  @override
  String setupBannerBody(String count) {
    return '$count बाजाय दङ। बेफोर जोबहोब्ला अर्डारनि खोबोर गोमाया';
  }

  @override
  String get offerEstimatedEarnings => 'आनजाद कामाइ';

  @override
  String offerPickupLine(String name) {
    return 'पिकआप: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ड्रप: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'नोंथांनिफ्राय मोनसे $distance गोजानाव';
  }

  @override
  String get exitTitle => 'Nexmile Rider निफ्राय ओंखारनो नामा?';

  @override
  String get exitBody => 'नोंथाङो थारैनो एपनिफ्राय ओंखारनो लुबैयो ना?';

  @override
  String get exitConfirm => 'ओंखार';

  @override
  String get onboardingWelcomeTitle => 'Nexmile नि डेलिभारि पार्टनार जा';

  @override
  String get onboardingWelcomeSubtitle =>
      'नोंथांनि बिजिराव डेलिभारि खालाम, नोंथांनि गावनि सम सायख, आरो सप्ताफ्रोमबो रां मोन।';

  @override
  String get onboardingWelcomeNeed => 'बेफोरखौ थियार दोन';

  @override
  String get onboardingNeedAadhaar => 'आधार कार्ड';

  @override
  String get onboardingNeedPan => 'PAN कार्ड';

  @override
  String get onboardingNeedLicence => 'ड्राइभिं लाइसेन्स आरो गारिनि RC';

  @override
  String get onboardingNeedInsurance => 'गारिनि बिमा';

  @override
  String get onboardingNeedBank => 'बेंक एकाउन्टनि बिबुंथि';

  @override
  String get onboardingNeedNote =>
      'साइकेलजों एबा थाबायनानै डेलिभारि खालामगोन? नोंथांनो आधार, PAN आरो मोनसे बेंक एकाउन्टल\' नांगौ।';

  @override
  String get onboardingWelcomeTime => 'मोनसे 10 मिनिट लायो';

  @override
  String get onboardingGetStarted => 'जागाय';

  @override
  String get onboardingSavedNote =>
      'स्टेप फ्रोमबोनि उनाव रैखा खालामनानै थिना दोनो';

  @override
  String get docsTip =>
      'मोजां सोरांआव लानाय साफा सावगारिफोरा गोख्रोंसिनै मंजुर जायो।';

  @override
  String get docsAllDone =>
      'गासै गोनांथि कागजफोर दाजाबदेरबाय। नायनो लाबोबाय था।';

  @override
  String get docGroupIdentity => 'सिनायथिनि प्रमान';

  @override
  String get docGroupVehicle => 'लाइसेन्स आरो गारिनि कागज';

  @override
  String get docGroupMore => 'बांसिन कागज';

  @override
  String get docTapToAdd => 'दाजाबदेरनो टेप खालाम';

  @override
  String get docUploading => 'आपल\'ड जागासिनो दङ…';

  @override
  String get docView => 'नाय';

  @override
  String get docSheetSubtitle => 'गिबि बारावनो मंजुर जानो बेबादि खालाम';

  @override
  String get docTipCorners => 'मोनब्रैबो कोना सावगारिनि सिङाव थानांगोन';

  @override
  String get docTipGlare => 'लिरनायफोर साफा, सोरां जिलिकनाय एबा साया गैया';

  @override
  String get docTipOriginal => 'आसल कागज, फोटोकपि नङा';

  @override
  String get docTipFace => 'नोंथांनि मोखां साफा नुजानांगौ, सिगांथिं सोजानै नाय';

  @override
  String get docTipBackground => 'साधारन बेकग्राउन्ड आरो मोजां सोरां';

  @override
  String get docTipNoCap => 'टुपि, मास्क एबा सानग्लास नङा';

  @override
  String get docTipFullPage => 'आबुं बिलाइ, गासै सारिखौ फरायनो हानांगौ';

  @override
  String get docSourceCamera => 'केमेरा';

  @override
  String get docSourceGallery => 'गेलारि';

  @override
  String get docSourceFile => 'PDF एबा फाइल';

  @override
  String get reviewSectionDetails => 'नोंथांनि बिबुंथि';

  @override
  String get reviewSectionDocuments => 'कागजफोर';

  @override
  String get reviewSectionBank => 'बेंक एकाउन्ट';

  @override
  String get reviewBankHidden => 'दाजाबदेरबाय · नोंथांनि रैखानि थाखाय उखुमनाय';

  @override
  String get reviewEdit => 'सुद्रायना';

  @override
  String get reviewNextTitle => 'उनाव मा जागोन';

  @override
  String get reviewNext1 => 'नोंथाङो नोंथांनि आबेदन दैथाय होयो';

  @override
  String get reviewNext2 => 'जोंनि दलआ नोंथांनि बिबुंथि आरो कागजफोरखौ नायफिनो';

  @override
  String get reviewNext3 =>
      'नोंथांखौ मिथिहोनाय जागोन, अनलाइन जा आरो कामाइ खालामनो जागाय';

  @override
  String get kycStepSubmitted => 'आबेदन दैथाय होबाय';

  @override
  String get kycStepVerifying => 'नोंथांनि कागजफोरखौ थि खालामगासिनो दङ';

  @override
  String get kycStepApproved =>
      'मंजुर जाबाय — अनलाइन जा आरो कामाइ खालामनो जागाय';
}
