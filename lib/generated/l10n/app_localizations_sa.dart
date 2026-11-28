// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sanskrit (`sa`).
class AppLocalizationsSa extends AppLocalizations {
  AppLocalizationsSa([String locale = 'sa']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'शीघ्रं वितरणम्। नवीनं स्मितम्।';

  @override
  String get chooseLanguageTitle => 'स्वभाषां चिनोतु';

  @override
  String get chooseLanguageSubtitle =>
      'यस्यां भाषायां भवान् सुखं अनुभवति तां चिनोतु। कदापि सेटिंग्स् इत्यत्र परिवर्तयितुं शक्नोति।';

  @override
  String get searchLanguageHint => 'भाषाम् अन्विष्यतु';

  @override
  String get noLanguageFound => 'काचिदपि भाषा न प्राप्ता';

  @override
  String languagesAvailable(int count) {
    return '$count भाषाः उपलब्धाः';
  }

  @override
  String get continueLabel => 'अग्रे गच्छतु';

  @override
  String get selectedLabel => 'चितम्';

  @override
  String get defaultLabel => 'पूर्वनिर्धारितम्';

  @override
  String get homeTitle => 'Nexmile इत्यत्र स्वागतम्';

  @override
  String get homeSubtitle =>
      'नवीनं किराणं, उष्णम् अन्नं, दैनन्दिनानि आवश्यकवस्तूनि च समीपस्थेभ्यः आपणेभ्यः।';

  @override
  String get changeLanguage => 'भाषां परिवर्तयतु';

  @override
  String get languageUpdated => 'भाषा परिवर्तिता';

  @override
  String get appLanguageLabel => 'अनुप्रयोगभाषा';

  @override
  String greetingNamed(String name) {
    return 'नमस्ते, $name';
  }

  @override
  String get loginTitle => 'Nexmile इत्यत्र प्रविशतु';

  @override
  String get loginSubtitle =>
      'स्वस्य विद्युत्पत्रं चलभाषसङ्ख्यां वा लिखतु, वयं सत्यापनसङ्केतं प्रेषयिष्यामः।';

  @override
  String get emailOrPhoneLabel => 'विद्युत्पत्रं चलभाषसङ्ख्या वा';

  @override
  String get emailOrPhoneHint => 'name@example.com अथवा 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'सम्यक् विद्युत्पत्रसङ्केतं दशाङ्कीयां चलभाषसङ्ख्यां वा लिखतु';

  @override
  String get loginHeadline =>
      'Nexmile सह वितरणं करोतु। स्वसमयानुसारम् अर्जयतु।';

  @override
  String get loginOrSignUp => 'प्रविशतु अथवा पञ्जीकरणं करोतु';

  @override
  String get loginEmailHint => 'स्वस्य विद्युत्पत्रसङ्केतं लिखतु';

  @override
  String get invalidEmail => 'सम्यक् विद्युत्पत्रसङ्केतं लिखतु';

  @override
  String get loginHeroBadge => 'प्रापणसहभागी';

  @override
  String get sendCode => 'सङ्केतं प्रेषयतु';

  @override
  String get agreeToTermsOnContinue =>
      'अग्रे गच्छन् भवान् अस्माकं सेवानियमान् गोपनीयतानीतिं च स्वीकरोति।';

  @override
  String get otpTitle => 'भवान् एव इति निश्चिनोतु';

  @override
  String otpSubtitle(String target) {
    return '$target प्रति प्रेषितं षडङ्कीयं सङ्केतं लिखतु';
  }

  @override
  String get otpHelpTitle => 'सङ्केतः न प्राप्तः?';

  @override
  String get otpHelpCheck =>
      'उपरि स्थितां सङ्ख्यां विद्युत्पत्रं वा परीक्षताम्। तत् परिवर्तयितुं पृष्ठतः गच्छतु।';

  @override
  String get otpHelpWait =>
      'सङ्केतस्य आगमने एकनिमेषपर्यन्तं कालः भवितुम् अर्हति। समयगणके समाप्ते भवान् नवीनं सङ्केतं याचितुं शक्नोति।';

  @override
  String get otpHelpSpam =>
      'विद्युत्पत्रेण प्रेषितः चेत् स्पैम्-कोशम् अपि पश्यतु।';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'सत्यापयतु';

  @override
  String get resendCode => 'सङ्केतं पुनः प्रेषयतु';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds क्षणेषु पुनः प्रेषयतु';
  }

  @override
  String get codeResent => 'नवीनः सङ्केतः प्रेषितः';

  @override
  String get incorrectCode =>
      'अयं सङ्केतः अशुद्धः कालातीतो वा। नवीनं सङ्केतं याचतु।';

  @override
  String get enterFullCode => 'सर्वाणि षट् अङ्कानि लिखतु';

  @override
  String get accountSuspended =>
      'इयं लेखा स्थगिता। कृपया सहायकैः सह सम्पर्कं करोतु।';

  @override
  String get tooManyAttempts =>
      'अतीव प्रयत्नाः कृताः। कृपया किञ्चित्कालानन्तरं पुनः प्रयत्नं करोतु।';

  @override
  String get sessionExpired => 'भवतः सत्रं समाप्तम्। कृपया पुनः प्रविशतु।';

  @override
  String get networkError =>
      'अन्तर्जालसम्बन्धः नास्ति। सम्बन्धं परीक्ष्य पुनः प्रयत्नं करोतु।';

  @override
  String get developmentCode => 'विकाससङ्केतः';

  @override
  String get signOut => 'निर्गच्छतु';

  @override
  String get signedOut => 'भवान् निर्गतः';

  @override
  String get somethingWentWrong =>
      'किमपि दोषः अभवत्। कृपया पुनः प्रयत्नं करोतु।';

  @override
  String get profileTitle => 'परिचयपत्रम्';

  @override
  String get profileSectionDetails => 'भवतः विवरणम्';

  @override
  String get profileSectionWork => 'कार्यम्';

  @override
  String get profileSectionApp => 'अनुप्रयोग-सेटिंग्स्';

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
  String get viewProfile => 'परिचयपत्रं पश्यतु';

