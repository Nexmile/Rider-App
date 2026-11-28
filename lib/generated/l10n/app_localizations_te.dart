// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'వేగవంతమైన డెలివరీ. తాజా చిరునవ్వులు.';

  @override
  String get chooseLanguageTitle => 'మీ భాషను ఎంచుకోండి';

  @override
  String get chooseLanguageSubtitle =>
      'మీకు సౌకర్యంగా ఉండే భాషను ఎంచుకోండి. దీన్ని ఎప్పుడైనా సెట్టింగ్‌లలో మార్చుకోవచ్చు.';

  @override
  String get searchLanguageHint => 'భాషను వెతకండి';

  @override
  String get noLanguageFound => 'ఏ భాష కనబడలేదు';

  @override
  String languagesAvailable(int count) {
    return '$count భాషలు అందుబాటులో ఉన్నాయి';
  }

  @override
  String get continueLabel => 'కొనసాగించు';

  @override
  String get selectedLabel => 'ఎంపిక చేయబడింది';

  @override
  String get defaultLabel => 'డిఫాల్ట్';

  @override
  String get homeTitle => 'Nexmile కు స్వాగతం';

  @override
  String get homeSubtitle =>
      'తాజా కిరాణా సరుకులు, వేడి ఆహారం మరియు నిత్యావసరాలు మీ దగ్గరి దుకాణాల నుండి.';

  @override
  String get changeLanguage => 'భాషను మార్చండి';

  @override
  String get languageUpdated => 'భాష మార్చబడింది';

  @override
  String get appLanguageLabel => 'యాప్ భాష';

  @override
  String greetingNamed(String name) {
    return 'నమస్కారం, $name';
  }

  @override
  String get loginTitle => 'Nexmile లో సైన్ ఇన్ చేయండి';

  @override
  String get loginSubtitle =>
      'మీ ఇమెయిల్ లేదా మొబైల్ నంబర్‌ను నమోదు చేయండి, మేము ధృవీకరణ కోడ్ పంపుతాము.';

  @override
  String get emailOrPhoneLabel => 'ఇమెయిల్ లేదా మొబైల్ నంబర్';

  @override
  String get emailOrPhoneHint => 'name@example.com లేదా 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'సరైన ఇమెయిల్ చిరునామా లేదా 10 అంకెల మొబైల్ నంబర్‌ను నమోదు చేయండి';

  @override
  String get loginHeadline =>
      'Nexmile తో డెలివరీ చేయండి. మీకు వీలైన సమయంలో సంపాదించండి.';

  @override
  String get loginOrSignUp => 'లాగిన్ లేదా సైన్ అప్ చేయండి';

  @override
  String get loginEmailHint => 'మీ ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get invalidEmail => 'సరైన ఇమెయిల్ చిరునామాను నమోదు చేయండి';

  @override
  String get loginHeroBadge => 'డెలివరీ భాగస్వామి';

  @override
  String get sendCode => 'కోడ్ పంపు';

  @override
  String get agreeToTermsOnContinue =>
      'కొనసాగించడం ద్వారా మీరు మా సేవా నిబంధనలు మరియు గోప్యతా విధానానికి అంగీకరిస్తున్నారు.';

  @override
  String get otpTitle => 'ఇది మీరేనని ధృవీకరించండి';

  @override
  String otpSubtitle(String target) {
    return '$target కు పంపిన 6 అంకెల కోడ్‌ను నమోదు చేయండి';
  }

  @override
  String get otpHelpTitle => 'కోడ్ రాలేదా?';

  @override
  String get otpHelpCheck =>
      'పైన ఉన్న నంబర్ లేదా ఇమెయిల్‌ను సరిచూసుకోండి. మార్చడానికి వెనక్కి నొక్కండి.';

  @override
  String get otpHelpWait =>
      'కోడ్ రావడానికి ఒక నిమిషం వరకు పట్టవచ్చు. టైమర్ ముగిసిన తర్వాత కొత్త కోడ్ కోరవచ్చు.';

  @override
  String get otpHelpSpam => 'ఇమెయిల్ అయితే, మీ స్పామ్ ఫోల్డర్‌లో కూడా చూడండి.';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'ధృవీకరించు';

  @override
  String get resendCode => 'కోడ్‌ను మళ్ళీ పంపు';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds సెకన్లలో మళ్ళీ పంపు';
  }

  @override
  String get codeResent => 'కొత్త కోడ్ పంపబడింది';

  @override
  String get incorrectCode =>
      'ఈ కోడ్ తప్పు లేదా గడువు ముగిసింది. కొత్తది కోరండి.';

  @override
  String get enterFullCode => 'మొత్తం 6 అంకెలు నమోదు చేయండి';

  @override
  String get accountSuspended =>
      'ఈ ఖాతా నిలిపివేయబడింది. దయచేసి సపోర్ట్‌ను సంప్రదించండి.';

  @override
  String get tooManyAttempts =>
      'చాలా సార్లు ప్రయత్నించారు. కొంతసేపటి తర్వాత మళ్ళీ ప్రయత్నించండి.';

  @override
  String get sessionExpired =>
      'మీ సెషన్ గడువు ముగిసింది. దయచేసి మళ్ళీ సైన్ ఇన్ చేయండి.';

  @override
  String get networkError =>
      'ఇంటర్నెట్ కనెక్షన్ లేదు. మీ కనెక్షన్‌ను తనిఖీ చేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get developmentCode => 'డెవలప్‌మెంట్ కోడ్';

  @override
  String get signOut => 'సైన్ అవుట్';

  @override
  String get signedOut => 'మీరు సైన్ అవుట్ అయ్యారు';

  @override
  String get somethingWentWrong => 'ఏదో తప్పు జరిగింది. మళ్ళీ ప్రయత్నించండి.';

  @override
  String get profileTitle => 'ప్రొఫైల్';

  @override
  String get profileSectionDetails => 'మీ వివరాలు';

  @override
  String get profileSectionWork => 'పని';

  @override
  String get profileSectionApp => 'యాప్ సెట్టింగ్‌లు';

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
  String get viewProfile => 'ప్రొఫైల్ చూడండి';

  @override
  String get nameLabel => 'పేరు';

  @override
  String get emailLabel => 'ఇమెయిల్';

  @override
  String get mobileLabel => 'మొబైల్ నంబర్';

  @override
  String get accountStatusLabel => 'ఖాతా స్థితి';

  @override
  String get statusActive => 'క్రియాశీలం';

  @override
  String get statusPending => 'పెండింగ్';

  @override
  String get statusSuspended => 'నిలిపివేయబడింది';

  @override
  String get verifiedLabel => 'ధృవీకరించబడింది';

  @override
  String get notProvided => 'జోడించలేదు';

  @override
  String get retry => 'మళ్ళీ ప్రయత్నించండి';

  @override
  String get loginRiderNote => 'ఈ యాప్ Nexmile డెలివరీ భాగస్వాముల కోసం.';

  @override
  String get checkingYourAccount => 'మీ ఖాతాను తనిఖీ చేస్తున్నాం';

  @override
  String get couldNotLoadAccount =>
      'మీ ఖాతాను లోడ్ చేయలేకపోయాం. మీ కనెక్షన్‌ను తనిఖీ చేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get notARiderAccountTitle => 'ఇది డెలివరీ భాగస్వామి ఖాతా కాదు';

  @override
  String get notARiderAccount =>
      'ఈ ఇమెయిల్ లేదా మొబైల్ నంబర్ ఇప్పటికే వేరే Nexmile ఖాతాలో నమోదై ఉంది. సైన్ అవుట్ చేసి, డెలివరీ భాగస్వామిగా చేరడానికి వేరే ఇమెయిల్ లేదా నంబర్ వాడండి.';

  @override
  String notARiderAccountFor(String role) {
    return 'ఈ ఇమెయిల్ లేదా మొబైల్ నంబర్ ఇప్పటికే Nexmile లో $role ఖాతాగా నమోదై ఉంది. సైన్ అవుట్ చేసి, డెలివరీ భాగస్వామిగా చేరడానికి వేరే ఇమెయిల్ లేదా నంబర్ వాడండి.';
  }

  @override
  String get roleCustomer => 'కస్టమర్';

  @override
  String get roleMerchant => 'వ్యాపారి';

  @override
  String get roleAdmin => 'అడ్మిన్';

  @override
  String get useAnotherAccount => 'వేరే ఖాతా వాడండి';

  @override
  String get onboardingTitle => 'Nexmile భాగస్వామి అవ్వండి';

  @override
  String get onboardingSubtitle =>
      'కొన్ని వివరాలు, మీ పత్రాలు ఇవ్వండి, తర్వాత మా టీమ్ మిమ్మల్ని ధృవీకరిస్తుంది. దీనికి సాధారణంగా రెండు పని దినాల వరకు పడుతుంది.';

  @override
  String stepOfSteps(int current, int total) {
    return '$total లో $currentవ దశ';
  }

  @override
  String get stepIdentityTitle => 'మీ గురించి';

  @override
  String get stepIdentitySubtitle =>
      'మీ ఆధార్ కార్డ్‌లో ఉన్నట్లుగానే మీ పేరును నమోదు చేయండి.';

  @override
  String get stepVehicleTitle => 'మీ వాహనం';

  @override
  String get stepVehicleSubtitle =>
      'మీరు ఏ వాహనం నడుపుతారో, దాని నంబర్ ప్లేట్‌పై ఉన్న నంబర్ ఏమిటో చెప్పండి.';

  @override
  String get stepIdentityNumbersTitle => 'గుర్తింపు నంబర్లు';

  @override
  String get stepIdentityNumbersSubtitle =>
      'ఇవి మీరు తర్వాత అప్‌లోడ్ చేసే పత్రాలతో సరిపోలాలి.';

  @override
  String get stepLicenceTitle => 'లైసెన్స్, ఇన్సూరెన్స్';

  @override
  String get stepLicenceSubtitle =>
      'మీరు డెలివరీ మొదలుపెట్టే రోజున రెండూ చెల్లుబాటులో ఉండాలి.';

  @override
  String get stepBankTitle => 'మీ డబ్బు ఎక్కడ జమ కావాలి';

  @override
  String get stepBankSubtitle =>
      'మీ సంపాదన ఈ ఖాతాలో జమ అవుతుంది. జాగ్రత్తగా సరిచూసుకోండి.';

  @override
  String get stepDocumentsTitle => 'మీ పత్రాలు';

  @override
  String get stepDocumentsSubtitle =>
      'ప్రతిదాన్నీ మంచి వెలుతురులో ఫోటో తీయండి. JPG, PNG లేదా PDF, ఒక్కొక్కటి 5 MB వరకు.';

  @override
  String get stepReviewTitle => 'సరిచూసి పంపండి';

  @override
  String get stepReviewSubtitle =>
      'మీరు పంపిన తర్వాత, మా టీమ్ సమీక్షించే వరకు మీ వివరాలు లాక్ అయి ఉంటాయి.';

  @override
  String get saveAndContinue => 'సేవ్ చేసి కొనసాగించు';

  @override
  String get backLabel => 'వెనక్కి';

  @override
  String get fullNameLabel => 'పూర్తి పేరు';

  @override
  String get fullNameHint => 'మీ ఆధార్‌లో ఉన్నట్లుగా';

  @override
  String get dateOfBirthLabel => 'పుట్టిన తేదీ';

  @override
  String get selectDate => 'తేదీ ఎంచుకోండి';

  @override
  String get vehicleTypeLabel => 'వాహన రకం';

  @override
  String get vehicleMotorcycle => 'బైక్';

  @override
  String get vehicleScooter => 'స్కూటర్';

  @override
  String get vehicleEv => 'ఎలక్ట్రిక్ వాహనం';

  @override
  String get vehicleBicycle => 'సైకిల్';

  @override
  String get vehicleWalk => 'కాలినడకన';

  @override
  String get vehicleNoPapersNote =>
      'వాహన నంబర్ లేదా RC అవసరం లేదు. ఆధార్, PAN మాత్రమే అడుగుతాము.';

  @override
  String get vehicleNumberLabel => 'వాహన నంబర్';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC నంబర్';

  @override
  String get aadhaarLabel => 'ఆధార్ నంబర్';

  @override
  String get aadhaarHint => '12 అంకెలు';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'డ్రైవింగ్ లైసెన్స్ నంబర్';

  @override
  String get drivingLicenceExpiryLabel => 'లైసెన్స్ గడువు తేదీ';

  @override
  String get insuranceNumberLabel => 'ఇన్సూరెన్స్ పాలసీ నంబర్';

  @override
  String get insuranceExpiryLabel => 'ఇన్సూరెన్స్ గడువు తేదీ';

  @override
  String get bankAccountNameLabel => 'ఖాతాదారుని పేరు';

  @override
  String get bankAccountNumberLabel => 'ఖాతా నంబర్';

  @override
  String get bankIfscLabel => 'IFSC కోడ్';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total లో $done అప్‌లోడ్ అయ్యాయి';
  }

  @override
  String get uploadDocument => 'అప్‌లోడ్ చేయి';

  @override
  String get replaceDocument => 'మార్చు';

  @override
  String get removeDocument => 'తొలగించు';

  @override
  String get takePhoto => 'ఫోటో తీయండి';

  @override
  String get chooseFromGallery => 'గ్యాలరీ నుండి ఎంచుకోండి';

  @override
  String get chooseFile => 'ఫైల్ ఎంచుకోండి';

  @override
  String get uploadingLabel => 'అప్‌లోడ్ అవుతోంది';

  @override
  String get documentRejected => 'తిరస్కరించబడింది';

  @override
  String get documentUploaded => 'అప్‌లోడ్ అయింది';

  @override
  String get documentApproved => 'ఆమోదించబడింది';

  @override
  String get documentRequired => 'తప్పనిసరి';

  @override
  String get documentOptional => 'ఐచ్ఛికం';

  @override
  String get fileTooLarge =>
      'ఆ ఫైల్ 5 MB కంటే ఎక్కువ ఉంది. స్కాన్ బదులు ఫోటో ప్రయత్నించండి.';

  @override
  String get unsupportedFileType => 'JPG, PNG లేదా PDF ఎంచుకోండి.';

  @override
  String get pickerUnavailable =>
      'దాన్ని తెరవలేకపోయాం. యాప్‌కు కెమెరా, ఫోటోల అనుమతులు ఉన్నాయో చూడండి.';

  @override
  String get uploadFailed =>
      'అప్‌లోడ్ పూర్తి కాలేదు. దయచేసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get submitForVerification => 'ధృవీకరణ కోసం పంపండి';

  @override
  String get submitConfirmTitle => 'ధృవీకరణ కోసం పంపాలా?';

  @override
  String get submitConfirmBody =>
      'మా టీమ్ సమీక్షించే సమయంలో మీ వివరాలు, పత్రాలు లాక్ అయి ఉంటాయి. నిర్ణయం వచ్చే వరకు వాటిని మార్చలేరు.';

  @override
  String get cancelLabel => 'రద్దు';

  @override
  String get completeEverythingBeforeSubmitting =>
      'పంపే ముందు అన్ని దశలు పూర్తి చేసి, అన్ని పత్రాలు అప్‌లోడ్ చేయండి.';

  @override
  String get checkTheHighlightedFields =>
      'హైలైట్ చేసిన ఫీల్డ్‌లను సరిచూసి మళ్ళీ ప్రయత్నించండి.';

  @override
  String get underReviewTitle => 'మీ పత్రాలను ధృవీకరిస్తున్నాం';

  @override
  String get underReviewBody =>
      'మా టీమ్ సాధారణంగా రెండు పని దినాల్లో సమీక్షిస్తుంది. మీకు ఆమోదం రాగానే తెలియజేస్తాం.';

  @override
  String get checkAgain => 'మళ్ళీ తనిఖీ చేయండి';

  @override
  String get stillUnderReview => 'ఇంకా సమీక్షలో ఉంది';

  @override
  String get rejectedTitle => 'మిమ్మల్ని ధృవీకరించలేకపోయాం';

  @override
  String get rejectedBody =>
      'కింద మా టీమ్ పేర్కొన్న వాటిని సరిచేసి, మీ పత్రాలను మళ్ళీ పంపండి.';

  @override
  String get rejectionReasonLabel => 'కారణం';

  @override
  String get fixAndResubmit => 'సరిచేసి మళ్ళీ పంపండి';

  @override
  String get blockedTitle => 'మీరు ఇంకా ఆన్‌లైన్ కాలేరు';

  @override
  String get documentsExpiredMessage =>
      'మీ లైసెన్స్ లేదా ఇన్సూరెన్స్ గడువు ముగిసింది. ఆన్‌లైన్ కావడానికి చెల్లుబాటులో ఉన్న పత్రాలను అప్‌లోడ్ చేయండి.';

  @override
  String get awaitingVerificationMessage =>
      'మీ పత్రాలు ఇంకా ధృవీకరణలో ఉన్నాయి.';

  @override
  String get updateDocuments => 'పత్రాలు అప్‌డేట్ చేయండి';

  @override
  String get riderHomeTitle => 'రైడ్‌కు సిద్ధం';

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
      'ఆన్‌లైన్ అవ్వండి, దగ్గర్లోని డెలివరీలను మీకు పంపుతాం.';

  @override
  String get dutyStatusLabel => 'డ్యూటీ స్థితి';

  @override
  String get dutyOnline => 'ఆన్‌లైన్';

  @override
  String get dutyOffline => 'ఆఫ్‌లైన్';

  @override
  String get dutyOnBreak => 'బ్రేక్‌లో';

  @override
  String get goOnline => 'ఆన్‌లైన్ అవ్వండి';

  @override
  String get goOffline => 'ఆఫ్‌లైన్ అవ్వండి';

  @override
  String get takeABreak => 'బ్రేక్ తీసుకోండి';

  @override
  String get waitingForOrders => 'దగ్గర్లోని ఆర్డర్ల కోసం ఎదురుచూస్తున్నాం';

  @override
  String get youAreOffline =>
      'మీరు ఆఫ్‌లైన్‌లో ఉన్నారు. మీకు ఎలాంటి డెలివరీలు పంపబడవు.';

  @override
  String get completedDeliveriesLabel => 'పూర్తయిన డెలివరీలు';

  @override
  String get ratingLabel => 'రేటింగ్';

  @override
  String get notRatedYet => 'ఇంకా రేటింగ్ లేదు';

  @override
  String get vehicleLabel => 'వాహనం';

  @override
  String get kycStatusLabel => 'ధృవీకరణ';

  @override
  String get kycPending => 'ఇంకా పంపలేదు';

  @override
  String get kycSubmitted => 'సమీక్షలో ఉంది';

  @override
  String get kycVerified => 'ఆమోదించబడింది';

  @override
  String get kycRejected => 'తిరస్కరించబడింది';

  @override
  String get fieldRequired => 'ఈ ఫీల్డ్ తప్పనిసరి';

  @override
  String get invalidAadhaar => 'మీ ఆధార్ నంబర్‌లోని 12 అంకెలు నమోదు చేయండి';

  @override
  String get invalidPan => 'సరైన PAN నమోదు చేయండి, ఉదా. ABCDE1234F';

  @override
  String get invalidIfsc => 'సరైన IFSC కోడ్ నమోదు చేయండి, ఉదా. SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'నంబర్ ప్లేట్‌పై ఉన్నట్లుగానే నంబర్ నమోదు చేయండి';

  @override
  String get invalidAccountNumber => 'సరైన ఖాతా నంబర్ నమోదు చేయండి';

  @override
  String get dateMustBeFuture => 'ఈ తేదీ ఇప్పటికే దాటిపోయింది';

  @override
  String get mustBeEighteen =>
      'డెలివరీ చేయడానికి మీకు కనీసం 18 సంవత్సరాలు ఉండాలి';

  @override
  String get docAadhaarFront => 'ఆధార్ కార్డ్ (ముందు వైపు)';

  @override
  String get docAadhaarBack => 'ఆధార్ కార్డ్ (వెనుక వైపు)';

  @override
  String get docDrivingLicence => 'డ్రైవింగ్ లైసెన్స్';

  @override
  String get docVehicleRc => 'వాహన రిజిస్ట్రేషన్ సర్టిఫికేట్';

  @override
  String get docInsurance => 'వాహన ఇన్సూరెన్స్';

  @override
  String get docProfilePhoto => 'ప్రొఫైల్ ఫోటో';

  @override
  String get docPan => 'PAN కార్డ్';

  @override
  String get docBankProof => 'రద్దు చేసిన చెక్ లేదా బ్యాంక్ స్టేట్‌మెంట్';

  @override
  String get ordersTab => 'ఆర్డర్లు';

  @override
  String get deliveryTab => 'డెలివరీ';

  @override
  String get historyTab => 'హిస్టరీ';

  @override
  String get orderBoardTitle => 'మీ దగ్గర్లోని ఆర్డర్లు';

  @override
  String get orderBoardSubtitle =>
      'దగ్గరి రెస్టారెంట్ ఆర్డర్లు ముందుగా కనిపిస్తాయి. జాబితా దానంతట అదే రిఫ్రెష్ అవుతుంది.';

  @override
  String orderNumberLabel(String number) {
    return 'ఆర్డర్ $number';
  }

  @override
  String get pickupLabel => 'పికప్';

  @override
  String get dropoffLabel => 'డెలివరీ చిరునామా';

  @override
  String distanceMetres(String metres) {
    return '$metres మీ.';
  }

  @override
  String distanceKilometres(String km) {
    return '$km కి.మీ';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count వస్తువులు',
      one: '1 వస్తువు',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'మీ సంపాదన';

  @override
  String get collectCashLabel => 'నగదు వసూలు చేయండి';

  @override
  String get prepaidLabel => 'ఆన్‌లైన్‌లో చెల్లించారు';

  @override
  String collectAtDoor(String amount) {
    return 'కస్టమర్ నుండి $amount వసూలు చేయండి';
  }

  @override
  String get nothingToCollect => 'ఇప్పటికే చెల్లించారు. డబ్బు అడగకండి.';

  @override
  String get acceptOrder => 'అంగీకరించు';

  @override
  String get viewOrder => 'చూడండి';

  @override
  String get orderAccepted => 'ఆర్డర్ అంగీకరించారు. రెస్టారెంట్‌కు వెళ్ళండి.';

  @override
  String get orderAlreadyTaken =>
      'దీన్ని వేరే రైడర్ తీసుకున్నారు. ఇదిగో తాజా జాబితా.';

  @override
  String get orderNoLongerYours => 'ఈ ఆర్డర్ ఇప్పుడు మీది కాదు.';

  @override
  String get boardEmptyTitle => 'ప్రస్తుతం ఆర్డర్లు లేవు';

  @override
  String get boardEmptyBody =>
      'ఆన్‌లైన్‌లోనే ఉండండి. రెస్టారెంట్లు బిజీ అయ్యే కొద్దీ జాబితా దానంతట అదే అప్‌డేట్ అవుతుంది.';

  @override
  String get boardOfflineTitle => 'మీరు ఆఫ్‌లైన్‌లో ఉన్నారు';

  @override
  String get boardOfflineBody =>
      'ఆర్డర్లు అందుకోవడం మొదలుపెట్టడానికి ఆన్‌లైన్ అవ్వండి.';

  @override
  String get boardBusyTitle => 'ముందుగా మీ డెలివరీ పూర్తి చేయండి';

  @override
  String get boardBusyBody => 'ఇది డెలివరీ అయిన తర్వాత మరో ఆర్డర్ తీసుకోవచ్చు.';

  @override
  String get boardNoLocationTitle => 'మీరు ఎక్కడ ఉన్నారో తెలియడం లేదు';

  @override
  String get boardNoLocationBody =>
      'రెస్టారెంట్ ఎంత దగ్గరగా ఉందో దాని ప్రకారం ఆర్డర్లు వరుసలో ఉంటాయి, కాబట్టి ఏదైనా చూపించడానికి మాకు మీ లొకేషన్ కావాలి.';

  @override
  String get boardNotVerifiedTitle => 'రైడ్ చేయడానికి ఇంకా ఆమోదం రాలేదు';

  @override
  String get activeDeliveryTitle => 'మీ డెలివరీ';

  @override
  String get headToRestaurant => 'రెస్టారెంట్‌కు వెళ్ళండి';

  @override
  String get deliverToCustomer => 'కస్టమర్‌కు డెలివరీ చేయండి';

  @override
  String get noActiveDeliveryTitle => 'చేతిలో ఆర్డర్ ఏదీ లేదు';

  @override
  String get noActiveDeliveryBody =>
      'ఆర్డర్ల జాబితా నుండి ఒక ఆర్డర్ అంగీకరించండి, అది ఇక్కడ కనిపిస్తుంది.';

  @override
  String get confirmPickupButton => 'నేను తీసుకున్నాను';

  @override
  String get pickupCodeTitle => 'పికప్ కోడ్';

  @override
  String get pickupCodeSubtitle =>
      'రెస్టారెంట్‌ను కోడ్ అడిగి ఇక్కడ టైప్ చేయండి.';

  @override
  String get pickupCodeHint => 'కోడ్';

  @override
  String get wrongPickupCode =>
      'ఆ కోడ్ సరిపోలలేదు. రెస్టారెంట్‌తో సరిచూసుకోండి.';

  @override
  String get pickupConfirmed => 'పికప్ అయింది. కస్టమర్‌కు డెలివరీ చేయండి.';

  @override
  String get confirmDeliveryButton => 'డెలివరీ చేశాను';

  @override
  String get stepReachRestaurant => 'రెస్టారెంట్‌కు';

  @override
  String get stepPickUp => 'పికప్';

  @override
  String get stepReachCustomer => 'కస్టమర్ వద్దకు';

  @override
  String get stepDeliver => 'డెలివరీ';

  @override
  String get swipePickUp => 'తీసుకున్నాక స్వైప్ చేయండి';

  @override
  String get swipeDeliver => 'డెలివరీకి స్వైప్ చేయండి';

  @override
  String get cashToCollectLabel => 'వసూలు చేయాల్సిన నగదు';

  @override
  String get confirmDeliveryTitle => 'డెలివరీ నిర్ధారించండి';

  @override
  String get confirmDeliveryBody =>
      'కస్టమర్ చేతికి ఆర్డర్ అందిన తర్వాతే నిర్ధారించండి.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'ముందుగా కస్టమర్ నుండి $amount నగదు వసూలు చేసి, తర్వాత నిర్ధారించండి.';
  }

  @override
  String get deliveryConfirmed =>
      'డెలివరీ అయ్యింది. ధన్యవాదాలు, మీరు మళ్ళీ ఆన్‌లైన్‌లో ఉన్నారు.';

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
  String get releaseOrderButton => 'తిరిగి ఇవ్వండి';

  @override
  String get releaseOrderTitle => 'ఈ ఆర్డర్‌ను తిరిగి ఇవ్వాలా?';

  @override
  String get releaseOrderBody =>
      'ఇది వేరే రైడర్ కోసం మళ్ళీ ఆర్డర్ల జాబితాలోకి వెళ్తుంది. ఆహారం తీసుకునే ముందు మాత్రమే ఇలా చేయగలరు.';

  @override
  String get releaseReasonHint => 'కారణం (ఐచ్ఛికం)';

  @override
  String get orderReleased =>
      'తిరిగి ఇచ్చారు. ఇది మళ్ళీ ఇతర రైడర్లకు అందుబాటులో ఉంది.';

  @override
  String get finishCurrentOrderFirst =>
      'ముందుగా మీ ప్రస్తుత ఆర్డర్‌ను పూర్తి చేయండి లేదా తిరిగి ఇవ్వండి.';

  @override
  String get callRestaurant => 'రెస్టారెంట్‌కు కాల్ చేయి';

  @override
  String get callCustomer => 'కస్టమర్‌కు కాల్ చేయి';

  @override
  String get openInMaps => 'దారి చూపు';

  @override
  String get customerNoteLabel => 'కస్టమర్ నుండి గమనిక';

  @override
  String get orderItemsLabel => 'బ్యాగ్‌లో ఏముంది';

  @override
  String get orderDetailsTitle => 'ఆర్డర్ వివరాలు';

  @override
  String get historyTitle => 'గత డెలివరీలు';

  @override
  String get historyEmptyTitle => 'ఇంకా డెలివరీలు లేవు';

  @override
  String get historyEmptyBody =>
      'మీరు పూర్తి చేసిన ఆర్డర్లు ఇక్కడ కనిపిస్తాయి.';

  @override
  String get historySearchHint => 'ఆర్డర్ లేదా రెస్టారెంట్ వెతకండి';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'ఈరోజు';

  @override
  String get historyYesterday => 'నిన్న';

  @override
  String get historyEarlier => 'ఇంతకు ముందు';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count డెలివరీలు',
      one: '1 డెలివరీ',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” కు సరిపోయేది ఏదీ లేదు.';
  }

  @override
  String historyCashTaken(String amount) {
    return 'నగదు వసూలు $amount';
  }

  @override
  String get orderDelivered => 'డెలివరీ అయ్యింది';

  @override
  String get orderCancelled => 'రద్దు అయింది';

  @override
  String get orderPreparing => 'తయారవుతోంది';

  @override
  String get orderReadyForPickup => 'పికప్‌కు సిద్ధం';

  @override
  String get orderAssigned => 'మీకు కేటాయించబడింది';

  @override
  String get orderPickedUp => 'పికప్ అయింది';

  @override
  String get orderOutForDelivery => 'దారిలో ఉంది';

  @override
  String get trackingOn => 'లొకేషన్ షేరింగ్ ఆన్‌లో ఉంది';

  @override
  String get locationUnavailableMessage =>
      'మీ లొకేషన్ తెలుసుకోలేకపోతున్నాం. లొకేషన్ ఆన్ చేసి, Nexmile Rider కు అనుమతించండి.';

  @override
  String get locationPermissionTitle => 'లొకేషన్ అవసరం';

  @override
  String get locationPermissionBody =>
      'మీరు ఎంత దగ్గరగా ఉన్నారో చూసి ఆర్డర్లు పంపబడతాయి, కస్టమర్ మిమ్మల్ని మ్యాప్‌లో చూస్తారు. ఆన్‌లైన్ కావడానికి లొకేషన్ అనుమతించండి.';

  @override
  String get locationSettingsButton => 'సెట్టింగ్‌లు తెరవండి';

  @override
  String get enableLocationButton => 'లొకేషన్ అనుమతించండి';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'షిఫ్ట్';

  @override
  String get payoutsTitle => 'చెల్లింపులు';

  @override
  String get payoutsEntryValue => 'వారపు సంపాదన';

  @override
  String get payoutDetailsTitle => 'వారపు చెల్లింపు';

  @override
  String get payoutsEmptyTitle => 'ఇంకా చెల్లింపులు లేవు';

  @override
  String get payoutsEmptyBody =>
      'ప్రతి వారం సంపాదన లెక్కించిన తర్వాత, అది ఇక్కడ కనిపిస్తుంది.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'పెండింగ్';

  @override
  String get payoutStatusProcessing => 'ప్రాసెస్ అవుతోంది';

  @override
  String get payoutStatusPaid => 'చెల్లించబడింది';

  @override
  String get payoutNotSentNote =>
      'ఈ వారపు మీ సంపాదన లెక్కించబడింది. డబ్బు ఇంకా మీ బ్యాంక్‌కు పంపబడలేదు.';

  @override
  String payoutPaidOn(String date) {
    return '$date న మీ బ్యాంక్‌కు పంపబడింది';
  }

  @override
  String get payoutPaidNote => 'ఈ వారపు బ్యాంక్ ట్రాన్స్‌ఫర్ పూర్తయింది.';

  @override
  String get payoutReferenceLabel => 'ట్రాన్స్‌ఫర్ రిఫరెన్స్';

  @override
  String get payoutNetLabel => 'మీకు రావాల్సిన మొత్తం';

  @override
  String get payoutDeliveryEarnings => 'డెలివరీ సంపాదన';

  @override
  String get payoutReferralEarnings => 'రిఫరల్ సంపాదన';

  @override
  String get payoutCarriedIn => 'మునుపటి వారం నుండి';

  @override
  String get payoutCarriedInNote =>
      '₹100 కంటే తక్కువ మొత్తాలు విడిగా ట్రాన్స్‌ఫర్ చేయబడవు. వాటిని తర్వాతి వారానికి కలుపుతాము.';

  @override
  String get payoutGross => 'మొత్తం సంపాదన';

  @override
  String get payoutDeductions => 'కోతలు';

  @override
  String get payoutsLatestWeek => 'తాజా వారం';

  @override
  String get payoutsPaidSoFar => 'ఇప్పటివరకు చెల్లించినది';

  @override
  String get payoutsNotYetSent => 'ఇంకా పంపలేదు';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'లెక్కించబడింది';

  @override
  String get payoutStepSending => 'పంపుతున్నాం';

  @override
  String get payoutStepInBank => 'మీ బ్యాంక్‌లో';

  @override
  String get navToRestaurant => 'రెస్టారెంట్‌కు';

  @override
  String get navToCustomer => 'కస్టమర్ వద్దకు';

  @override
  String navHeadTowards(String place) {
    return '$place వైపు వెళ్ళండి';
  }

  @override
  String navThen(String instruction) {
    return 'తర్వాత: $instruction';
  }

  @override
  String get navArrived => 'మీరు చేరుకున్నారు';

  @override
  String navArrivedAt(String place) {
    return '$place వద్ద';
  }

  @override
  String get navFindingRoute => 'ఉత్తమ మార్గాన్ని వెతుకుతున్నాం…';

  @override
  String get navNoRoute =>
      'రోడ్డు దారి అందుబాటులో లేదు. నేరుగా ఉన్న దూరాన్ని చూపిస్తున్నాం.';

  @override
  String get navCalibrateTitle => 'Compass needs calibrating';

  @override
  String get navCalibrateBody =>
      'Move your phone in a figure 8 a few times so the arrow points the right way.';

  @override
  String get navFindingLocation => 'మీ లొకేషన్ కనుగొంటున్నాం…';

  @override
  String get navLocationOff => 'నావిగేట్ చేయడానికి లొకేషన్ ఆన్ చేయండి.';

  @override
  String get navEnd => 'నావిగేషన్ ముగించు';

  @override
  String get navRecentre => 'మళ్ళీ కేంద్రీకరించు';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes నిమి';
  }

  @override
  String get navStart => 'నావిగేట్ చేయి';

  @override
  String get orderReachedRestaurant => 'రెస్టారెంట్ వద్ద ఉన్నారు';

  @override
  String get orderReachedCustomer => 'కస్టమర్ వద్ద ఉన్నారు';

  @override
  String get reachedRestaurantButton => 'నేను రెస్టారెంట్‌కు చేరుకున్నాను';

  @override
  String get reachedCustomerButton => 'నేను కస్టమర్ వద్దకు చేరుకున్నాను';

  @override
  String get reachedRestaurantDone => 'మీరు వచ్చారని రెస్టారెంట్‌కు తెలియజేశాం';

  @override
  String get reachedCustomerDone => 'మీరు బయట ఉన్నారని కస్టమర్‌కు తెలియజేశాం';

  @override
  String get offerTitle => 'కొత్త ఆర్డర్';

  @override
  String get offerYouEarn => 'మీ సంపాదన';

  @override
  String get offerPickup => 'పికప్';

  @override
  String get offerDrop => 'డ్రాప్';

  @override
  String offerAway(String distance) {
    return '$distance దూరంలో';
  }

  @override
  String offerTrip(String distance) {
    return '$distance ప్రయాణం';
  }

  @override
  String offerItems(String count) {
    return '$count వస్తువులు';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount నగదు వసూలు చేయండి';
  }

  @override
  String get offerPrepaid => 'ముందే చెల్లించారు · నగదు లేదు';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'సుమారు $minutes నిమిషాల్లో ఆహారం సిద్ధం';
  }

  @override
  String get offerSwipeToAccept => 'అంగీకరించడానికి స్వైప్ చేయండి';

  @override
  String get offerAccepting => 'అంగీకరిస్తున్నాం…';

  @override
  String get offerReject => 'తిరస్కరించు';

  @override
  String get offerRejectTitle => 'ఎందుకు తిరస్కరిస్తున్నారు?';

  @override
  String get offerReasonTooFar => 'చాలా దూరం';

  @override
  String get offerReasonBusy => 'ఇప్పుడు బిజీగా ఉన్నాను';

  @override
  String get offerReasonVehicle => 'వాహనంలో సమస్య';

  @override
  String get offerReasonOther => 'వేరే కారణం';

  @override
  String get offerTaken => 'ఆర్డర్‌ను వేరే రైడర్ తీసుకున్నారు';

  @override
  String get offerAutoOffline =>
      '3 ఆర్డర్లు మిస్ అయినందుకు మిమ్మల్ని ఆఫ్‌లైన్ చేశాం. సిద్ధంగా ఉన్నప్పుడు ఆన్‌లైన్ అవ్వండి.';

  @override
  String get mockLocationBlocked =>
      'ఆర్డర్లు అందుకోవడానికి, నకిలీ లొకేషన్ యాప్ ఏదైనా ఉంటే ఆఫ్ చేయండి.';

  @override
  String get dropoffDoorLabel => 'ఫ్లాట్ / అంతస్తు';

  @override
  String get dropoffStreetLabel => 'వీధి';

  @override
  String get dropoffLandmarkLabel => 'ల్యాండ్‌మార్క్';

  @override
  String get doorPhotoLabel => 'తలుపు ఫోటో';

  @override
  String get doorPhotoHint => 'పెద్దగా చూడటానికి నొక్కండి';

  @override
  String get doorPhotoUnavailable => 'ఫోటో ప్రస్తుతం అందుబాటులో లేదు';

  @override
  String permStepCount(int step, int total) {
    return '$total లో $step';
  }

  @override
  String get permNotNow => 'ఇప్పుడు కాదు';

  @override
  String get permLocationTitle => 'లొకేషన్ ఆన్ చేయండి';

  @override
  String get permLocationBody =>
      'రెస్టారెంట్‌కు అత్యంత దగ్గరగా ఉన్న రైడర్‌కు ఆర్డర్లు వెళ్తాయి, కస్టమర్లు తమ ఆహారాన్ని మ్యాప్‌లో చూస్తారు.';

  @override
  String get permLocationNearTitle => 'మీ దగ్గర్లోని ఆర్డర్లు';

  @override
  String get permLocationNearBody =>
      'దగ్గర్లోని రెస్టారెంట్ల ఆర్డర్లు మీకు అందిస్తాం, దాంతో మీరు తక్కువ తిరిగి ఎక్కువ సంపాదిస్తారు.';

  @override
  String get permLocationTrackTitle => 'లైవ్ ట్రాకింగ్';

  @override
  String get permLocationTrackBody =>
      'కస్టమర్లు మిమ్మల్ని మ్యాప్‌లో చూస్తారు, కాబట్టి మీకు తక్కువగా కాల్ చేస్తారు.';

  @override
  String get permLocationOnlineTitle => 'మీరు ఆన్‌లైన్‌లో ఉన్నప్పుడు మాత్రమే';

  @override
  String get permLocationOnlineBody =>
      'ఆఫ్‌లైన్ అయితే ఇది ఆగిపోతుంది. ఇది వాడుకలో ఉన్నప్పుడల్లా ఒక నోటిఫికేషన్ కనిపిస్తుంది.';

  @override
  String get permLocationAllow => 'లొకేషన్ అనుమతించండి';

  @override
  String get permNotifyTitle => 'ఏ ఆర్డర్‌నూ మిస్ అవ్వకండి';

  @override
  String get permNotifyBody =>
      'స్క్రీన్ లాక్ అయి ఉన్నా, కొత్త ఆర్డర్లు ఫోన్ కాల్ లాగా మోగుతాయి.';

  @override
  String get permNotifyRingTitle => 'మోగే ఆర్డర్ అలర్ట్‌లు';

  @override
  String get permNotifyRingBody =>
      'అలర్ట్ నుండే నేరుగా అంగీకరించండి లేదా తిరస్కరించండి.';

  @override
  String get permNotifyUpdatesTitle => 'చెల్లింపులు, ఆమోదాలు';

  @override
  String get permNotifyUpdatesBody =>
      'మీ పత్రాలు ఎప్పుడు ఆమోదించబడ్డాయో, డబ్బు ఎప్పుడు పంపబడిందో తెలుసుకోండి.';

  @override
  String get permNotifyControlTitle => 'నియంత్రణ మీ చేతుల్లోనే';

  @override
  String get permNotifyControlBody =>
      'మీ ఫోన్ సెట్టింగ్‌లలో ఎప్పుడైనా మార్చుకోవచ్చు.';

  @override
  String get permNotifyAllow => 'నోటిఫికేషన్లు ఆన్ చేయండి';

  @override
  String get permBatteryTitle => 'ఆర్డర్లు ఆగకుండా అందుకోండి';

  @override
  String get permBatteryBody =>
      'బ్యాటరీ ఆదా చేయడానికి ఫోన్లు నేపథ్యంలో ఉన్న యాప్‌లను మూసేస్తాయి. మీరు ఆన్‌లైన్‌లో ఉన్నప్పుడు Nexmile Rider నడుస్తూ ఉండేలా అనుమతించండి.';

  @override
  String get permBatteryOrdersTitle => 'ఏ ఆర్డరూ మిస్ అవ్వదు';

  @override
  String get permBatteryOrdersBody =>
      'యాప్ మూసి ఉన్నా, ఫోన్ జేబులో ఉన్నా ఆర్డర్లు మీకు చేరుతాయి.';

  @override
  String get permBatteryLiveTitle => 'ట్రాకింగ్ లైవ్‌గా ఉంటుంది';

  @override
  String get permBatteryLiveBody =>
      'మీరు డెలివరీ చేసే వరకు కస్టమర్లు మిమ్మల్ని మ్యాప్‌లో చూస్తూనే ఉంటారు.';

  @override
  String get permBatteryLightTitle => 'బ్యాటరీపై తక్కువ భారం';

  @override
  String get permBatteryLightBody =>
      'మీరు ఆన్‌లైన్‌లో ఉన్నప్పుడు మాత్రమే ఇది ఎక్కువగా పనిచేస్తుంది.';

  @override
  String get permBatteryAllow => 'నేపథ్య వాడకాన్ని అనుమతించండి';

  @override
  String get permFullScreenTitle => 'లాక్ స్క్రీన్‌పై ఆర్డర్లు';

  @override
  String get permFullScreenBody =>
      'వచ్చే కాల్ లాగా, కొత్త ఆర్డర్లు లాక్ స్క్రీన్‌పై కనిపించేలా అనుమతించండి, అప్పుడు ఒక్క నొక్కుతో అంగీకరించవచ్చు.';

  @override
  String get permFullScreenCallTitle => 'కాల్ లాగా సమాధానం ఇవ్వండి';

  @override
  String get permFullScreenCallBody =>
      'ఫోన్ అన్‌లాక్ చేయకుండానే ఆర్డర్ చూసి అంగీకరించండి.';

  @override
  String get permFullScreenTimeTitle => 'సమయానికి స్పందించండి';

  @override
  String get permFullScreenTimeBody =>
      'మీరు స్పందించని ఆర్డర్ వేరే రైడర్‌కు వెళ్ళిపోతుంది.';

  @override
  String get permFullScreenOnlyTitle => 'కొత్త ఆర్డర్లకు మాత్రమే';

  @override
  String get permFullScreenOnlyBody =>
      'మీ లాక్ స్క్రీన్‌పై ఇంకేదీ ఎప్పుడూ కనిపించదు.';

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
  String get setupTitle => 'ఫోన్ సెటప్';

  @override
  String get setupIntro =>
      'యాప్ మూసి ఉన్నా, ఫోన్ లాక్ అయి ఉన్నా కొత్త ఆర్డర్లు మోగాలంటే ఇవి పూర్తి చేయండి.';

  @override
  String get setupNotifications => 'నోటిఫికేషన్లు';

  @override
  String get setupNotificationsBody => 'కొత్త ఆర్డర్లు మోగి, కనిపించడానికి.';

  @override
  String get setupFullScreen => 'ఫుల్ స్క్రీన్ ఆర్డర్ అలర్ట్‌లు';

  @override
  String get setupFullScreenBody =>
      'కాల్ లాగా, కొత్త ఆర్డర్‌ను మీ లాక్ స్క్రీన్‌పై చూపిస్తుంది.';

  @override
  String get setupOverlay => 'Show over other apps';

  @override
  String get setupOverlayBody =>
      'Opens the new order card on top of whatever app you are using.';

  @override
  String get setupBattery => 'బ్యాటరీ: ఆప్టిమైజ్ చేయవద్దు';

  @override
  String get setupBatteryBody =>
      'మీరు ఆన్‌లైన్‌లో ఉన్నప్పుడు మీ ఫోన్ యాప్‌ను మూసేయకుండా ఆపుతుంది.';

  @override
  String get setupAutostart => 'ఆటోస్టార్ట్';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ఫోన్లలో Nexmile Rider కు ఆటోస్టార్ట్ కూడా ఆన్ చేయాలి. సెట్టింగ్‌లు తెరిచి, ఆటోస్టార్ట్ వెతికి, దాన్ని ఆన్ చేయండి.';
  }

  @override
  String get setupLocation => 'లొకేషన్';

  @override
  String get setupLocationBody => 'దగ్గర్లోని ఆర్డర్లు మీకు పంపడానికి అవసరం.';

  @override
  String get setupAllow => 'అనుమతించు';

  @override
  String get setupOpenSettings => 'సెట్టింగ్‌లు తెరవండి';

  @override
  String get setupMarkDone => 'నేను ఇది చేశాను';

  @override
  String get setupDoneStep => 'పూర్తయింది';

  @override
  String get setupBannerTitle => 'ఫోన్ సెటప్ పూర్తి చేయండి';

  @override
  String setupBannerBody(String count) {
    return 'ఆర్డర్ అలర్ట్‌లు మిస్ కాకుండా ఉండాలంటే ఇంకా $count మిగిలాయి';
  }

  @override
  String get offerEstimatedEarnings => 'అంచనా సంపాదన';

  @override
  String offerPickupLine(String name) {
    return 'పికప్: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'డ్రాప్: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'మీ నుండి సుమారు $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider నుండి బయటకు వెళ్ళాలా?';

  @override
  String get exitBody => 'మీరు నిజంగా యాప్ నుండి బయటకు వెళ్ళాలనుకుంటున్నారా?';

  @override
  String get exitConfirm => 'బయటకు వెళ్ళు';

  @override
  String get onboardingWelcomeTitle => 'Nexmile డెలివరీ భాగస్వామి అవ్వండి';

  @override
  String get onboardingWelcomeSubtitle =>
      'మీ ప్రాంతంలో డెలివరీ చేయండి, మీకు నచ్చిన గంటలు ఎంచుకోండి, ప్రతి వారం డబ్బు పొందండి.';

  @override
  String get onboardingWelcomeNeed => 'ఇవి సిద్ధంగా ఉంచుకోండి';

  @override
  String get onboardingNeedAadhaar => 'ఆధార్ కార్డ్';

  @override
  String get onboardingNeedPan => 'PAN కార్డ్';

  @override
  String get onboardingNeedLicence => 'డ్రైవింగ్ లైసెన్స్, వాహన RC';

  @override
  String get onboardingNeedInsurance => 'వాహన ఇన్సూరెన్స్';

  @override
  String get onboardingNeedBank => 'బ్యాంక్ ఖాతా వివరాలు';

  @override
  String get onboardingNeedNote =>
      'సైకిల్‌పై లేదా నడిచి డెలివరీ చేస్తారా? మీకు ఆధార్, PAN, బ్యాంక్ ఖాతా మాత్రమే చాలు.';

  @override
  String get onboardingWelcomeTime => 'సుమారు 10 నిమిషాలు పడుతుంది';

  @override
  String get onboardingGetStarted => 'మొదలుపెట్టండి';

  @override
  String get onboardingSavedNote => 'ప్రతి దశ తర్వాత సురక్షితంగా సేవ్ అవుతుంది';

  @override
  String get docsTip =>
      'మంచి వెలుతురులో తీసిన స్పష్టమైన ఫోటోలు త్వరగా ఆమోదం పొందుతాయి.';

  @override
  String get docsAllDone => 'తప్పనిసరి పత్రాలన్నీ అందాయి. సమీక్షకు కొనసాగండి.';

  @override
  String get docGroupIdentity => 'గుర్తింపు రుజువు';

  @override
  String get docGroupVehicle => 'లైసెన్స్, వాహన పత్రాలు';

  @override
  String get docGroupMore => 'మరిన్ని పత్రాలు';

  @override
  String get docTapToAdd => 'జోడించడానికి నొక్కండి';

  @override
  String get docUploading => 'అప్‌లోడ్ అవుతోంది…';

  @override
  String get docView => 'చూడండి';

  @override
  String get docSheetSubtitle => 'మొదటిసారే ఆమోదం పొందడం ఎలా';

  @override
  String get docTipCorners => 'నాలుగు మూలలూ ఫోటోలో ఉండాలి';

  @override
  String get docTipGlare => 'అక్షరాలు స్పష్టంగా, మెరుపు లేదా నీడలు లేకుండా';

  @override
  String get docTipOriginal => 'అసలు పత్రం, ఫోటోకాపీ కాదు';

  @override
  String get docTipFace => 'మీ ముఖం స్పష్టంగా కనిపించాలి, నేరుగా చూస్తూ';

  @override
  String get docTipBackground => 'సాదా నేపథ్యం, మంచి వెలుతురు';

  @override
  String get docTipNoCap => 'టోపీ, మాస్క్ లేదా నల్ల కళ్ళద్దాలు వద్దు';

  @override
  String get docTipFullPage => 'మొత్తం పేజీ, ప్రతి లైన్ చదవగలిగేలా';

  @override
  String get docSourceCamera => 'కెమెరా';

  @override
  String get docSourceGallery => 'గ్యాలరీ';

  @override
  String get docSourceFile => 'PDF లేదా ఫైల్';

  @override
  String get reviewSectionDetails => 'మీ వివరాలు';

  @override
  String get reviewSectionDocuments => 'పత్రాలు';

  @override
  String get reviewSectionBank => 'బ్యాంక్ ఖాతా';

  @override
  String get reviewBankHidden => 'జోడించబడింది · మీ భద్రత కోసం దాచబడింది';

  @override
  String get reviewEdit => 'సవరించు';

  @override
  String get reviewNextTitle => 'తర్వాత ఏం జరుగుతుంది';

  @override
  String get reviewNext1 => 'మీరు మీ దరఖాస్తును పంపుతారు';

  @override
  String get reviewNext2 => 'మా టీమ్ మీ వివరాలు, పత్రాలను తనిఖీ చేస్తుంది';

  @override
  String get reviewNext3 =>
      'మీకు సమాచారం వస్తుంది, ఆన్‌లైన్ అయి సంపాదించడం మొదలుపెట్టండి';

  @override
  String get kycStepSubmitted => 'దరఖాస్తు పంపబడింది';

  @override
  String get kycStepVerifying => 'మీ పత్రాలను ధృవీకరిస్తున్నాం';

  @override
  String get kycStepApproved =>
      'ఆమోదించబడింది — ఆన్‌లైన్ అయి సంపాదించడం మొదలుపెట్టండి';
}
