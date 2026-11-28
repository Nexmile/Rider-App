// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'ଦ୍ରୁତ ଡେଲିଭରି। ସତେଜ ହସ।';

  @override
  String get chooseLanguageTitle => 'ଆପଣଙ୍କ ଭାଷା ବାଛନ୍ତୁ';

  @override
  String get chooseLanguageSubtitle =>
      'ଆପଣ ସହଜ ଅନୁଭବ କରୁଥିବା ଭାଷା ବାଛନ୍ତୁ। ଆପଣ ଏହାକୁ ଯେକୌଣସି ସମୟରେ ସେଟିଂସରେ ବଦଳାଇ ପାରିବେ।';

  @override
  String get searchLanguageHint => 'ଭାଷା ଖୋଜନ୍ତୁ';

  @override
  String get noLanguageFound => 'କୌଣସି ଭାଷା ମିଳିଲା ନାହିଁ';

  @override
  String languagesAvailable(int count) {
    return '$countଟି ଭାଷା ଉପଲବ୍ଧ';
  }

  @override
  String get continueLabel => 'ଆଗକୁ ବଢ଼ନ୍ତୁ';

  @override
  String get selectedLabel => 'ଚୟନିତ';

  @override
  String get defaultLabel => 'ଡିଫଲ୍ଟ';

  @override
  String get homeTitle => 'Nexmile କୁ ସ୍ୱାଗତ';

  @override
  String get homeSubtitle =>
      'ସତେଜ ମୁଦି ସାମଗ୍ରୀ, ଗରମ ଖାଦ୍ୟ ଏବଂ ଦୈନନ୍ଦିନ ଆବଶ୍ୟକତା ଆପଣଙ୍କ ନିକଟସ୍ଥ ଦୋକାନରୁ।';

  @override
  String get changeLanguage => 'ଭାଷା ବଦଳାନ୍ତୁ';

  @override
  String get languageUpdated => 'ଭାଷା ବଦଳାଗଲା';

  @override
  String get appLanguageLabel => 'ଆପ୍ ଭାଷା';

  @override
  String greetingNamed(String name) {
    return 'ନମସ୍କାର, $name';
  }

  @override
  String get loginTitle => 'Nexmile ରେ ସାଇନ ଇନ କରନ୍ତୁ';

  @override
  String get loginSubtitle =>
      'ଆପଣଙ୍କ ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର ଦିଅନ୍ତୁ, ଆମେ ଯାଞ୍ଚ କୋଡ ପଠାଇବୁ।';

  @override
  String get emailOrPhoneLabel => 'ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର';

  @override
  String get emailOrPhoneHint => 'name@example.com କିମ୍ବା 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ସଠିକ ଇମେଲ ଠିକଣା କିମ୍ବା 10 ଅଙ୍କର ମୋବାଇଲ ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get loginHeadline =>
      'Nexmile ସହ ଡେଲିଭରି କରନ୍ତୁ। ନିଜ ସମୟରେ ରୋଜଗାର କରନ୍ତୁ।';

  @override
  String get loginOrSignUp => 'ଲଗ ଇନ କିମ୍ବା ସାଇନ ଅପ କରନ୍ତୁ';

  @override
  String get loginEmailHint => 'ଆପଣଙ୍କ ଇମେଲ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get invalidEmail => 'ସଠିକ ଇମେଲ ଠିକଣା ଦିଅନ୍ତୁ';

  @override
  String get loginHeroBadge => 'ଡେଲିଭରି ପାର୍ଟନର';

  @override
  String get sendCode => 'କୋଡ ପଠାନ୍ତୁ';

  @override
  String get agreeToTermsOnContinue =>
      'ଆଗକୁ ବଢ଼ିବା ଦ୍ୱାରା ଆପଣ ଆମର ସେବା ସର୍ତ୍ତାବଳୀ ଓ ଗୋପନୀୟତା ନୀତିରେ ସହମତ ହେଉଛନ୍ତି।';

  @override
  String get otpTitle => 'ଏହା ଆପଣ ବୋଲି ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String otpSubtitle(String target) {
    return '$target କୁ ପଠାଯାଇଥିବା 6 ଅଙ୍କର କୋଡ ଦିଅନ୍ତୁ';
  }

  @override
  String get otpHelpTitle => 'କୋଡ ମିଳିଲା ନାହିଁ?';

  @override
  String get otpHelpCheck =>
      'ଉପରେ ଥିବା ନମ୍ବର କିମ୍ବା ଇମେଲ ଯାଞ୍ଚ କରନ୍ତୁ। ବଦଳାଇବାକୁ ପଛକୁ ଫେରନ୍ତୁ।';

  @override
  String get otpHelpWait =>
      'କୋଡ ଆସିବାକୁ ଏକ ମିନିଟ ପର୍ଯ୍ୟନ୍ତ ଲାଗିପାରେ। ଟାଇମର ସରିଲେ ଆପଣ ନୂଆ କୋଡ ମାଗିପାରିବେ।';

  @override
  String get otpHelpSpam => 'ଇମେଲ ପାଇଁ, ସ୍ପାମ ଫୋଲ୍ଡରରେ ମଧ୍ୟ ଦେଖନ୍ତୁ।';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get resendCode => 'କୋଡ ପୁଣି ପଠାନ୍ତୁ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ସେକେଣ୍ଡରେ ପୁଣି ପଠାନ୍ତୁ';
  }

  @override
  String get codeResent => 'ନୂଆ କୋଡ ପଠାଯାଇଛି';

  @override
  String get incorrectCode =>
      'ଏହି କୋଡ ଭୁଲ କିମ୍ବା ମିଆଦ ସରିଯାଇଛି। ନୂଆ କୋଡ ମାଗନ୍ତୁ।';

  @override
  String get enterFullCode => 'ପୂରା 6 ଅଙ୍କ ଦିଅନ୍ତୁ';

  @override
  String get accountSuspended =>
      'ଏହି ଖାତା ନିଲମ୍ବିତ କରାଯାଇଛି। ଦୟାକରି ସହାୟତା ସହ ଯୋଗାଯୋଗ କରନ୍ତୁ।';

  @override
  String get tooManyAttempts =>
      'ବହୁତ ଅଧିକ ଚେଷ୍ଟା ହୋଇଗଲା। ଦୟାକରି କିଛି ସମୟ ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get sessionExpired =>
      'ଆପଣଙ୍କ ସେସନର ମିଆଦ ସରିଯାଇଛି। ଦୟାକରି ପୁଣି ସାଇନ ଇନ କରନ୍ତୁ।';

  @override
  String get networkError =>
      'ଇଣ୍ଟରନେଟ ସଂଯୋଗ ନାହିଁ। ସଂଯୋଗ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get developmentCode => 'ଡେଭଲପମେଣ୍ଟ କୋଡ';

  @override
  String get signOut => 'ସାଇନ ଆଉଟ';

  @override
  String get signedOut => 'ଆପଣ ସାଇନ ଆଉଟ ହୋଇଛନ୍ତି';

  @override
  String get somethingWentWrong => 'କିଛି ଭୁଲ ହେଲା। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get profileTitle => 'ପ୍ରୋଫାଇଲ';

  @override
  String get profileSectionDetails => 'ଆପଣଙ୍କ ବିବରଣୀ';

  @override
  String get profileSectionWork => 'କାମ';

  @override
  String get profileSectionApp => 'ଆପ୍ ସେଟିଂସ';

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
  String get viewProfile => 'ପ୍ରୋଫାଇଲ ଦେଖନ୍ତୁ';

  @override
  String get nameLabel => 'ନାମ';

  @override
  String get emailLabel => 'ଇମେଲ';

  @override
  String get mobileLabel => 'ମୋବାଇଲ ନମ୍ବର';

  @override
  String get accountStatusLabel => 'ଖାତାର ସ୍ଥିତି';

  @override
  String get statusActive => 'ସକ୍ରିୟ';

  @override
  String get statusPending => 'ବିଚାରାଧୀନ';

  @override
  String get statusSuspended => 'ନିଲମ୍ବିତ';

  @override
  String get verifiedLabel => 'ଯାଞ୍ଚ ହୋଇଛି';

  @override
  String get notProvided => 'ଯୋଡ଼ାଯାଇନାହିଁ';

  @override
  String get retry => 'ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get loginRiderNote => 'ଏହି ଆପ୍ Nexmile ଡେଲିଭରି ପାର୍ଟନରଙ୍କ ପାଇଁ।';

  @override
  String get checkingYourAccount => 'ଆପଣଙ୍କ ଖାତା ଯାଞ୍ଚ କରୁଛୁ';

  @override
  String get couldNotLoadAccount =>
      'ଆପଣଙ୍କ ଖାତା ଲୋଡ କରିପାରିଲୁ ନାହିଁ। ସଂଯୋଗ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get notARiderAccountTitle => 'ଏହା ଡେଲିଭରି ପାର୍ଟନର ଖାତା ନୁହେଁ';

  @override
  String get notARiderAccount =>
      'ଏହି ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର ଅନ୍ୟ ଏକ Nexmile ଖାତାରେ ରେଜିଷ୍ଟର ହୋଇସାରିଛି। ଡେଲିଭରି ପାର୍ଟନର ଭାବେ ଯୋଗ ଦେବାକୁ ସାଇନ ଆଉଟ କରି ଅନ୍ୟ ଏକ ଇମେଲ କିମ୍ବା ନମ୍ବର ବ୍ୟବହାର କରନ୍ତୁ।';

  @override
  String notARiderAccountFor(String role) {
    return 'ଏହି ଇମେଲ କିମ୍ବା ମୋବାଇଲ ନମ୍ବର Nexmile $role ଭାବେ ରେଜିଷ୍ଟର ହୋଇସାରିଛି। ଡେଲିଭରି ପାର୍ଟନର ଭାବେ ଯୋଗ ଦେବାକୁ ସାଇନ ଆଉଟ କରି ଅନ୍ୟ ଏକ ଇମେଲ କିମ୍ବା ନମ୍ବର ବ୍ୟବହାର କରନ୍ତୁ।';
  }

  @override
  String get roleCustomer => 'ଗ୍ରାହକ';

  @override
  String get roleMerchant => 'ବ୍ୟବସାୟୀ';

  @override
  String get roleAdmin => 'ଆଡମିନ';

  @override
  String get useAnotherAccount => 'ଅନ୍ୟ ଖାତା ବ୍ୟବହାର କରନ୍ତୁ';

  @override
  String get onboardingTitle => 'Nexmile ପାର୍ଟନର ହୁଅନ୍ତୁ';

  @override
  String get onboardingSubtitle =>
      'କିଛି ବିବରଣୀ ଓ ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ ଦିଅନ୍ତୁ, ତାପରେ ଆମ ଟିମ ଆପଣଙ୍କୁ ଯାଞ୍ଚ କରିବ। ସାଧାରଣତଃ ଦୁଇଟି କାର୍ଯ୍ୟ ଦିବସ ପର୍ଯ୍ୟନ୍ତ ଲାଗେ।';

  @override
  String stepOfSteps(int current, int total) {
    return '$total ମଧ୍ୟରୁ ପର୍ଯ୍ୟାୟ $current';
  }

  @override
  String get stepIdentityTitle => 'ଆପଣଙ୍କ ବିଷୟରେ';

  @override
  String get stepIdentitySubtitle =>
      'ଆପଣଙ୍କ ଆଧାର କାର୍ଡରେ ଯେପରି ଅଛି, ଠିକ୍ ସେହିପରି ନାମ ଲେଖନ୍ତୁ।';

  @override
  String get stepVehicleTitle => 'ଆପଣଙ୍କ ଗାଡ଼ି';

  @override
  String get stepVehicleSubtitle =>
      'ଆପଣ କେଉଁ ଗାଡ଼ି ଚଲାନ୍ତି ଓ ତାହାର ନମ୍ବର ପ୍ଲେଟ ଆମକୁ ଜଣାନ୍ତୁ।';

  @override
  String get stepIdentityNumbersTitle => 'ପରିଚୟ ନମ୍ବର';

  @override
  String get stepIdentityNumbersSubtitle =>
      'ଏଗୁଡ଼ିକ ଆପଣ ପରେ ଅପଲୋଡ କରୁଥିବା ଡକ୍ୟୁମେଣ୍ଟ ସହ ମେଳ ଖାଇବା ଦରକାର।';

  @override
  String get stepLicenceTitle => 'ଲାଇସେନ୍ସ ଓ ବୀମା';

  @override
  String get stepLicenceSubtitle =>
      'ଆପଣ ଡେଲିଭରି ଆରମ୍ଭ କରୁଥିବା ଦିନ ଉଭୟ ବୈଧ ଥିବା ଦରକାର।';

  @override
  String get stepBankTitle => 'ଆପଣଙ୍କ ଟଙ୍କା କେଉଁଠିକୁ ଆସିବ';

  @override
  String get stepBankSubtitle =>
      'ଆପଣଙ୍କ ରୋଜଗାର ଏହି ଖାତାକୁ ପଠାଯିବ। ଧ୍ୟାନର ସହ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get stepDocumentsTitle => 'ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ';

  @override
  String get stepDocumentsSubtitle =>
      'ପ୍ରତ୍ୟେକର ଭଲ ଆଲୁଅରେ ଫଟୋ ଉଠାନ୍ତୁ। JPG, PNG କିମ୍ବା PDF, ପ୍ରତ୍ୟେକ 5 MB ପର୍ଯ୍ୟନ୍ତ।';

  @override
  String get stepReviewTitle => 'ଯାଞ୍ଚ କରି ଦାଖଲ କରନ୍ତୁ';

  @override
  String get stepReviewSubtitle =>
      'ଦାଖଲ କରିବା ପରେ, ଆମ ଟିମ ଯାଞ୍ଚ ନକରିବା ପର୍ଯ୍ୟନ୍ତ ଆପଣଙ୍କ ବିବରଣୀ ଲକ ରହିବ।';

  @override
  String get saveAndContinue => 'ସଞ୍ଚୟ କରି ଆଗକୁ ବଢ଼ନ୍ତୁ';

  @override
  String get backLabel => 'ପଛକୁ';

  @override
  String get fullNameLabel => 'ପୂରା ନାମ';

  @override
  String get fullNameHint => 'ଆପଣଙ୍କ ଆଧାରରେ ଯେପରି ଛପା ହୋଇଛି';

  @override
  String get dateOfBirthLabel => 'ଜନ୍ମ ତାରିଖ';

  @override
  String get selectDate => 'ତାରିଖ ବାଛନ୍ତୁ';

  @override
  String get vehicleTypeLabel => 'ଗାଡ଼ିର ପ୍ରକାର';

  @override
  String get vehicleMotorcycle => 'ମୋଟରସାଇକେଲ';

  @override
  String get vehicleScooter => 'ସ୍କୁଟର';

  @override
  String get vehicleEv => 'ଇଲେକ୍ଟ୍ରିକ ଗାଡ଼ି';

  @override
  String get vehicleBicycle => 'ସାଇକେଲ';

  @override
  String get vehicleWalk => 'ପାଦରେ ଚାଲି';

  @override
  String get vehicleNoPapersNote =>
      'ଗାଡ଼ି ନମ୍ବର କିମ୍ବା RC ଦରକାର ନାହିଁ। ଆପଣଙ୍କୁ କେବଳ ଆଧାର ଓ PAN ମଗାଯିବ।';

  @override
  String get vehicleNumberLabel => 'ଗାଡ଼ି ନମ୍ବର';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC ନମ୍ବର';

  @override
  String get aadhaarLabel => 'ଆଧାର ନମ୍ବର';

  @override
  String get aadhaarHint => '12 ଅଙ୍କ';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ଡ୍ରାଇଭିଂ ଲାଇସେନ୍ସ ନମ୍ବର';

  @override
  String get drivingLicenceExpiryLabel => 'ଲାଇସେନ୍ସ ବୈଧତାର ଶେଷ ତାରିଖ';

  @override
  String get insuranceNumberLabel => 'ବୀମା ପଲିସି ନମ୍ବର';

  @override
  String get insuranceExpiryLabel => 'ବୀମା ବୈଧତାର ଶେଷ ତାରିଖ';

  @override
  String get bankAccountNameLabel => 'ଖାତାଧାରୀଙ୍କ ନାମ';

  @override
  String get bankAccountNumberLabel => 'ଖାତା ନମ୍ବର';

  @override
  String get bankIfscLabel => 'IFSC କୋଡ';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total ମଧ୍ୟରୁ $doneଟି ଅପଲୋଡ ହୋଇଛି';
  }

  @override
  String get uploadDocument => 'ଅପଲୋଡ କରନ୍ତୁ';

  @override
  String get replaceDocument => 'ବଦଳାନ୍ତୁ';

  @override
  String get removeDocument => 'ହଟାନ୍ତୁ';

  @override
  String get takePhoto => 'ଫଟୋ ଉଠାନ୍ତୁ';

  @override
  String get chooseFromGallery => 'ଗ୍ୟାଲେରୀରୁ ବାଛନ୍ତୁ';

  @override
  String get chooseFile => 'ଫାଇଲ ବାଛନ୍ତୁ';

  @override
  String get uploadingLabel => 'ଅପଲୋଡ ହେଉଛି';

  @override
  String get documentRejected => 'ଅଗ୍ରାହ୍ୟ';

  @override
  String get documentUploaded => 'ଅପଲୋଡ ହୋଇଛି';

  @override
  String get documentApproved => 'ଅନୁମୋଦିତ';

  @override
  String get documentRequired => 'ଆବଶ୍ୟକ';

  @override
  String get documentOptional => 'ଐଚ୍ଛିକ';

  @override
  String get fileTooLarge =>
      'ଏହି ଫାଇଲ 5 MB ରୁ ବଡ଼। ସ୍କାନ ବଦଳରେ ଫଟୋ ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get unsupportedFileType => 'JPG, PNG କିମ୍ବା PDF ବାଛନ୍ତୁ।';

  @override
  String get pickerUnavailable =>
      'ଏହା ଖୋଲିପାରିଲୁ ନାହିଁ। ଆପ୍ ପାଇଁ କ୍ୟାମେରା ଓ ଫଟୋ ଅନୁମତି ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get uploadFailed =>
      'ଅପଲୋଡ ହୋଇପାରିଲା ନାହିଁ। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get submitForVerification => 'ଯାଞ୍ଚ ପାଇଁ ଦାଖଲ କରନ୍ତୁ';

  @override
  String get submitConfirmTitle => 'ଯାଞ୍ଚ ପାଇଁ ଦାଖଲ କରିବେ?';

  @override
  String get submitConfirmBody =>
      'ଆମ ଟିମ ଯାଞ୍ଚ କରୁଥିବା ସମୟରେ ଆପଣଙ୍କ ବିବରଣୀ ଓ ଡକ୍ୟୁମେଣ୍ଟ ଲକ ରହିବ। ନିଷ୍ପତ୍ତି ନହେବା ପର୍ଯ୍ୟନ୍ତ ଆପଣ ସେଗୁଡ଼ିକ ବଦଳାଇ ପାରିବେ ନାହିଁ।';

  @override
  String get cancelLabel => 'ବାତିଲ କରନ୍ତୁ';

  @override
  String get completeEverythingBeforeSubmitting =>
      'ଦାଖଲ କରିବା ପୂର୍ବରୁ ସବୁ ପର୍ଯ୍ୟାୟ ଶେଷ କରନ୍ତୁ ଏବଂ ସମସ୍ତ ଡକ୍ୟୁମେଣ୍ଟ ଅପଲୋଡ କରନ୍ତୁ।';

  @override
  String get checkTheHighlightedFields =>
      'ଚିହ୍ନିତ ଘରଗୁଡ଼ିକ ଯାଞ୍ଚ କରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';

  @override
  String get underReviewTitle => 'ଆମେ ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ ଯାଞ୍ଚ କରୁଛୁ';

  @override
  String get underReviewBody =>
      'ଆମ ଟିମ ସାଧାରଣତଃ ଦୁଇଟି କାର୍ଯ୍ୟ ଦିବସ ଭିତରେ ଯାଞ୍ଚ କରେ। ଅନୁମୋଦନ ମିଳିବା କ୍ଷଣି ଆମେ ଆପଣଙ୍କୁ ଜଣାଇବୁ।';

  @override
  String get checkAgain => 'ପୁଣି ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get stillUnderReview => 'ଏବେ ବି ଯାଞ୍ଚ ଚାଲିଛି';

  @override
  String get rejectedTitle => 'ଆମେ ଆପଣଙ୍କୁ ଯାଞ୍ଚ କରିପାରିଲୁ ନାହିଁ';

  @override
  String get rejectedBody =>
      'ତଳେ ଆମ ଟିମ ଲେଖିଥିବା ସମସ୍ୟା ସୁଧାରନ୍ତୁ, ତାପରେ ଡକ୍ୟୁମେଣ୍ଟ ପୁଣି ପଠାନ୍ତୁ।';

  @override
  String get rejectionReasonLabel => 'କାରଣ';

  @override
  String get fixAndResubmit => 'ସୁଧାରି ପୁଣି ଦାଖଲ କରନ୍ତୁ';

  @override
  String get blockedTitle => 'ଆପଣ ଏବେ ଅନଲାଇନ ହୋଇପାରିବେ ନାହିଁ';

  @override
  String get documentsExpiredMessage =>
      'ଆପଣଙ୍କ ଲାଇସେନ୍ସ କିମ୍ବା ବୀମାର ମିଆଦ ସରିଯାଇଛି। ଅନଲାଇନ ହେବାକୁ ବୈଧ ଡକ୍ୟୁମେଣ୍ଟ ଅପଲୋଡ କରନ୍ତୁ।';

  @override
  String get awaitingVerificationMessage =>
      'ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ ଏବେ ବି ଯାଞ୍ଚ ହେଉଛି।';

  @override
  String get updateDocuments => 'ଡକ୍ୟୁମେଣ୍ଟ ଅପଡେଟ କରନ୍ତୁ';

  @override
  String get riderHomeTitle => 'ଡେଲିଭରି ପାଇଁ ପ୍ରସ୍ତୁତ';

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
      'ଅନଲାଇନ ହୁଅନ୍ତୁ, ଆମେ ଆପଣଙ୍କୁ ନିକଟର ଡେଲିଭରି ପଠାଇବୁ।';

  @override
  String get dutyStatusLabel => 'ଡ୍ୟୁଟି ସ୍ଥିତି';

  @override
  String get dutyOnline => 'ଅନଲାଇନ';

  @override
  String get dutyOffline => 'ଅଫଲାଇନ';

  @override
  String get dutyOnBreak => 'ବିରତିରେ';

  @override
  String get goOnline => 'ଅନଲାଇନ ହୁଅନ୍ତୁ';

  @override
  String get goOffline => 'ଅଫଲାଇନ ହୁଅନ୍ତୁ';

  @override
  String get takeABreak => 'ବିରତି ନିଅନ୍ତୁ';

  @override
  String get waitingForOrders => 'ନିକଟର ଅର୍ଡର ପାଇଁ ଅପେକ୍ଷା ଚାଲିଛି';

  @override
  String get youAreOffline =>
      'ଆପଣ ଅଫଲାଇନ ଅଛନ୍ତି। ଆପଣଙ୍କୁ କୌଣସି ଡେଲିଭରି ପଠାଯିବ ନାହିଁ।';

  @override
  String get completedDeliveriesLabel => 'ସମ୍ପୂର୍ଣ୍ଣ ଡେଲିଭରି';

  @override
  String get ratingLabel => 'ରେଟିଂ';

  @override
  String get notRatedYet => 'ଏପର୍ଯ୍ୟନ୍ତ ରେଟିଂ ନାହିଁ';

  @override
  String get vehicleLabel => 'ଗାଡ଼ି';

  @override
  String get kycStatusLabel => 'ଯାଞ୍ଚ';

  @override
  String get kycPending => 'ଦାଖଲ ହୋଇନାହିଁ';

  @override
  String get kycSubmitted => 'ଯାଞ୍ଚ ଚାଲିଛି';

  @override
  String get kycVerified => 'ଅନୁମୋଦିତ';

  @override
  String get kycRejected => 'ଅଗ୍ରାହ୍ୟ';

  @override
  String get fieldRequired => 'ଏହା ଆବଶ୍ୟକ';

  @override
  String get invalidAadhaar => 'ଆପଣଙ୍କ ଆଧାର ନମ୍ବରର 12 ଅଙ୍କ ଦିଅନ୍ତୁ';

  @override
  String get invalidPan => 'ସଠିକ PAN ଦିଅନ୍ତୁ, ଯେପରି ABCDE1234F';

  @override
  String get invalidIfsc => 'ସଠିକ IFSC କୋଡ ଦିଅନ୍ତୁ, ଯେପରି SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'ପ୍ଲେଟରେ ଯେପରି ଅଛି, ଠିକ୍ ସେହିପରି ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get invalidAccountNumber => 'ସଠିକ ଖାତା ନମ୍ବର ଦିଅନ୍ତୁ';

  @override
  String get dateMustBeFuture => 'ଏହି ତାରିଖ ବିତିସାରିଛି';

  @override
  String get mustBeEighteen =>
      'ଡେଲିଭରି କରିବାକୁ ଆପଣଙ୍କ ବୟସ ଅତି କମରେ 18 ବର୍ଷ ହେବା ଦରକାର';

  @override
  String get docAadhaarFront => 'ଆଧାର କାର୍ଡ (ସାମ୍ନା ପଟ)';

  @override
  String get docAadhaarBack => 'ଆଧାର କାର୍ଡ (ପଛ ପଟ)';

  @override
  String get docDrivingLicence => 'ଡ୍ରାଇଭିଂ ଲାଇସେନ୍ସ';

  @override
  String get docVehicleRc => 'ଗାଡ଼ିର ରେଜିଷ୍ଟ୍ରେସନ ସାର୍ଟିଫିକେଟ';

  @override
  String get docInsurance => 'ଗାଡ଼ି ବୀମା';

  @override
  String get docProfilePhoto => 'ପ୍ରୋଫାଇଲ ଫଟୋ';

  @override
  String get docPan => 'PAN କାର୍ଡ';

  @override
  String get docBankProof => 'ବାତିଲ ଚେକ କିମ୍ବା ବ୍ୟାଙ୍କ ଷ୍ଟେଟମେଣ୍ଟ';

  @override
  String get ordersTab => 'ଅର୍ଡର';

  @override
  String get deliveryTab => 'ଡେଲିଭରି';

  @override
  String get historyTab => 'ଇତିହାସ';

  @override
  String get orderBoardTitle => 'ଆପଣଙ୍କ ନିକଟର ଅର୍ଡର';

  @override
  String get orderBoardSubtitle =>
      'ନିକଟତମ ରେଷ୍ଟୁରାଣ୍ଟ ପ୍ରଥମେ। ତାଲିକା ନିଜେ ନିଜେ ଅପଡେଟ ହୁଏ।';

  @override
  String orderNumberLabel(String number) {
    return 'ଅର୍ଡର $number';
  }

  @override
  String get pickupLabel => 'ପିକଅପ';

  @override
  String get dropoffLabel => 'ଡେଲିଭରି ଠିକଣା';

  @override
  String distanceMetres(String metres) {
    return '$metres ମି';
  }

  @override
  String distanceKilometres(String km) {
    return '$km କିମି';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଜିନିଷ',
      one: '1ଟି ଜିନିଷ',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'ଆପଣଙ୍କ ରୋଜଗାର';

  @override
  String get collectCashLabel => 'ନଗଦ ନିଅନ୍ତୁ';

  @override
  String get prepaidLabel => 'ଅନଲାଇନରେ ଦେୟ ହୋଇସାରିଛି';

  @override
  String collectAtDoor(String amount) {
    return 'ଗ୍ରାହକଙ୍କଠାରୁ $amount ନଗଦ ନିଅନ୍ତୁ';
  }

  @override
  String get nothingToCollect => 'ଦେୟ ହୋଇସାରିଛି। ଟଙ୍କା ମାଗନ୍ତୁ ନାହିଁ।';

  @override
  String get acceptOrder => 'ଗ୍ରହଣ କରନ୍ତୁ';

  @override
  String get viewOrder => 'ଦେଖନ୍ତୁ';

  @override
  String get orderAccepted => 'ଅର୍ଡର ଗ୍ରହଣ ହେଲା। ରେଷ୍ଟୁରାଣ୍ଟକୁ ଯାଆନ୍ତୁ।';

  @override
  String get orderAlreadyTaken =>
      'ଅନ୍ୟ ଜଣେ ରାଇଡର ଏହା ନେଇଗଲେ। ଏହା ହେଉଛି ନୂଆ ତାଲିକା।';

  @override
  String get orderNoLongerYours => 'ଏହି ଅର୍ଡର ଆଉ ଆପଣଙ୍କର ନୁହେଁ।';

  @override
  String get boardEmptyTitle => 'ବର୍ତ୍ତମାନ କୌଣସି ଅର୍ଡର ନାହିଁ';

  @override
  String get boardEmptyBody =>
      'ଅନଲାଇନ ରୁହନ୍ତୁ। ରେଷ୍ଟୁରାଣ୍ଟରେ ଅର୍ଡର ବଢ଼ିବା ସହ ତାଲିକା ନିଜେ ନିଜେ ଅପଡେଟ ହୁଏ।';

  @override
  String get boardOfflineTitle => 'ଆପଣ ଅଫଲାଇନ ଅଛନ୍ତି';

  @override
  String get boardOfflineBody => 'ଅର୍ଡର ପାଇବା ଆରମ୍ଭ କରିବାକୁ ଅନଲାଇନ ହୁଅନ୍ତୁ।';

  @override
  String get boardBusyTitle => 'ପ୍ରଥମେ ଆପଣଙ୍କ ଡେଲିଭରି ଶେଷ କରନ୍ତୁ';

  @override
  String get boardBusyBody => 'ଏହା ଡେଲିଭର ହେବା ପରେ ଆପଣ ଆଉ ଏକ ଅର୍ଡର ନେଇପାରିବେ।';

  @override
  String get boardNoLocationTitle => 'ଆପଣ କେଉଁଠି ଅଛନ୍ତି ଜାଣିପାରୁନାହୁଁ';

  @override
  String get boardNoLocationBody =>
      'ରେଷ୍ଟୁରାଣ୍ଟ କେତେ ପାଖରେ ଅଛି ସେହି ଅନୁସାରେ ଅର୍ଡର ସଜାଯାଏ, ତେଣୁ କିଛି ଦେଖାଇବାକୁ ଆମକୁ ଆପଣଙ୍କ ଲୋକେସନ ଦରକାର।';

  @override
  String get boardNotVerifiedTitle =>
      'ଡେଲିଭରି ପାଇଁ ଏପର୍ଯ୍ୟନ୍ତ ଅନୁମୋଦନ ମିଳିନାହିଁ';

  @override
  String get activeDeliveryTitle => 'ଆପଣଙ୍କ ଡେଲିଭରି';

  @override
  String get headToRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟକୁ ଯାଆନ୍ତୁ';

  @override
  String get deliverToCustomer => 'ଗ୍ରାହକଙ୍କୁ ଡେଲିଭରି କରନ୍ତୁ';

  @override
  String get noActiveDeliveryTitle => 'ହାତରେ କୌଣସି ଅର୍ଡର ନାହିଁ';

  @override
  String get noActiveDeliveryBody =>
      'ତାଲିକାରୁ ଏକ ଅର୍ଡର ଗ୍ରହଣ କରନ୍ତୁ, ତାହା ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get confirmPickupButton => 'ମୁଁ ଅର୍ଡର ନେଇସାରିଛି';

  @override
  String get pickupCodeTitle => 'ପିକଅପ କୋଡ';

  @override
  String get pickupCodeSubtitle => 'ରେଷ୍ଟୁରାଣ୍ଟଠାରୁ କୋଡ ମାଗି ଏଠାରେ ଲେଖନ୍ତୁ।';

  @override
  String get pickupCodeHint => 'କୋଡ';

  @override
  String get wrongPickupCode =>
      'ଏହି କୋଡ ମେଳ ଖାଇଲା ନାହିଁ। ରେଷ୍ଟୁରାଣ୍ଟ ସହ ଯାଞ୍ଚ କରନ୍ତୁ।';

  @override
  String get pickupConfirmed => 'ପିକଅପ ହେଲା। ଗ୍ରାହକଙ୍କୁ ଡେଲିଭରି କରନ୍ତୁ।';

  @override
  String get confirmDeliveryButton => 'ଡେଲିଭର ହୋଇଗଲା';

  @override
  String get stepReachRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟ ପହଞ୍ଚନ୍ତୁ';

  @override
  String get stepPickUp => 'ପିକଅପ କରନ୍ତୁ';

  @override
  String get stepReachCustomer => 'ଗ୍ରାହକ ପାଖେ ପହଞ୍ଚନ୍ତୁ';

  @override
  String get stepDeliver => 'ଡେଲିଭର କରନ୍ତୁ';

  @override
  String get swipePickUp => 'ନେବା ପରେ ସ୍ୱାଇପ କରନ୍ତୁ';

  @override
  String get swipeDeliver => 'ଡେଲିଭରି ପାଇଁ ସ୍ୱାଇପ କରନ୍ତୁ';

  @override
  String get cashToCollectLabel => 'ନଗଦ ନେବାକୁ ହେବ';

  @override
  String get confirmDeliveryTitle => 'ଡେଲିଭରି ନିଶ୍ଚିତ କରନ୍ତୁ';

  @override
  String get confirmDeliveryBody =>
      'ଗ୍ରାହକଙ୍କ ହାତରେ ଅର୍ଡର ପହଞ୍ଚିବା ପରେ ହିଁ ନିଶ୍ଚିତ କରନ୍ତୁ।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'ପ୍ରଥମେ $amount ନଗଦ ନିଅନ୍ତୁ, ତାପରେ ନିଶ୍ଚିତ କରନ୍ତୁ।';
  }

  @override
  String get deliveryConfirmed =>
      'ଡେଲିଭର ହୋଇଗଲା। ଧନ୍ୟବାଦ, ଆପଣ ପୁଣି ଅନଲାଇନ ଅଛନ୍ତି।';

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
  String get releaseOrderButton => 'ଫେରାଇ ଦିଅନ୍ତୁ';

  @override
  String get releaseOrderTitle => 'ଏହି ଅର୍ଡର ଫେରାଇ ଦେବେ?';

  @override
  String get releaseOrderBody =>
      'ଏହା ଅନ୍ୟ ରାଇଡରଙ୍କ ପାଇଁ ତାଲିକାକୁ ଫେରିଯିବ। ଖାଦ୍ୟ ନେବା ପୂର୍ବରୁ ହିଁ ଆପଣ ଏହା କରିପାରିବେ।';

  @override
  String get releaseReasonHint => 'କାରଣ (ଐଚ୍ଛିକ)';

  @override
  String get orderReleased =>
      'ଫେରାଇ ଦିଆଗଲା। ଏହା ପୁଣି ଅନ୍ୟ ରାଇଡରଙ୍କ ପାଇଁ ଉପଲବ୍ଧ।';

  @override
  String get finishCurrentOrderFirst =>
      'ପ୍ରଥମେ ଆପଣଙ୍କ ବର୍ତ୍ତମାନର ଅର୍ଡର ଶେଷ କରନ୍ତୁ କିମ୍ବା ଫେରାଇ ଦିଅନ୍ତୁ।';

  @override
  String get callRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟକୁ କଲ କରନ୍ତୁ';

  @override
  String get callCustomer => 'ଗ୍ରାହକଙ୍କୁ କଲ କରନ୍ତୁ';

  @override
  String get openInMaps => 'ରାସ୍ତା ଦେଖନ୍ତୁ';

  @override
  String get customerNoteLabel => 'ଗ୍ରାହକଙ୍କ ଟିପ୍ପଣୀ';

  @override
  String get orderItemsLabel => 'ବ୍ୟାଗରେ କଣ ଅଛି';

  @override
  String get orderDetailsTitle => 'ଅର୍ଡର ବିବରଣୀ';

  @override
  String get historyTitle => 'ପୂର୍ବ ଡେଲିଭରି';

  @override
  String get historyEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଡେଲିଭରି ନାହିଁ';

  @override
  String get historyEmptyBody => 'ଆପଣ ସମ୍ପୂର୍ଣ୍ଣ କରିଥିବା ଅର୍ଡର ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String get historySearchHint => 'ଅର୍ଡର କିମ୍ବା ରେଷ୍ଟୁରାଣ୍ଟ ଖୋଜନ୍ତୁ';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'ଆଜି';

  @override
  String get historyYesterday => 'ଗତକାଲି';

  @override
  String get historyEarlier => 'ପୂର୍ବରୁ';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countଟି ଡେଲିଭରି',
      one: '1ଟି ଡେଲିଭରି',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” ସହ କିଛି ମେଳ ଖାଉନାହିଁ।';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount ନଗଦ ନିଆଗଲା';
  }

  @override
  String get orderDelivered => 'ଡେଲିଭର ହୋଇଗଲା';

  @override
  String get orderCancelled => 'ବାତିଲ ହେଲା';

  @override
  String get orderPreparing => 'ପ୍ରସ୍ତୁତ ହେଉଛି';

  @override
  String get orderReadyForPickup => 'ପିକଅପ ପାଇଁ ପ୍ରସ୍ତୁତ';

  @override
  String get orderAssigned => 'ଆପଣଙ୍କୁ ଦିଆଯାଇଛି';

  @override
  String get orderPickedUp => 'ପିକଅପ ହେଲା';

  @override
  String get orderOutForDelivery => 'ରାସ୍ତାରେ ଅଛି';

  @override
  String get trackingOn => 'ଲୋକେସନ ସେୟାରିଂ ଚାଲୁ';

  @override
  String get locationUnavailableMessage =>
      'ଆମେ ଆପଣଙ୍କ ଲୋକେସନ ପାଇପାରୁନାହୁଁ। ଲୋକେସନ ଚାଲୁ କରି Nexmile Rider ପାଇଁ ଅନୁମତି ଦିଅନ୍ତୁ।';

  @override
  String get locationPermissionTitle => 'ଲୋକେସନ ଦରକାର';

  @override
  String get locationPermissionBody =>
      'ଆପଣ କେତେ ପାଖରେ ଅଛନ୍ତି ସେହି ଅନୁସାରେ ଅର୍ଡର ସଜାଯାଏ, ଏବଂ ଗ୍ରାହକ ମାନଚିତ୍ରରେ ଆପଣଙ୍କୁ ଦେଖନ୍ତି। ଅନଲାଇନ ହେବାକୁ ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ।';

  @override
  String get locationSettingsButton => 'ସେଟିଂସ ଖୋଲନ୍ତୁ';

  @override
  String get enableLocationButton => 'ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'ଶିଫ୍ଟ';

  @override
  String get payoutsTitle => 'ପେଆଉଟ';

  @override
  String get payoutsEntryValue => 'ସାପ୍ତାହିକ ରୋଜଗାର';

  @override
  String get payoutDetailsTitle => 'ସାପ୍ତାହିକ ପେଆଉଟ';

  @override
  String get payoutsEmptyTitle => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ପେଆଉଟ ନାହିଁ';

  @override
  String get payoutsEmptyBody =>
      'ପ୍ରତି ସପ୍ତାହର ହିସାବ ହେବା ପରେ ଆପଣଙ୍କ ରୋଜଗାର ଏଠାରେ ଦେଖାଯିବ।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'ବିଚାରାଧୀନ';

  @override
  String get payoutStatusProcessing => 'ପ୍ରକ୍ରିୟା ଚାଲିଛି';

  @override
  String get payoutStatusPaid => 'ଦିଆଯାଇଛି';

  @override
  String get payoutNotSentNote =>
      'ଏହି ସପ୍ତାହର ଆପଣଙ୍କ ରୋଜଗାରର ହିସାବ ହୋଇସାରିଛି। ଟଙ୍କା ଏପର୍ଯ୍ୟନ୍ତ ଆପଣଙ୍କ ବ୍ୟାଙ୍କକୁ ପଠାଯାଇନାହିଁ।';

  @override
  String payoutPaidOn(String date) {
    return '$date ରେ ଆପଣଙ୍କ ବ୍ୟାଙ୍କକୁ ପଠାଯାଇଛି';
  }

  @override
  String get payoutPaidNote =>
      'ଏହି ସପ୍ତାହର ବ୍ୟାଙ୍କ ଟ୍ରାନ୍ସଫର ସମ୍ପୂର୍ଣ୍ଣ ହୋଇଛି।';

  @override
  String get payoutReferenceLabel => 'ଟ୍ରାନ୍ସଫର ରେଫରେନ୍ସ';

  @override
  String get payoutNetLabel => 'ପାଇବାକୁ ଥିବା ରାଶି';

  @override
  String get payoutDeliveryEarnings => 'ଡେଲିଭରି ରୋଜଗାର';

  @override
  String get payoutReferralEarnings => 'ରେଫରାଲ ରୋଜଗାର';

  @override
  String get payoutCarriedIn => 'ପୂର୍ବ ସପ୍ତାହରୁ';

  @override
  String get payoutCarriedInNote =>
      '₹100 ରୁ କମ ରାଶି ଅଲଗା ଭାବେ ଟ୍ରାନ୍ସଫର କରାଯାଏ ନାହିଁ। ଏହା ବଦଳରେ ସେଗୁଡ଼ିକ ପରବର୍ତ୍ତୀ ସପ୍ତାହରେ ଯୋଡ଼ାଯାଏ।';

  @override
  String get payoutGross => 'ମୋଟ ରୋଜଗାର';

  @override
  String get payoutDeductions => 'କଟତି';

  @override
  String get payoutsLatestWeek => 'ସାମ୍ପ୍ରତିକ ସପ୍ତାହ';

  @override
  String get payoutsPaidSoFar => 'ଏପର୍ଯ୍ୟନ୍ତ ଦିଆଯାଇଛି';

  @override
  String get payoutsNotYetSent => 'ଏପର୍ଯ୍ୟନ୍ତ ପଠାଯାଇନାହିଁ';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'ହିସାବ ହେଲା';

  @override
  String get payoutStepSending => 'ପଠାଯାଉଛି';

  @override
  String get payoutStepInBank => 'ଆପଣଙ୍କ ବ୍ୟାଙ୍କରେ';

  @override
  String get navToRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟକୁ';

  @override
  String get navToCustomer => 'ଗ୍ରାହକଙ୍କ ପାଖକୁ';

  @override
  String navHeadTowards(String place) {
    return '$place ଆଡ଼କୁ ଯାଆନ୍ତୁ';
  }

  @override
  String navThen(String instruction) {
    return 'ତାପରେ: $instruction';
  }

  @override
  String get navArrived => 'ଆପଣ ପହଞ୍ଚିଗଲେ';

  @override
  String navArrivedAt(String place) {
    return '$place ରେ';
  }

  @override
  String get navFindingRoute => 'ସବୁଠୁ ଭଲ ରାସ୍ତା ଖୋଜୁଛୁ…';

  @override
  String get navNoRoute =>
      'ସଡ଼କ ରାସ୍ତାର ଦିଗ ଉପଲବ୍ଧ ନାହିଁ। ସିଧା ଲାଇନରେ ଦୂରତା ଦେଖାଉଛୁ।';

  @override
  String get navFindingLocation => 'ଆପଣଙ୍କ ଲୋକେସନ ଖୋଜୁଛୁ…';

  @override
  String get navLocationOff => 'ନେଭିଗେଟ କରିବାକୁ ଲୋକେସନ ଚାଲୁ କରନ୍ତୁ।';

  @override
  String get navEnd => 'ନେଭିଗେସନ ବନ୍ଦ କରନ୍ତୁ';

  @override
  String get navRecentre => 'କେନ୍ଦ୍ରିତ କରନ୍ତୁ';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes ମିନିଟ';
  }

  @override
  String get navStart => 'ନେଭିଗେଟ କରନ୍ତୁ';

  @override
  String get orderReachedRestaurant => 'ରେଷ୍ଟୁରାଣ୍ଟରେ ପହଞ୍ଚିଛନ୍ତି';

  @override
  String get orderReachedCustomer => 'ଗ୍ରାହକଙ୍କ ପାଖରେ ପହଞ୍ଚିଛନ୍ତି';

  @override
  String get reachedRestaurantButton => 'ମୁଁ ରେଷ୍ଟୁରାଣ୍ଟରେ ପହଞ୍ଚିଗଲି';

  @override
  String get reachedCustomerButton => 'ମୁଁ ଗ୍ରାହକଙ୍କ ପାଖରେ ପହଞ୍ଚିଗଲି';

  @override
  String get reachedRestaurantDone =>
      'ରୋଷେଇଘରକୁ ଜଣାଇ ଦିଆଗଲା ଯେ ଆପଣ ପହଞ୍ଚିଛନ୍ତି';

  @override
  String get reachedCustomerDone =>
      'ଗ୍ରାହକଙ୍କୁ ଜଣାଇ ଦିଆଗଲା ଯେ ଆପଣ ବାହାରେ ଅଛନ୍ତି';

  @override
  String get offerTitle => 'ନୂଆ ଅର୍ଡର';

  @override
  String get offerYouEarn => 'ଆପଣଙ୍କ ରୋଜଗାର';

  @override
  String get offerPickup => 'ପିକଅପ';

  @override
  String get offerDrop => 'ଡ୍ରପ';

  @override
  String offerAway(String distance) {
    return '$distance ଦୂରରେ';
  }

  @override
  String offerTrip(String distance) {
    return '$distance ଯାତ୍ରା';
  }

  @override
  String offerItems(String count) {
    return '$countଟି ଜିନିଷ';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount ନଗଦ ନିଅନ୍ତୁ';
  }

  @override
  String get offerPrepaid => 'ଦେୟ ହୋଇସାରିଛି · ନଗଦ ନାହିଁ';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'ଖାଦ୍ୟ ପ୍ରାୟ $minutes ମିନିଟରେ ପ୍ରସ୍ତୁତ ହେବ';
  }

  @override
  String get offerSwipeToAccept => 'ଗ୍ରହଣ ପାଇଁ ସ୍ୱାଇପ କରନ୍ତୁ';

  @override
  String get offerAccepting => 'ଗ୍ରହଣ କରୁଛୁ…';

  @override
  String get offerReject => 'ମନା କରନ୍ତୁ';

  @override
  String get offerRejectTitle => 'ଆପଣ କାହିଁକି ମନା କରୁଛନ୍ତି?';

  @override
  String get offerReasonTooFar => 'ବହୁତ ଦୂର';

  @override
  String get offerReasonBusy => 'ଏବେ ବ୍ୟସ୍ତ';

  @override
  String get offerReasonVehicle => 'ଗାଡ଼ିରେ ସମସ୍ୟା';

  @override
  String get offerReasonOther => 'ଅନ୍ୟ କାରଣ';

  @override
  String get offerTaken => 'ଅନ୍ୟ ଜଣେ ରାଇଡର ଅର୍ଡର ନେଇଗଲେ';

  @override
  String get offerAutoOffline =>
      '3ଟି ଅର୍ଡରର ଉତ୍ତର ନଦେବାରୁ ଆପଣଙ୍କୁ ଅଫଲାଇନ କରିଦିଆଗଲା। ପ୍ରସ୍ତୁତ ହେଲେ ଅନଲାଇନ ହୁଅନ୍ତୁ।';

  @override
  String get mockLocationBlocked =>
      'ଅର୍ଡର ପାଇବାକୁ ଯେକୌଣସି ନକଲି ଲୋକେସନ ଆପ୍ ବନ୍ଦ କରନ୍ତୁ।';

  @override
  String get dropoffDoorLabel => 'ଫ୍ଲାଟ / ମହଲା';

  @override
  String get dropoffStreetLabel => 'ରାସ୍ତା';

  @override
  String get dropoffLandmarkLabel => 'ଚିହ୍ନ';

  @override
  String get doorPhotoLabel => 'ଦୁଆରର ଫଟୋ';

  @override
  String get doorPhotoHint => 'ବଡ଼ କରି ଦେଖିବାକୁ ଟ୍ୟାପ କରନ୍ତୁ';

  @override
  String get doorPhotoUnavailable => 'ଫଟୋ ବର୍ତ୍ତମାନ ଉପଲବ୍ଧ ନାହିଁ';

  @override
  String permStepCount(int step, int total) {
    return '$total ମଧ୍ୟରୁ $step';
  }

  @override
  String get permNotNow => 'ଏବେ ନୁହେଁ';

  @override
  String get permLocationTitle => 'ଲୋକେସନ ଚାଲୁ କରନ୍ତୁ';

  @override
  String get permLocationBody =>
      'ରେଷ୍ଟୁରାଣ୍ଟର ସବୁଠୁ ପାଖରେ ଥିବା ରାଇଡରଙ୍କୁ ଅର୍ଡର ଯାଏ, ଏବଂ ଗ୍ରାହକ ମାନଚିତ୍ରରେ ନିଜ ଖାଦ୍ୟକୁ ଟ୍ରାକ କରନ୍ତି।';

  @override
  String get permLocationNearTitle => 'ଆପଣଙ୍କ ନିକଟର ଅର୍ଡର';

  @override
  String get permLocationNearBody =>
      'ଆମେ ଆପଣଙ୍କୁ ପାଖ ରେଷ୍ଟୁରାଣ୍ଟର ଅର୍ଡର ଦେଉ, ତେଣୁ ଆପଣ କମ ଗାଡ଼ି ଚଲାନ୍ତି ଏବଂ ଅଧିକ ରୋଜଗାର କରନ୍ତି।';

  @override
  String get permLocationTrackTitle => 'ଲାଇଭ ଟ୍ରାକିଂ';

  @override
  String get permLocationTrackBody =>
      'ଗ୍ରାହକ ଆପଣଙ୍କୁ ମାନଚିତ୍ରରେ ଦେଖନ୍ତି, ତେଣୁ ସେମାନେ କମ କଲ କରନ୍ତି।';

  @override
  String get permLocationOnlineTitle => 'କେବଳ ଆପଣ ଅନଲାଇନ ଥିବା ସମୟରେ';

  @override
  String get permLocationOnlineBody =>
      'ଅଫଲାଇନ ହେଲେ ଏହା ବନ୍ଦ ହୋଇଯାଏ। ଏହା ବ୍ୟବହାର ହେଉଥିବା ବେଳେ ସବୁବେଳେ ଏକ ନୋଟିଫିକେସନ ଦେଖାଯାଏ।';

  @override
  String get permLocationAllow => 'ଲୋକେସନ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get permNotifyTitle => 'କୌଣସି ଅର୍ଡର ଛାଡ଼ନ୍ତୁ ନାହିଁ';

  @override
  String get permNotifyBody =>
      'ଆପଣଙ୍କ ସ୍କ୍ରିନ ଲକ ଥିଲେ ବି ନୂଆ ଅର୍ଡର ଫୋନ କଲ ପରି ବାଜେ।';

  @override
  String get permNotifyRingTitle => 'ବାଜୁଥିବା ଅର୍ଡର ଆଲର୍ଟ';

  @override
  String get permNotifyRingBody => 'ଆଲର୍ଟରୁ ସିଧା ଗ୍ରହଣ କିମ୍ବା ମନା କରନ୍ତୁ।';

  @override
  String get permNotifyUpdatesTitle => 'ପେଆଉଟ ଓ ଅନୁମୋଦନ';

  @override
  String get permNotifyUpdatesBody =>
      'ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ କେବେ ଅନୁମୋଦିତ ହେଲା ଏବଂ ଟଙ୍କା କେବେ ପଠାଗଲା ଜାଣନ୍ତୁ।';

  @override
  String get permNotifyControlTitle => 'ନିୟନ୍ତ୍ରଣ ଆପଣଙ୍କ ହାତରେ';

  @override
  String get permNotifyControlBody =>
      'ଫୋନର ସେଟିଂସରେ ଯେକୌଣସି ସମୟରେ ଏହା ବଦଳାନ୍ତୁ।';

  @override
  String get permNotifyAllow => 'ନୋଟିଫିକେସନ ଚାଲୁ କରନ୍ତୁ';

  @override
  String get permBatteryTitle => 'ଅର୍ଡର ଆସିବା ଜାରି ରଖନ୍ତୁ';

  @override
  String get permBatteryBody =>
      'ବ୍ୟାଟେରୀ ବଞ୍ଚାଇବାକୁ ଫୋନ ପୃଷ୍ଠଭୂମିରେ ଆପ୍ ବନ୍ଦ କରିଦିଏ। ଆପଣ ଅନଲାଇନ ଥିବା ସମୟରେ Nexmile Rider କୁ ଚାଲୁ ରହିବାକୁ ଦିଅନ୍ତୁ।';

  @override
  String get permBatteryOrdersTitle => 'କୌଣସି ଅର୍ଡର ଛୁଟିବ ନାହିଁ';

  @override
  String get permBatteryOrdersBody =>
      'ଆପ୍ ବନ୍ଦ ଥିଲେ ଓ ଫୋନ ପକେଟରେ ଥିଲେ ବି ଅର୍ଡର ଆପଣଙ୍କ ପାଖରେ ପହଞ୍ଚେ।';

  @override
  String get permBatteryLiveTitle => 'ଟ୍ରାକିଂ ଲାଇଭ ରହେ';

  @override
  String get permBatteryLiveBody =>
      'ଆପଣ ଡେଲିଭରି କରିବା ପର୍ଯ୍ୟନ୍ତ ଗ୍ରାହକ ଆପଣଙ୍କୁ ମାନଚିତ୍ରରେ ଦେଖୁଥାନ୍ତି।';

  @override
  String get permBatteryLightTitle => 'ବ୍ୟାଟେରୀ କମ ଖର୍ଚ୍ଚ';

  @override
  String get permBatteryLightBody =>
      'ଆପଣ ଅନଲାଇନ ଥିବା ସମୟରେ ହିଁ ଏହା ଅଧିକ କାମ କରେ।';

  @override
  String get permBatteryAllow => 'ପୃଷ୍ଠଭୂମିରେ ଚାଲିବାକୁ ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get permFullScreenTitle => 'ଲକ ସ୍କ୍ରିନରେ ଅର୍ଡର';

  @override
  String get permFullScreenBody =>
      'ଆସୁଥିବା କଲ ପରି ନୂଆ ଅର୍ଡରକୁ ଲକ ସ୍କ୍ରିନ ଉପରେ ଦେଖାଇବାକୁ ଦିଅନ୍ତୁ, ଯାହାଦ୍ୱାରା ଆପଣ ଗୋଟିଏ ଟ୍ୟାପରେ ଗ୍ରହଣ କରିପାରିବେ।';

  @override
  String get permFullScreenCallTitle => 'କଲ ପରି ଉତ୍ତର ଦିଅନ୍ତୁ';

  @override
  String get permFullScreenCallBody =>
      'ଫୋନ ଅନଲକ ନକରି ଅର୍ଡର ଦେଖନ୍ତୁ ଓ ଗ୍ରହଣ କରନ୍ତୁ।';

  @override
  String get permFullScreenTimeTitle => 'ସମୟରେ ଉତ୍ତର ଦିଅନ୍ତୁ';

  @override
  String get permFullScreenTimeBody =>
      'ଆପଣ ଉତ୍ତର ନଦେଲେ ଅର୍ଡର ଅନ୍ୟ ରାଇଡରଙ୍କ ପାଖକୁ ଚାଲିଯାଏ।';

  @override
  String get permFullScreenOnlyTitle => 'କେବଳ ନୂଆ ଅର୍ଡର ପାଇଁ';

  @override
  String get permFullScreenOnlyBody =>
      'ଆପଣଙ୍କ ଲକ ସ୍କ୍ରିନ ଉପରେ ଆଉ କିଛି କେବେ ଦେଖାଯାଏ ନାହିଁ।';

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
  String get setupTitle => 'ଫୋନ ସେଟଅପ';

  @override
  String get setupIntro =>
      'ଆପ୍ ବନ୍ଦ ଥିଲେ କିମ୍ବା ଫୋନ ଲକ ଥିଲେ ବି ନୂଆ ଅର୍ଡର ବାଜିବା ପାଇଁ ଏଗୁଡ଼ିକ ଶେଷ କରନ୍ତୁ।';

  @override
  String get setupNotifications => 'ନୋଟିଫିକେସନ';

  @override
  String get setupNotificationsBody => 'ଯାହାଦ୍ୱାରା ନୂଆ ଅର୍ଡର ବାଜିବ ଓ ଦେଖାଯିବ।';

  @override
  String get setupFullScreen => 'ଫୁଲ-ସ୍କ୍ରିନ ଅର୍ଡର ଆଲର୍ଟ';

  @override
  String get setupFullScreenBody =>
      'କଲ ପରି ଆପଣଙ୍କ ଲକ ସ୍କ୍ରିନ ଉପରେ ନୂଆ ଅର୍ଡର ଦେଖାଏ।';

  @override
  String get setupOverlay => 'Show over other apps';

  @override
  String get setupOverlayBody =>
      'Opens the new order card on top of whatever app you are using.';

  @override
  String get setupBattery => 'ବ୍ୟାଟେରୀ: ଅପ୍ଟିମାଇଜ କରନ୍ତୁ ନାହିଁ';

  @override
  String get setupBatteryBody =>
      'ଆପଣ ଅନଲାଇନ ଥିବା ସମୟରେ ଫୋନକୁ ଆପ୍ ବନ୍ଦ କରିବାରୁ ରୋକେ।';

  @override
  String get setupAutostart => 'ଅଟୋଷ୍ଟାର୍ଟ';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ଫୋନରେ Nexmile Rider ପାଇଁ ଅଟୋଷ୍ଟାର୍ଟ ମଧ୍ୟ ଚାଲୁ କରିବା ଦରକାର। ସେଟିଂସ ଖୋଲନ୍ତୁ, ଅଟୋଷ୍ଟାର୍ଟ ଖୋଜନ୍ତୁ ଏବଂ ଏହାକୁ ଚାଲୁ କରନ୍ତୁ।';
  }

  @override
  String get setupLocation => 'ଲୋକେସନ';

  @override
  String get setupLocationBody => 'ଆପଣଙ୍କୁ ନିକଟର ଅର୍ଡର ପଠାଇବାକୁ ଦରକାର।';

  @override
  String get setupAllow => 'ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get setupOpenSettings => 'ସେଟିଂସ ଖୋଲନ୍ତୁ';

  @override
  String get setupMarkDone => 'ମୁଁ ଏହା କରିସାରିଛି';

  @override
  String get setupDoneStep => 'ହୋଇଗଲା';

  @override
  String get setupBannerTitle => 'ଫୋନ ସେଟଅପ ଶେଷ କରନ୍ତୁ';

  @override
  String setupBannerBody(String count) {
    return 'ଆଉ $countଟି ବାକି, ଯାହାଦ୍ୱାରା ଅର୍ଡର ଆଲର୍ଟ ଛୁଟିବ ନାହିଁ';
  }

  @override
  String get offerEstimatedEarnings => 'ଆନୁମାନିକ ରୋଜଗାର';

  @override
  String offerPickupLine(String name) {
    return 'ପିକଅପ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ଡ୍ରପ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'ଆପଣଙ୍କଠାରୁ ପ୍ରାୟ $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider ରୁ ବାହାରିବେ?';

  @override
  String get exitBody => 'ଆପଣ ନିଶ୍ଚିତ ଭାବେ ଆପ୍ ବନ୍ଦ କରିବାକୁ ଚାହାଁନ୍ତି କି?';

  @override
  String get exitConfirm => 'ବାହାରନ୍ତୁ';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ଡେଲିଭରି ପାର୍ଟନର ହୁଅନ୍ତୁ';

  @override
  String get onboardingWelcomeSubtitle =>
      'ନିଜ ଅଞ୍ଚଳରେ ଡେଲିଭରି କରନ୍ତୁ, ନିଜ ସମୟ ବାଛନ୍ତୁ ଏବଂ ପ୍ରତି ସପ୍ତାହରେ ଟଙ୍କା ପାଆନ୍ତୁ।';

  @override
  String get onboardingWelcomeNeed => 'ଏଗୁଡ଼ିକ ପ୍ରସ୍ତୁତ ରଖନ୍ତୁ';

  @override
  String get onboardingNeedAadhaar => 'ଆଧାର କାର୍ଡ';

  @override
  String get onboardingNeedPan => 'PAN କାର୍ଡ';

  @override
  String get onboardingNeedLicence => 'ଡ୍ରାଇଭିଂ ଲାଇସେନ୍ସ ଓ ଗାଡ଼ିର RC';

  @override
  String get onboardingNeedInsurance => 'ଗାଡ଼ି ବୀମା';

  @override
  String get onboardingNeedBank => 'ବ୍ୟାଙ୍କ ଖାତା ବିବରଣୀ';

  @override
  String get onboardingNeedNote =>
      'ସାଇକେଲରେ କିମ୍ବା ଚାଲି ଡେଲିଭରି କରିବେ? ଆପଣଙ୍କୁ କେବଳ ଆଧାର, PAN ଓ ଏକ ବ୍ୟାଙ୍କ ଖାତା ଦରକାର।';

  @override
  String get onboardingWelcomeTime => 'ପ୍ରାୟ 10 ମିନିଟ ଲାଗେ';

  @override
  String get onboardingGetStarted => 'ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get onboardingSavedNote =>
      'ପ୍ରତି ପର୍ଯ୍ୟାୟ ପରେ ସୁରକ୍ଷିତ ଭାବେ ସଞ୍ଚିତ ହୁଏ';

  @override
  String get docsTip =>
      'ଭଲ ଆଲୁଅରେ ଉଠାଯାଇଥିବା ସ୍ପଷ୍ଟ ଫଟୋ ସବୁଠୁ ଶୀଘ୍ର ଅନୁମୋଦିତ ହୁଏ।';

  @override
  String get docsAllDone =>
      'ସମସ୍ତ ଆବଶ୍ୟକ ଡକ୍ୟୁମେଣ୍ଟ ଦିଆଯାଇଛି। ଯାଞ୍ଚ ପାଇଁ ଆଗକୁ ବଢ଼ନ୍ତୁ।';

  @override
  String get docGroupIdentity => 'ପରିଚୟ ପ୍ରମାଣ';

  @override
  String get docGroupVehicle => 'ଲାଇସେନ୍ସ ଓ ଗାଡ଼ି କାଗଜପତ୍ର';

  @override
  String get docGroupMore => 'ଅଧିକ ଡକ୍ୟୁମେଣ୍ଟ';

  @override
  String get docTapToAdd => 'ଯୋଡ଼ିବାକୁ ଟ୍ୟାପ କରନ୍ତୁ';

  @override
  String get docUploading => 'ଅପଲୋଡ ହେଉଛି…';

  @override
  String get docView => 'ଦେଖନ୍ତୁ';

  @override
  String get docSheetSubtitle => 'ପ୍ରଥମ ଥରରେ ଅନୁମୋଦନ ପାଇବାର ଉପାୟ';

  @override
  String get docTipCorners => 'ଚାରି କୋଣ ଫଟୋ ଭିତରେ ଥାଉ';

  @override
  String get docTipGlare => 'ସ୍ପଷ୍ଟ ଲେଖା, ଝଲକ କିମ୍ବା ଛାଇ ନାହିଁ';

  @override
  String get docTipOriginal => 'ମୂଳ ଡକ୍ୟୁମେଣ୍ଟ, ଫଟୋକପି ନୁହେଁ';

  @override
  String get docTipFace => 'ଆପଣଙ୍କ ମୁହଁ ସ୍ପଷ୍ଟ ଦେଖାଯାଉ, ସିଧା ଚାହିଁକରି';

  @override
  String get docTipBackground => 'ସାଦା ପୃଷ୍ଠଭୂମି ଓ ଭଲ ଆଲୁଅ';

  @override
  String get docTipNoCap => 'ଟୋପି, ମାସ୍କ କିମ୍ବା ସନଗ୍ଲାସ ନାହିଁ';

  @override
  String get docTipFullPage => 'ପୂରା ପୃଷ୍ଠା, ପ୍ରତ୍ୟେକ ଧାଡ଼ି ପଢ଼ିହେବା ଭଳି';

  @override
  String get docSourceCamera => 'କ୍ୟାମେରା';

  @override
  String get docSourceGallery => 'ଗ୍ୟାଲେରୀ';

  @override
  String get docSourceFile => 'PDF କିମ୍ବା ଫାଇଲ';

  @override
  String get reviewSectionDetails => 'ଆପଣଙ୍କ ବିବରଣୀ';

  @override
  String get reviewSectionDocuments => 'ଡକ୍ୟୁମେଣ୍ଟ';

  @override
  String get reviewSectionBank => 'ବ୍ୟାଙ୍କ ଖାତା';

  @override
  String get reviewBankHidden => 'ଯୋଡ଼ାଯାଇଛି · ଆପଣଙ୍କ ସୁରକ୍ଷା ପାଇଁ ଲୁଚାଯାଇଛି';

  @override
  String get reviewEdit => 'ସମ୍ପାଦନା';

  @override
  String get reviewNextTitle => 'ଏହା ପରେ କଣ ହେବ';

  @override
  String get reviewNext1 => 'ଆପଣ ନିଜ ଆବେଦନ ଦାଖଲ କରନ୍ତି';

  @override
  String get reviewNext2 => 'ଆମ ଟିମ ଆପଣଙ୍କ ବିବରଣୀ ଓ ଡକ୍ୟୁମେଣ୍ଟ ଯାଞ୍ଚ କରେ';

  @override
  String get reviewNext3 =>
      'ଆପଣଙ୍କୁ ଜଣାଯାଏ, ଅନଲାଇନ ହୁଅନ୍ତୁ ଏବଂ ରୋଜଗାର ଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get kycStepSubmitted => 'ଆବେଦନ ଦାଖଲ ହେଲା';

  @override
  String get kycStepVerifying => 'ଆପଣଙ୍କ ଡକ୍ୟୁମେଣ୍ଟ ଯାଞ୍ଚ ହେଉଛି';

  @override
  String get kycStepApproved =>
      'ଅନୁମୋଦିତ — ଅନଲାଇନ ହୁଅନ୍ତୁ ଏବଂ ରୋଜଗାର ଆରମ୍ଭ କରନ୍ତୁ';
}