  @override
  String get nameLabel => 'नाम';

  @override
  String get emailLabel => 'विद्युत्पत्रम्';

  @override
  String get mobileLabel => 'चलभाषसङ्ख्या';

  @override
  String get accountStatusLabel => 'लेखायाः स्थितिः';

  @override
  String get statusActive => 'सक्रियम्';

  @override
  String get statusPending => 'प्रतीक्षमाणम्';

  @override
  String get statusSuspended => 'स्थगितम्';

  @override
  String get verifiedLabel => 'सत्यापितम्';

  @override
  String get notProvided => 'न योजितम्';

  @override
  String get retry => 'पुनः प्रयत्नं करोतु';

  @override
  String get loginRiderNote =>
      'अयम् अनुप्रयोगः Nexmile प्रापणसहभागिनां कृते अस्ति।';

  @override
  String get checkingYourAccount => 'भवतः लेखा परीक्ष्यते';

  @override
  String get couldNotLoadAccount =>
      'भवतः लेखां आनेतुं न अशक्नुम। सम्बन्धं परीक्ष्य पुनः प्रयत्नं करोतु।';

  @override
  String get notARiderAccountTitle => 'इयं प्रापणसहभागिनः लेखा नास्ति';

  @override
  String get notARiderAccount =>
      'इदं विद्युत्पत्रं चलभाषसङ्ख्या वा अन्यस्यां Nexmile लेखायां पूर्वमेव पञ्जीकृतम् अस्ति। निर्गत्य प्रापणसहभागिरूपेण सम्मिलितुम् अन्यत् प्रयुङ्क्ताम्।';

  @override
  String notARiderAccountFor(String role) {
    return 'इदं विद्युत्पत्रं चलभाषसङ्ख्या वा Nexmile इत्यत्र $role इति पूर्वमेव पञ्जीकृतम् अस्ति। निर्गत्य प्रापणसहभागिरूपेण सम्मिलितुम् अन्यत् प्रयुङ्क्ताम्।';
  }

  @override
  String get roleCustomer => 'ग्राहकः';

  @override
  String get roleMerchant => 'व्यापारी';

  @override
  String get roleAdmin => 'प्रशासकः';

  @override
  String get useAnotherAccount => 'अन्यां लेखां प्रयुङ्क्ताम्';

  @override
  String get onboardingTitle => 'Nexmile सहभागी भवतु';

  @override
  String get onboardingSubtitle =>
      'कतिचन विवरणानि भवतः प्रमाणपत्राणि च, ततः अस्माकं दलं भवन्तं सत्यापयति। प्रायः एतत् द्वयोः कार्यदिवसयोः अन्तः भवति।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total मध्ये $current चरणम्';
  }

  @override
  String get stepIdentityTitle => 'भवतः विषये';

  @override
  String get stepIdentitySubtitle =>
      'आधारपत्रे यथा मुद्रितं तथैव स्वनाम लिखतु।';

  @override
  String get stepVehicleTitle => 'भवतः वाहनम्';

  @override
  String get stepVehicleSubtitle =>
      'भवान् किं वाहनं चालयति, तस्य सङ्ख्याफलके का सङ्ख्या अस्ति इति वदतु।';

  @override
  String get stepIdentityNumbersTitle => 'परिचयसङ्ख्याः';

  @override
  String get stepIdentityNumbersSubtitle =>
      'एताः सङ्ख्याः भवता पश्चात् आरोपयिष्यमाणैः प्रमाणपत्रैः सह समानाः भवेयुः।';

  @override
  String get stepLicenceTitle => 'अनुज्ञापत्रं बीमा च';

  @override
  String get stepLicenceSubtitle =>
      'भवान् यस्मिन् दिने प्रापणम् आरभते, तस्मिन् दिने उभे अपि मान्ये भवेताम्।';

  @override
  String get stepBankTitle => 'भवान् कुत्र धनं प्राप्स्यति';

  @override
  String get stepBankSubtitle =>
      'भवतः अर्जनम् अस्मिन् खाते प्रेष्यते। सावधानं परीक्षताम्।';

  @override
  String get stepDocumentsTitle => 'भवतः प्रमाणपत्राणि';

  @override
  String get stepDocumentsSubtitle =>
      'प्रत्येकस्य छायाचित्रं सम्यक् प्रकाशे गृह्णातु। JPG, PNG अथवा PDF, प्रत्येकं 5 MB पर्यन्तम्।';

  @override
  String get stepReviewTitle => 'परीक्ष्य प्रेषयतु';

  @override
  String get stepReviewSubtitle =>
      'प्रेषणानन्तरम् अस्माकं दलस्य परीक्षणपर्यन्तं भवतः विवरणानि बद्धानि भवन्ति।';

  @override
  String get saveAndContinue => 'रक्षित्वा अग्रे गच्छतु';

  @override
  String get backLabel => 'पृष्ठतः';

  @override
  String get fullNameLabel => 'पूर्णनाम';

  @override
  String get fullNameHint => 'आधारपत्रे यथा मुद्रितम्';

  @override
  String get dateOfBirthLabel => 'जन्मदिनाङ्कः';

  @override
  String get selectDate => 'दिनाङ्कं चिनोतु';

  @override
  String get vehicleTypeLabel => 'वाहनप्रकारः';

  @override
  String get vehicleMotorcycle => 'यन्त्रद्विचक्रिका';

  @override
  String get vehicleScooter => 'स्कूटर्';

  @override
  String get vehicleEv => 'विद्युद्वाहनम्';

  @override
  String get vehicleBicycle => 'द्विचक्रिका';

  @override
  String get vehicleWalk => 'पद्भ्याम्';

  @override
  String get vehicleNoPapersNote =>
      'वाहनसङ्ख्यायाः RC इत्यस्य वा आवश्यकता नास्ति। केवलम् आधारः PAN च अपेक्षितौ।';

  @override
  String get vehicleNumberLabel => 'वाहनसङ्ख्या';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC सङ्ख्या';

  @override
  String get aadhaarLabel => 'आधारसङ्ख्या';

  @override
  String get aadhaarHint => '12 अङ्काः';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'वाहनचालन-अनुज्ञापत्रसङ्ख्या';

  @override
  String get drivingLicenceExpiryLabel => 'अनुज्ञापत्रस्य मान्यतावधिः';

  @override
  String get insuranceNumberLabel => 'बीमापत्रसङ्ख्या';

  @override
  String get insuranceExpiryLabel => 'बीमायाः मान्यतावधिः';

  @override
  String get bankAccountNameLabel => 'खाताधारकस्य नाम';

  @override
  String get bankAccountNumberLabel => 'खातसङ्ख्या';

  @override
  String get bankIfscLabel => 'IFSC सङ्केतः';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total मध्ये $done आरोपितानि';
  }

  @override
  String get uploadDocument => 'आरोपयतु';

  @override
  String get replaceDocument => 'प्रतिस्थापयतु';

  @override
  String get removeDocument => 'निष्कासयतु';

  @override
  String get takePhoto => 'छायाचित्रं गृह्णातु';

  @override
  String get chooseFromGallery => 'चित्रसङ्ग्रहात् चिनोतु';

  @override
  String get chooseFile => 'सञ्चिकां चिनोतु';

  @override
  String get uploadingLabel => 'आरोप्यते';

  @override
  String get documentRejected => 'निराकृतम्';

  @override
  String get documentUploaded => 'आरोपितम्';

  @override
  String get documentApproved => 'स्वीकृतम्';

  @override
  String get documentRequired => 'आवश्यकम्';

  @override
  String get documentOptional => 'वैकल्पिकम्';

  @override
  String get fileTooLarge =>
      'इयं सञ्चिका 5 MB तः अधिका। स्कैन्-प्रतेः स्थाने छायाचित्रं प्रयुङ्क्ताम्।';

  @override
  String get unsupportedFileType => 'JPG, PNG अथवा PDF चिनोतु।';

  @override
  String get pickerUnavailable =>
      'तत् उद्घाटयितुं न अशक्नुम। अनुप्रयोगस्य छायाग्राहक-चित्रसम्बद्धाः अनुमतीः परीक्षताम्।';

  @override
  String get uploadFailed =>
      'तत् आरोपणं न सम्पन्नम्। कृपया पुनः प्रयत्नं करोतु।';

  @override
  String get submitForVerification => 'सत्यापनार्थं प्रेषयतु';

  @override
  String get submitConfirmTitle => 'सत्यापनार्थं प्रेष्यताम्?';

  @override
  String get submitConfirmBody =>
      'अस्माकं दलस्य परीक्षणकाले भवतः विवरणानि प्रमाणपत्राणि च बद्धानि भविष्यन्ति। निर्णयपर्यन्तं भवान् तानि परिवर्तयितुं न शक्नोति।';

  @override
  String get cancelLabel => 'निरसयतु';

  @override
  String get completeEverythingBeforeSubmitting =>
      'प्रेषणात् पूर्वं सर्वाणि चरणानि समापयतु, सर्वाणि प्रमाणपत्राणि च आरोपयतु।';

  @override
  String get checkTheHighlightedFields =>
      'चिह्नितानि क्षेत्राणि परीक्ष्य पुनः प्रयत्नं करोतु।';

  @override
  String get underReviewTitle => 'वयं भवतः प्रमाणपत्राणि सत्यापयामः';

  @override
  String get underReviewBody =>
      'अस्माकं दलं प्रायः द्वयोः कार्यदिवसयोः अन्तः परीक्षणं करोति। स्वीकृत्यनन्तरं शीघ्रमेव वयं भवन्तं सूचयिष्यामः।';

  @override
  String get checkAgain => 'पुनः परीक्षताम्';

  @override
  String get stillUnderReview => 'अद्यापि परीक्षणे अस्ति';

  @override
  String get rejectedTitle => 'वयं भवन्तं सत्यापयितुं न अशक्नुम';

  @override
  String get rejectedBody =>
      'अस्माकं दलेन अधः सूचितं संशोध्य प्रमाणपत्राणि पुनः प्रेषयतु।';

  @override
  String get rejectionReasonLabel => 'कारणम्';

  @override
  String get fixAndResubmit => 'संशोध्य पुनः प्रेषयतु';

  @override
  String get blockedTitle => 'भवान् अद्यापि ऑनलाइन् भवितुं न शक्नोति';

  @override
  String get documentsExpiredMessage =>
      'भवतः अनुज्ञापत्रं बीमा वा कालातीतम्। ऑनलाइन् भवितुं नवीनानि मान्यानि प्रमाणपत्राणि आरोपयतु।';

  @override
  String get awaitingVerificationMessage =>
      'भवतः प्रमाणपत्राणां सत्यापनम् अद्यापि प्रचलति।';

  @override
  String get updateDocuments => 'प्रमाणपत्राणि नवीकरोतु';

  @override
  String get riderHomeTitle => 'प्रस्थानाय सज्जः';

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
      'ऑनलाइन् भवतु, वयं समीपस्थानि प्रापणानि भवते प्रेषयिष्यामः।';

  @override
  String get dutyStatusLabel => 'कार्यस्थितिः';

  @override
  String get dutyOnline => 'ऑनलाइन्';

  @override
  String get dutyOffline => 'ऑफलाइन्';

  @override
  String get dutyOnBreak => 'विरामे';

  @override
  String get goOnline => 'ऑनलाइन् भवतु';

  @override
  String get goOffline => 'ऑफलाइन् भवतु';

  @override
  String get takeABreak => 'विरामं गृह्णातु';

  @override
  String get waitingForOrders => 'समीपस्थानाम् आदेशानां प्रतीक्षा';

  @override
  String get youAreOffline =>
      'भवान् ऑफलाइन् अस्ति। भवते किमपि प्रापणं न प्रेष्यते।';

  @override
  String get completedDeliveriesLabel => 'सम्पन्नानि प्रापणानि';

  @override
  String get ratingLabel => 'मूल्याङ्कनम्';

  @override
  String get notRatedYet => 'अद्यापि मूल्याङ्कनं नास्ति';

  @override
  String get vehicleLabel => 'वाहनम्';

  @override
  String get kycStatusLabel => 'सत्यापनम्';

  @override
  String get kycPending => 'न प्रेषितम्';

  @override
  String get kycSubmitted => 'परीक्षणे';

  @override
  String get kycVerified => 'स्वीकृतम्';

  @override
  String get kycRejected => 'निराकृतम्';

  @override
  String get fieldRequired => 'इदम् आवश्यकम्';

  @override
  String get invalidAadhaar => 'स्वस्य आधारसङ्ख्यायाः 12 अङ्कान् लिखतु';

  @override
  String get invalidPan => 'सम्यक् PAN लिखतु, यथा ABCDE1234F';

  @override
  String get invalidIfsc => 'सम्यक् IFSC सङ्केतं लिखतु, यथा SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'सङ्ख्याफलके यथा अस्ति तथैव सङ्ख्यां लिखतु';

  @override
  String get invalidAccountNumber => 'सम्यक् खातसङ्ख्यां लिखतु';

  @override
  String get dateMustBeFuture => 'अयं दिनाङ्कः पूर्वमेव अतीतः';

  @override
  String get mustBeEighteen =>
      'प्रापणार्थं भवतः वयः न्यूनातिन्यूनम् 18 वर्षाणि भवेत्';

  @override
  String get docAadhaarFront => 'आधारपत्रम् (अग्रभागः)';

  @override
  String get docAadhaarBack => 'आधारपत्रम् (पृष्ठभागः)';

  @override
  String get docDrivingLicence => 'वाहनचालन-अनुज्ञापत्रम्';

  @override
  String get docVehicleRc => 'वाहनपञ्जीकरणप्रमाणपत्रम्';

  @override
  String get docInsurance => 'वाहनबीमा';

  @override
  String get docProfilePhoto => 'परिचयचित्रम्';

  @override
  String get docPan => 'PAN पत्रम्';

  @override
  String get docBankProof => 'निरस्तः धनादेशः अधिकोषविवरणं वा';

  @override
  String get ordersTab => 'आदेशाः';

  @override
  String get deliveryTab => 'प्रापणम्';

  @override
  String get historyTab => 'इतिहासः';

  @override
  String get orderBoardTitle => 'भवतः समीपे आदेशाः';

  @override
  String get orderBoardSubtitle =>
      'समीपतमः भोजनालयः प्रथमम्। सूची स्वयमेव नवीक्रियते।';

  @override
  String orderNumberLabel(String number) {
    return 'आदेशः $number';
  }

  @override
  String get pickupLabel => 'ग्रहणस्थानम्';

  @override
  String get dropoffLabel => 'प्रापणस्थानम्';

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
      other: '$count वस्तूनि',
      one: '1 वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'भवतः अर्जनम्';

  @override
  String get collectCashLabel => 'नगदं गृह्णातु';

  @override
  String get prepaidLabel => 'अन्तर्जालेन दत्तम्';

  @override
  String collectAtDoor(String amount) {
    return 'ग्राहकात् $amount नगदं गृह्णातु';
  }

  @override
  String get nothingToCollect => 'पूर्वमेव दत्तम्। धनं न याचतु।';

  @override
  String get acceptOrder => 'स्वीकरोतु';

  @override
  String get viewOrder => 'पश्यतु';

  @override
  String get orderAccepted => 'आदेशः स्वीकृतः। भोजनालयं गच्छतु।';

  @override
  String get orderAlreadyTaken =>
      'अन्यः वाहकः एतं स्वीकृतवान्। इयं नवीनतमा सूची।';

  @override
  String get orderNoLongerYours => 'अयम् आदेशः इदानीं भवतः नास्ति।';

  @override
  String get boardEmptyTitle => 'सम्प्रति आदेशाः न सन्ति';

  @override
  String get boardEmptyBody =>
      'ऑनलाइन् तिष्ठतु। भोजनालयेषु व्यस्ततायां सूची स्वयमेव नवीक्रियते।';

  @override
  String get boardOfflineTitle => 'भवान् ऑफलाइन् अस्ति';

  @override
  String get boardOfflineBody => 'आदेशान् प्राप्तुम् ऑनलाइन् भवतु।';

  @override
  String get boardBusyTitle => 'प्रथमं वर्तमानं प्रापणं समापयतु';

  @override
  String get boardBusyBody =>
      'एतस्य वितरणानन्तरं भवान् अन्यम् आदेशं स्वीकर्तुं शक्नोति।';

  @override
  String get boardNoLocationTitle => 'भवतः स्थानं न ज्ञायते';

  @override
  String get boardNoLocationBody =>
      'आदेशाः भोजनालयस्य सामीप्यानुसारं क्रम्यन्ते, अतः किमपि दर्शयितुं भवतः स्थानम् आवश्यकम्।';

  @override
  String get boardNotVerifiedTitle => 'अद्यापि प्रापणार्थं स्वीकृतिः नास्ति';

  @override
  String get activeDeliveryTitle => 'भवतः प्रापणम्';

  @override
  String get headToRestaurant => 'भोजनालयं गच्छतु';

  @override
  String get deliverToCustomer => 'ग्राहकाय प्रापयतु';

  @override
  String get noActiveDeliveryTitle => 'हस्ते किमपि नास्ति';

  @override
  String get noActiveDeliveryBody =>
      'आदेशसूच्याः एकम् आदेशं स्वीकरोतु, सः अत्र दृश्यते।';

  @override
  String get confirmPickupButton => 'मया गृहीतम्';

  @override
  String get pickupCodeTitle => 'ग्रहणसङ्केतः';

  @override
  String get pickupCodeSubtitle => 'भोजनालयात् सङ्केतं याचित्वा अत्र लिखतु।';

  @override
  String get pickupCodeHint => 'सङ्केतः';

  @override
  String get wrongPickupCode =>
      'सः सङ्केतः न मिलति। भोजनालयेन सह पुनः परीक्षताम्।';

  @override
  String get pickupConfirmed => 'गृहीतम्। ग्राहकाय प्रापयतु।';

  @override
  String get confirmDeliveryButton => 'वितरितम्';

  @override
  String get stepReachRestaurant => 'भोजनालयं प्राप्नोतु';

  @override
  String get stepPickUp => 'गृह्णातु';

  @override
  String get stepReachCustomer => 'ग्राहकं प्राप्नोतु';

  @override
  String get stepDeliver => 'समर्पयतु';

  @override
  String get swipePickUp => 'गृहीत्वा सारयतु';

  @override
  String get swipeDeliver => 'वितरणाय सारयतु';

  @override
  String get cashToCollectLabel => 'ग्राहकात् ग्राह्यं नगदम्';

  @override
  String get confirmDeliveryTitle => 'वितरणं निश्चिनोतु';

  @override
  String get confirmDeliveryBody =>
      'ग्राहकस्य हस्ते आदेशे प्राप्ते एव निश्चिनोतु।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'प्रथमं ग्राहकात् $amount नगदं गृह्णातु, ततः निश्चिनोतु।';
  }

  @override
  String get deliveryConfirmed =>
      'वितरितम्। धन्यवादः, भवान् पुनः ऑनलाइन् अस्ति।';

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
  String get releaseOrderButton => 'प्रत्यर्पयतु';

  @override
  String get releaseOrderTitle => 'अयम् आदेशः प्रत्यर्प्यताम्?';

  @override
  String get releaseOrderBody =>
      'अन्यस्य वाहकस्य कृते सः पुनः आदेशसूच्यां गच्छति। भोजनग्रहणात् पूर्वमेव एतत् कर्तुं शक्यते।';

  @override
  String get releaseReasonHint => 'कारणम् (वैकल्पिकम्)';

  @override
  String get orderReleased =>
      'प्रत्यर्पितः। अन्येषां वाहकानां कृते पुनः उपलभ्यते।';

  @override
  String get finishCurrentOrderFirst =>
      'प्रथमं वर्तमानम् आदेशं समापयतु प्रत्यर्पयतु वा।';

  @override
  String get callRestaurant => 'भोजनालयम् आह्वयतु';

  @override
  String get callCustomer => 'ग्राहकम् आह्वयतु';

  @override
  String get openInMaps => 'मार्गनिर्देशाः';

  @override
  String get customerNoteLabel => 'ग्राहकस्य टिप्पणी';

  @override
  String get orderItemsLabel => 'स्यूते किम् अस्ति';

  @override
  String get orderDetailsTitle => 'आदेशविवरणम्';

  @override
  String get historyTitle => 'पूर्वप्रापणानि';

  @override
  String get historyEmptyTitle => 'अद्यापि प्रापणानि न सन्ति';

  @override
  String get historyEmptyBody => 'भवता सम्पन्नाः आदेशाः अत्र दृश्यन्ते।';

  @override
  String get historySearchHint => 'आदेशं भोजनालयं वा अन्विष्यतु';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'अद्य';

  @override
  String get historyYesterday => 'ह्यः';

  @override
  String get historyEarlier => 'पूर्वतनाः';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count प्रापणानि',
      one: '1 प्रापणम्',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” इति अन्विष्टे किमपि न प्राप्तम्।';
  }

  @override
  String historyCashTaken(String amount) {
    return 'गृहीतं नगदम् $amount';
  }

  @override
  String get orderDelivered => 'वितरितम्';

  @override
  String get orderCancelled => 'निरस्तम्';

  @override
  String get orderPreparing => 'सज्जीक्रियते';

  @override
  String get orderReadyForPickup => 'ग्रहणाय सज्जम्';

  @override
  String get orderAssigned => 'भवते नियुक्तम्';

  @override
  String get orderPickedUp => 'गृहीतम्';

  @override
  String get orderOutForDelivery => 'मार्गे';

  @override
  String get trackingOn => 'स्थानसम्प्रेषणं सक्रियम्';

  @override
  String get locationUnavailableMessage =>
      'भवतः स्थानं पठितुं न शक्नुमः। स्थानं सक्रियं कृत्वा Nexmile Rider कृते अनुमतिं ददातु।';

  @override
  String get locationPermissionTitle => 'स्थानम् आवश्यकम्';

  @override
  String get locationPermissionBody =>
      'आदेशवितरणव्यवस्था भवतः सामीप्यानुसारं आदेशान् क्रमयति, ग्राहकः च मानचित्रे भवन्तम् अनुसरति। ऑनलाइन् भवितुं स्थानानुमतिं ददातु।';

  @override
  String get locationSettingsButton => 'सेटिंग्स् उद्घाटयतु';

  @override
  String get enableLocationButton => 'स्थानानुमतिं ददातु';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'कार्यकालः';

  @override
  String get payoutsTitle => 'आयप्रदानानि';

  @override
  String get payoutsEntryValue => 'साप्ताहिकम् अर्जनम्';

  @override
  String get payoutDetailsTitle => 'साप्ताहिकम् आयप्रदानम्';

  @override
  String get payoutsEmptyTitle => 'अद्यापि आयप्रदानानि न सन्ति';

  @override
  String get payoutsEmptyBody =>
      'सप्ताहस्य गणनानन्तरं प्रत्येकसप्ताहस्य भवतः अर्जनम् अत्र दृश्यते।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'प्रतीक्षमाणम्';

  @override
  String get payoutStatusProcessing => 'प्रक्रियाधीनम्';

  @override
  String get payoutStatusPaid => 'दत्तम्';

  @override
  String get payoutNotSentNote =>
      'अस्य सप्ताहस्य भवतः अर्जनं गणितम्। धनम् अद्यापि भवतः अधिकोषं न प्रेषितम्।';

  @override
  String payoutPaidOn(String date) {
    return '$date दिनाङ्के भवतः अधिकोषं प्रेषितम्';
  }

  @override
  String get payoutPaidNote => 'अस्य सप्ताहस्य अधिकोषस्थानान्तरणं सम्पन्नम्।';

  @override
  String get payoutReferenceLabel => 'स्थानान्तरणसन्दर्भः';

  @override
  String get payoutNetLabel => 'देयराशिः';

  @override
  String get payoutDeliveryEarnings => 'प्रापणार्जनम्';

  @override
  String get payoutReferralEarnings => 'अनुशंसार्जनम्';

  @override
  String get payoutCarriedIn => 'पूर्वसप्ताहात्';

  @override
  String get payoutCarriedInNote =>
      '₹100 तः न्यूनाः राशयः पृथक् न स्थानान्तर्यन्ते। ते अग्रिमसप्ताहे योज्यन्ते।';

  @override
  String get payoutGross => 'सकलम् अर्जनम्';

  @override
  String get payoutDeductions => 'कर्तनानि';

  @override
  String get payoutsLatestWeek => 'नवीनतमः सप्ताहः';

  @override
  String get payoutsPaidSoFar => 'इदानीं यावत् दत्तम्';

  @override
  String get payoutsNotYetSent => 'अद्यापि न प्रेषितम्';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'गणितम्';

  @override
  String get payoutStepSending => 'प्रेष्यते';

  @override
  String get payoutStepInBank => 'भवतः अधिकोषे';

  @override
  String get navToRestaurant => 'भोजनालयं प्रति';

  @override
  String get navToCustomer => 'ग्राहकं प्रति';

  @override
  String navHeadTowards(String place) {
    return '$place प्रति गच्छतु';
  }

  @override
  String navThen(String instruction) {
    return 'ततः: $instruction';
  }

  @override
  String get navArrived => 'भवान् गन्तव्यं प्राप्तः';

  @override
  String navArrivedAt(String place) {
    return '$place इत्यत्र';
  }

  @override
  String get navFindingRoute => 'उत्तमः मार्गः अन्विष्यते…';

  @override
  String get navNoRoute =>
      'मार्गनिर्देशाः न उपलभ्यन्ते। ऋजुरेखीयं दूरत्वं दर्श्यते।';

  @override
  String get navFindingLocation => 'भवतः स्थानम् अन्विष्यते…';

  @override
  String get navLocationOff => 'मार्गदर्शनार्थं स्थानं सक्रियं करोतु।';

  @override
  String get navEnd => 'मार्गदर्शनं समापयतु';

  @override
  String get navRecentre => 'पुनः केन्द्रीकरणम्';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes निमेषाः';
  }

  @override
  String get navStart => 'मार्गदर्शनम्';

  @override
  String get orderReachedRestaurant => 'भोजनालये';

  @override
  String get orderReachedCustomer => 'ग्राहकसमीपे';

  @override
  String get reachedRestaurantButton => 'मया भोजनालयः प्राप्तः';

  @override
  String get reachedCustomerButton => 'मया ग्राहकस्थानं प्राप्तम्';

  @override
  String get reachedRestaurantDone => 'भवतः आगमनं पाकशालायै सूचितम्';

  @override
  String get reachedCustomerDone => 'भवान् बहिः अस्ति इति ग्राहकाय सूचितम्';

  @override
  String get offerTitle => 'नवीनः आदेशः';

  @override
  String get offerYouEarn => 'भवतः अर्जनम्';

  @override
  String get offerPickup => 'ग्रहणस्थानम्';

  @override
  String get offerDrop => 'प्रापणस्थानम्';

  @override
  String offerAway(String distance) {
    return '$distance दूरे';
  }

  @override
  String offerTrip(String distance) {
    return '$distance यात्रा';
  }

  @override
  String offerItems(String count) {
    return '$count वस्तूनि';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount नगदं गृह्णातु';
  }

  @override
  String get offerPrepaid => 'पूर्वं दत्तम् · नगदं नास्ति';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'प्रायः $minutes निमेषेषु भोजनं सज्जं भविष्यति';
  }

  @override
  String get offerSwipeToAccept => 'स्वीकर्तुं सारयतु';

  @override
  String get offerAccepting => 'स्वीक्रियते…';

  @override
  String get offerReject => 'निराकरोतु';

  @override
  String get offerRejectTitle => 'किमर्थं निराकरोति?';

  @override
  String get offerReasonTooFar => 'अतिदूरम्';

  @override
  String get offerReasonBusy => 'सम्प्रति व्यस्तः';

  @override
  String get offerReasonVehicle => 'वाहनसमस्या';

  @override
  String get offerReasonOther => 'अन्यत् कारणम्';

  @override
  String get offerTaken => 'अन्येन वाहकेन आदेशः स्वीकृतः';

  @override
  String get offerAutoOffline =>
      '3 आदेशाः अनुत्तरिताः, अतः भवान् ऑफलाइन् कृतः। सज्जः सन् पुनः ऑनलाइन् भवतु।';

  @override
  String get mockLocationBlocked =>
      'आदेशान् प्राप्तुं कमपि कृत्रिमस्थान-अनुप्रयोगं निष्क्रियं करोतु।';

  @override
  String get dropoffDoorLabel => 'गृहम् / तलम्';

  @override
  String get dropoffStreetLabel => 'मार्गः';

  @override
  String get dropoffLandmarkLabel => 'चिह्नस्थलम्';

  @override
  String get doorPhotoLabel => 'द्वारस्य चित्रम्';

  @override
  String get doorPhotoHint => 'बृहत्तरं द्रष्टुं स्पृशतु';

  @override
  String get doorPhotoUnavailable => 'चित्रम् अधुना न उपलभ्यते';

  @override
  String permStepCount(int step, int total) {
    return '$total मध्ये $step';
  }

  @override
  String get permNotNow => 'इदानीं न';

  @override
  String get permLocationTitle => 'स्थानं सक्रियं करोतु';

  @override
  String get permLocationBody =>
      'आदेशाः भोजनालयस्य समीपतमं वाहकं प्रति गच्छन्ति, ग्राहकाः च मानचित्रे स्वभोजनम् अनुसरन्ति।';

  @override
  String get permLocationNearTitle => 'भवतः समीपे आदेशाः';

  @override
  String get permLocationNearBody =>
      'वयं समीपस्थेभ्यः भोजनालयेभ्यः आदेशान् ददामः, येन भवान् अल्पं चालयति अधिकं च अर्जयति।';

  @override
  String get permLocationTrackTitle => 'सजीवम् अनुसरणम्';

  @override
  String get permLocationTrackBody =>
      'ग्राहकाः मानचित्रे भवन्तं पश्यन्ति, अतः ते भवन्तं न्यूनम् आह्वयन्ति।';

  @override
  String get permLocationOnlineTitle => 'यावत् भवान् ऑनलाइन् तावत् एव';

  @override
  String get permLocationOnlineBody =>
      'ऑफलाइन् भवतु, तत् स्थगितं भवति। यदा तत् प्रयुज्यते तदा सूचना दृश्यते।';

  @override
  String get permLocationAllow => 'स्थानानुमतिं ददातु';

  @override
  String get permNotifyTitle => 'प्रत्येकम् आदेशं प्राप्नोतु';

  @override
  String get permNotifyBody =>
      'पटले बद्धे अपि नवीनाः आदेशाः चलभाषाह्वानम् इव ध्वनन्ति।';

  @override
  String get permNotifyRingTitle => 'ध्वनन्त्यः आदेशसूचनाः';

  @override
  String get permNotifyRingBody => 'सूचनातः एव स्वीकरोतु निराकरोतु वा।';

  @override
  String get permNotifyUpdatesTitle => 'आयप्रदानानि स्वीकृतयः च';

  @override
  String get permNotifyUpdatesBody =>
      'भवतः प्रमाणपत्राणि कदा स्वीकृतानि, धनं कदा प्रेषितम् इति जानातु।';

  @override
  String get permNotifyControlTitle => 'नियन्त्रणं भवतः हस्ते';

  @override
  String get permNotifyControlBody =>
      'चलभाषस्य सेटिंग्स् इत्यत्र कदापि परिवर्तयतु।';

  @override
  String get permNotifyAllow => 'सूचनाः सक्रियाः करोतु';

  @override
  String get permBatteryTitle => 'आदेशाः निरन्तरम् आगच्छन्तु';

  @override
  String get permBatteryBody =>
      'विद्युत्कोशरक्षणार्थं चलभाषाः पृष्ठभूमौ अनुप्रयोगान् पिदधति। यावत् भवान् ऑनलाइन् अस्ति तावत् Nexmile Rider चलितुं ददातु।';

  @override
  String get permBatteryOrdersTitle => 'एकोऽपि आदेशः न अपगच्छति';

  @override
  String get permBatteryOrdersBody =>
      'अनुप्रयोगः पिहितः, चलभाषः अपि निहितः — तथापि प्रस्तावाः भवन्तं प्राप्नुवन्ति।';

  @override
  String get permBatteryLiveTitle => 'अनुसरणं सजीवं तिष्ठति';

  @override
  String get permBatteryLiveBody =>
      'वितरणपर्यन्तं ग्राहकाः मानचित्रे भवन्तं पश्यन्ति एव।';

  @override
  String get permBatteryLightTitle => 'अल्पविद्युद्व्ययः';

  @override
  String get permBatteryLightBody =>
      'यावत् भवान् ऑनलाइन् अस्ति तावत् एव तत् अधिकं कार्यं करोति।';

  @override
  String get permBatteryAllow => 'पृष्ठभूमौ चालनाय अनुमतिं ददातु';

  @override
  String get permFullScreenTitle => 'बद्धपटले आदेशाः';

  @override
  String get permFullScreenBody =>
      'आगच्छत् आह्वानम् इव नवीनान् आदेशान् बद्धपटलस्य उपरि दर्शयितुं ददातु, येन एकस्पर्शेन स्वीकर्तुं शक्नोति।';

  @override
  String get permFullScreenCallTitle => 'आह्वानम् इव उत्तरयतु';

  @override
  String get permFullScreenCallBody =>
      'चलभाषम् अनुद्घाट्य एव आदेशं दृष्ट्वा स्वीकरोतु।';

  @override
  String get permFullScreenTimeTitle => 'समये प्रतिक्रियां ददातु';

  @override
  String get permFullScreenTimeBody =>
      'यस्य प्रस्तावस्य उत्तरं न ददाति, सः अन्यं वाहकं प्रति गच्छति।';

  @override
  String get permFullScreenOnlyTitle => 'केवलं नवीनादेशेभ्यः';

  @override
  String get permFullScreenOnlyBody =>
      'अन्यत् किमपि भवतः बद्धपटलस्य उपरि कदापि न दृश्यते।';

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
  String get setupTitle => 'चलभाषस्य सज्जीकरणम्';

  @override
  String get setupIntro =>
      'एतानि समापयतु, येन अनुप्रयोगे पिहिते चलभाषे बद्धे वा अपि नवीनाः आदेशाः ध्वनन्ति।';

  @override
  String get setupNotifications => 'सूचनाः';

  @override
  String get setupNotificationsBody =>
      'येन नवीनाः आदेशाः ध्वनेयुः दृश्येरन् च।';

  @override
  String get setupFullScreen => 'पूर्णपटल-आदेशसूचनाः';

  @override
  String get setupFullScreenBody =>
      'आह्वानम् इव नवीनम् आदेशं बद्धपटलस्य उपरि दर्शयति।';

  @override
  String get setupOverlay => 'Show over other apps';

  @override
  String get setupOverlayBody =>
      'Opens the new order card on top of whatever app you are using.';

  @override
  String get setupBattery => 'विद्युत्कोशः: अनुकूलनं न';

  @override
  String get setupBatteryBody =>
      'यावत् भवान् ऑनलाइन् अस्ति, तावत् चलभाषः अनुप्रयोगं न पिदध्यात्।';

  @override
  String get setupAutostart => 'स्वयमारम्भः';

  @override
  String setupAutostartBody(String brand) {
    return '$brand चलभाषेषु Nexmile Rider कृते स्वयमारम्भः अपि सक्रियः आवश्यकः। सेटिंग्स् उद्घाट्य स्वयमारम्भम् अन्विष्य सक्रियं करोतु।';
  }

  @override
  String get setupLocation => 'स्थानम्';

  @override
  String get setupLocationBody =>
      'समीपस्थान् आदेशान् भवते प्रेषयितुम् आवश्यकम्।';

  @override
  String get setupAllow => 'अनुमतिं ददातु';

  @override
  String get setupOpenSettings => 'सेटिंग्स् उद्घाटयतु';

  @override
  String get setupMarkDone => 'मया कृतम्';

  @override
  String get setupDoneStep => 'सम्पन्नम्';

  @override
  String get setupBannerTitle => 'चलभाषसज्जीकरणं समापयतु';

  @override
  String setupBannerBody(String count) {
    return '$count अवशिष्टानि, येन कापि आदेशसूचना न अपगच्छेत्';
  }

  @override
  String get offerEstimatedEarnings => 'अनुमानितम् अर्जनम्';

  @override
  String offerPickupLine(String name) {
    return 'ग्रहणम्: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'प्रापणम्: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'भवतः प्रायः $distance दूरे';
  }

  @override
  String get exitTitle => 'Nexmile Rider तः निर्गम्यताम्?';

  @override
  String get exitBody => 'किं भवान् निश्चयेन अनुप्रयोगात् निर्गन्तुम् इच्छति?';

  @override
  String get exitConfirm => 'निर्गच्छतु';

  @override
  String get onboardingWelcomeTitle => 'Nexmile प्रापणसहभागी भवतु';

  @override
  String get onboardingWelcomeSubtitle =>
      'स्वप्रदेशे वितरणं करोतु, स्वसमयं स्वयं चिनोतु, प्रतिसप्ताहं धनं प्राप्नोतु।';

  @override
  String get onboardingWelcomeNeed => 'एतानि सज्जानि करोतु';

  @override
  String get onboardingNeedAadhaar => 'आधारपत्रम्';

  @override
  String get onboardingNeedPan => 'PAN पत्रम्';

  @override
  String get onboardingNeedLicence => 'वाहनचालन-अनुज्ञापत्रं वाहनस्य RC च';

  @override
  String get onboardingNeedInsurance => 'वाहनबीमा';

  @override
  String get onboardingNeedBank => 'अधिकोषखातस्य विवरणम्';

  @override
  String get onboardingNeedNote =>
      'द्विचक्रिकया पद्भ्यां वा गच्छति? केवलम् आधारः, PAN, अधिकोषखातं च आवश्यकानि।';

  @override
  String get onboardingWelcomeTime => 'प्रायः 10 निमेषाः अपेक्ष्यन्ते';

  @override
  String get onboardingGetStarted => 'आरभताम्';

  @override
  String get onboardingSavedNote => 'प्रत्येकचरणानन्तरं सुरक्षितरूपेण रक्ष्यते';

  @override
  String get docsTip =>
      'सम्यक् प्रकाशे स्पष्टानि छायाचित्राणि शीघ्रतमं स्वीक्रियन्ते।';

  @override
  String get docsAllDone =>
      'सर्वाणि आवश्यकानि प्रमाणपत्राणि प्राप्तानि। परीक्षणाय अग्रे गच्छतु।';

  @override
  String get docGroupIdentity => 'परिचयप्रमाणम्';

  @override
  String get docGroupVehicle => 'अनुज्ञापत्रं वाहनपत्राणि च';

  @override
  String get docGroupMore => 'अधिकानि प्रमाणपत्राणि';

  @override
  String get docTapToAdd => 'योजयितुं स्पृशतु';

  @override
  String get docUploading => 'आरोप्यते…';

  @override
  String get docView => 'पश्यतु';

  @override
  String get docSheetSubtitle => 'प्रथमप्रयत्ने एव स्वीकृतिः कथं भवेत्';

  @override
  String get docTipCorners => 'चत्वारः अपि कोणाः छायाचित्रस्य अन्तः';

  @override
  String get docTipGlare => 'स्पष्टाक्षराणि, दीप्तिः छाया वा न';

  @override
  String get docTipOriginal => 'मूलप्रमाणपत्रम्, न तु प्रतिलिपिः';

  @override
  String get docTipFace => 'भवतः मुखं स्पष्टं दृश्यताम्, सम्मुखं पश्यतु';

  @override
  String get docTipBackground => 'सरला पृष्ठभूमिः, सम्यक् प्रकाशः च';

  @override
  String get docTipNoCap => 'शिरस्कं, मुखावरणं, सूर्योपनेत्रं वा न';

  @override
  String get docTipFullPage => 'पूर्णं पृष्ठम्, प्रत्येका पङ्क्तिः पठनीया';

  @override
  String get docSourceCamera => 'छायाग्राहकम्';

  @override
  String get docSourceGallery => 'चित्रसङ्ग्रहः';

  @override
  String get docSourceFile => 'PDF अथवा सञ्चिका';

  @override
  String get reviewSectionDetails => 'भवतः विवरणम्';

  @override
  String get reviewSectionDocuments => 'प्रमाणपत्राणि';

  @override
  String get reviewSectionBank => 'अधिकोषखातम्';

  @override
  String get reviewBankHidden => 'योजितम् · भवतः सुरक्षार्थं गोपितम्';

  @override
  String get reviewEdit => 'सम्पादयतु';

  @override
  String get reviewNextTitle => 'अनन्तरं किं भवति';

  @override
  String get reviewNext1 => 'भवान् स्वावेदनं प्रेषयति';

  @override
  String get reviewNext2 => 'अस्माकं दलं भवतः विवरणं प्रमाणपत्राणि च परीक्षते';

  @override
  String get reviewNext3 => 'भवान् सूच्यते, ततः ऑनलाइन् भूत्वा अर्जनम् आरभते';

  @override
  String get kycStepSubmitted => 'आवेदनं प्रेषितम्';

  @override
  String get kycStepVerifying => 'भवतः प्रमाणपत्राणि सत्याप्यन्ते';

  @override
  String get kycStepApproved => 'स्वीकृतम् — ऑनलाइन् भूत्वा अर्जनम् आरभताम्';
}
