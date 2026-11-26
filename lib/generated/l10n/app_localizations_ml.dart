// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'വേഗത്തിലുള്ള ഡെലിവറി. പുതിയ പുഞ്ചിരികൾ.';

  @override
  String get chooseLanguageTitle => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseLanguageSubtitle =>
      'നിങ്ങൾക്ക് സൗകര്യപ്രദമായ ഭാഷ തിരഞ്ഞെടുക്കുക. ഇത് എപ്പോൾ വേണമെങ്കിലും ക്രമീകരണങ്ങളിൽ മാറ്റാം.';

  @override
  String get searchLanguageHint => 'ഭാഷ തിരയുക';

  @override
  String get noLanguageFound => 'ഭാഷയൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String languagesAvailable(int count) {
    return '$count ഭാഷകൾ ലഭ്യമാണ്';
  }

  @override
  String get continueLabel => 'തുടരുക';

  @override
  String get selectedLabel => 'തിരഞ്ഞെടുത്തു';

  @override
  String get defaultLabel => 'ഡിഫോൾട്ട്';

  @override
  String get homeTitle => 'Nexmile ലേക്ക് സ്വാഗതം';

  @override
  String get homeSubtitle =>
      'പുതിയ പലവ്യഞ്ജനങ്ങൾ, ചൂടുള്ള ഭക്ഷണം, ദൈനംദിന ആവശ്യസാധനങ്ങൾ എന്നിവ അടുത്തുള്ള കടകളിൽ നിന്ന്.';

  @override
  String get changeLanguage => 'ഭാഷ മാറ്റുക';

  @override
  String get languageUpdated => 'ഭാഷ മാറ്റി';

  @override
  String get appLanguageLabel => 'ആപ്പ് ഭാഷ';

  @override
  String greetingNamed(String name) {
    return 'നമസ്കാരം, $name';
  }

  @override
  String get loginTitle => 'Nexmile ൽ സൈൻ ഇൻ ചെയ്യുക';

  @override
  String get loginSubtitle =>
      'നിങ്ങളുടെ ഇമെയിലോ മൊബൈൽ നമ്പറോ നൽകുക, ഞങ്ങൾ പരിശോധനാ കോഡ് അയയ്ക്കും.';

  @override
  String get emailOrPhoneLabel => 'ഇമെയിൽ അല്ലെങ്കിൽ മൊബൈൽ നമ്പർ';

  @override
  String get emailOrPhoneHint => 'name@example.com അല്ലെങ്കിൽ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'സാധുവായ ഇമെയിൽ വിലാസമോ 10 അക്ക മൊബൈൽ നമ്പറോ നൽകുക';

  @override
  String get loginHeadline =>
      'Nexmile നൊപ്പം ഡെലിവർ ചെയ്യൂ. ഇഷ്ടമുള്ള സമയത്ത് സമ്പാദിക്കൂ.';

  @override
  String get loginOrSignUp => 'ലോഗിൻ അല്ലെങ്കിൽ സൈൻ അപ്പ്';

  @override
  String get loginEmailHint => 'നിങ്ങളുടെ ഇമെയിൽ വിലാസം നൽകുക';

  @override
  String get invalidEmail => 'സാധുവായ ഇമെയിൽ വിലാസം നൽകുക';

  @override
  String get loginHeroBadge => 'ഡെലിവറി പങ്കാളി';

  @override
  String get sendCode => 'കോഡ് അയയ്ക്കുക';

  @override
  String get agreeToTermsOnContinue =>
      'തുടരുന്നതിലൂടെ ഞങ്ങളുടെ സേവന നിബന്ധനകളും സ്വകാര്യതാ നയവും നിങ്ങൾ അംഗീകരിക്കുന്നു.';

  @override
  String get otpTitle => 'ഇത് നിങ്ങൾ തന്നെയെന്ന് ഉറപ്പാക്കുക';

  @override
  String otpSubtitle(String target) {
    return '$target ലേക്ക് അയച്ച 6 അക്ക കോഡ് നൽകുക';
  }

  @override
  String get otpHelpTitle => 'കോഡ് കിട്ടിയില്ലേ?';

  @override
  String get otpHelpCheck =>
      'മുകളിലുള്ള നമ്പറോ ഇമെയിലോ പരിശോധിക്കുക. മാറ്റാൻ തിരികെ പോകുക.';

  @override
  String get otpHelpWait =>
      'കോഡ് എത്താൻ ഒരു മിനിറ്റ് വരെ എടുത്തേക്കാം. ടൈമർ തീരുമ്പോൾ പുതിയ കോഡ് ആവശ്യപ്പെടാം.';

  @override
  String get otpHelpSpam => 'ഇമെയിൽ ആണെങ്കിൽ സ്പാം ഫോൾഡറിലും നോക്കുക.';

  @override
  String get verifyCode => 'പരിശോധിക്കുക';

  @override
  String get resendCode => 'കോഡ് വീണ്ടും അയയ്ക്കുക';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds സെക്കൻഡിൽ വീണ്ടും അയയ്ക്കുക';
  }

  @override
  String get codeResent => 'പുതിയ കോഡ് അയച്ചിട്ടുണ്ട്';

  @override
  String get incorrectCode =>
      'ഈ കോഡ് തെറ്റാണ് അല്ലെങ്കിൽ കാലഹരണപ്പെട്ടു. പുതിയത് ആവശ്യപ്പെടുക.';

  @override
  String get enterFullCode => '6 അക്കങ്ങളും നൽകുക';

  @override
  String get accountSuspended =>
      'ഈ അക്കൗണ്ട് താൽക്കാലികമായി നിർത്തിവച്ചിരിക്കുന്നു. സപ്പോർട്ടുമായി ബന്ധപ്പെടുക.';

  @override
  String get tooManyAttempts =>
      'വളരെയധികം ശ്രമങ്ങൾ. കുറച്ച് സമയത്തിന് ശേഷം വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get sessionExpired =>
      'നിങ്ങളുടെ സെഷൻ കാലഹരണപ്പെട്ടു. വീണ്ടും സൈൻ ഇൻ ചെയ്യുക.';

  @override
  String get networkError =>
      'ഇന്റർനെറ്റ് കണക്ഷൻ ഇല്ല. കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get developmentCode => 'ഡെവലപ്പ്മെന്റ് കോഡ്';

  @override
  String get signOut => 'സൈൻ ഔട്ട്';

  @override
  String get signedOut => 'നിങ്ങൾ സൈൻ ഔട്ട് ചെയ്തു';

  @override
  String get somethingWentWrong =>
      'എന്തോ കുഴപ്പം സംഭവിച്ചു. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get profileTitle => 'പ്രൊഫൈൽ';

  @override
  String get profileSectionDetails => 'നിങ്ങളുടെ വിവരങ്ങൾ';

  @override
  String get profileSectionWork => 'ജോലി';

  @override
  String get profileSectionApp => 'ആപ്പ് ക്രമീകരണങ്ങൾ';

  @override
  String get viewProfile => 'പ്രൊഫൈൽ കാണുക';

  @override
  String get nameLabel => 'പേര്';

  @override
  String get emailLabel => 'ഇമെയിൽ';

  @override
  String get mobileLabel => 'മൊബൈൽ നമ്പർ';

  @override
  String get accountStatusLabel => 'അക്കൗണ്ട് നില';

  @override
  String get statusActive => 'സജീവം';

  @override
  String get statusPending => 'തീർപ്പാക്കാത്തത്';

  @override
  String get statusSuspended => 'നിർത്തിവച്ചു';

  @override
  String get verifiedLabel => 'പരിശോധിച്ചു';

  @override
  String get notProvided => 'ചേർത്തിട്ടില്ല';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get loginRiderNote => 'ഈ ആപ്പ് Nexmile ഡെലിവറി പങ്കാളികൾക്കുള്ളതാണ്.';

  @override
  String get checkingYourAccount => 'നിങ്ങളുടെ അക്കൗണ്ട് പരിശോധിക്കുന്നു';

  @override
  String get couldNotLoadAccount =>
      'നിങ്ങളുടെ അക്കൗണ്ട് ലോഡ് ചെയ്യാനായില്ല. കണക്ഷൻ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get notARiderAccountTitle => 'ഇത് ഡെലിവറി പങ്കാളി അക്കൗണ്ട് അല്ല';

  @override
  String get notARiderAccount =>
      'ഈ ഇമെയിലോ മൊബൈൽ നമ്പറോ മറ്റൊരു Nexmile അക്കൗണ്ടിൽ ഇതിനകം രജിസ്റ്റർ ചെയ്തിട്ടുണ്ട്. ഡെലിവറി പങ്കാളിയായി ചേരാൻ സൈൻ ഔട്ട് ചെയ്ത് മറ്റൊന്ന് ഉപയോഗിക്കുക.';

  @override
  String notARiderAccountFor(String role) {
    return 'ഈ ഇമെയിലോ മൊബൈൽ നമ്പറോ ഇതിനകം Nexmile $role ആയി രജിസ്റ്റർ ചെയ്തിട്ടുണ്ട്. ഡെലിവറി പങ്കാളിയായി ചേരാൻ സൈൻ ഔട്ട് ചെയ്ത് മറ്റൊന്ന് ഉപയോഗിക്കുക.';
  }

  @override
  String get roleCustomer => 'ഉപഭോക്താവ്';

  @override
  String get roleMerchant => 'വ്യാപാരി';

  @override
  String get roleAdmin => 'അഡ്മിനിസ്ട്രേറ്റർ';

  @override
  String get useAnotherAccount => 'മറ്റൊരു അക്കൗണ്ട് ഉപയോഗിക്കുക';

  @override
  String get onboardingTitle => 'Nexmile പങ്കാളിയാകൂ';

  @override
  String get onboardingSubtitle =>
      'കുറച്ച് വിവരങ്ങളും നിങ്ങളുടെ രേഖകളും നൽകുക, തുടർന്ന് ഞങ്ങളുടെ ടീം അവ പരിശോധിക്കും. സാധാരണയായി രണ്ട് പ്രവൃത്തി ദിവസം വരെ എടുക്കും.';

  @override
  String stepOfSteps(int current, int total) {
    return 'ഘട്ടം $current / $total';
  }

  @override
  String get stepIdentityTitle => 'നിങ്ങളെക്കുറിച്ച്';

  @override
  String get stepIdentitySubtitle =>
      'നിങ്ങളുടെ ആധാർ കാർഡിൽ ഉള്ളതുപോലെ തന്നെ പേര് നൽകുക.';

  @override
  String get stepVehicleTitle => 'നിങ്ങളുടെ വാഹനം';

  @override
  String get stepVehicleSubtitle =>
      'നിങ്ങൾ ഓടിക്കുന്ന വാഹനവും അതിന്റെ നമ്പർ പ്ലേറ്റും പറയൂ.';

  @override
  String get stepIdentityNumbersTitle => 'തിരിച്ചറിയൽ നമ്പറുകൾ';

  @override
  String get stepIdentityNumbersSubtitle =>
      'പിന്നീട് അപ്‌ലോഡ് ചെയ്യുന്ന രേഖകളുമായി ഇവ ഒത്തുപോകണം.';

  @override
  String get stepLicenceTitle => 'ലൈസൻസും ഇൻഷുറൻസും';

  @override
  String get stepLicenceSubtitle =>
      'ഡെലിവറി തുടങ്ങുന്ന ദിവസം രണ്ടിനും കാലാവധി ഉണ്ടായിരിക്കണം.';

  @override
  String get stepBankTitle => 'പണം ലഭിക്കേണ്ട അക്കൗണ്ട്';

  @override
  String get stepBankSubtitle =>
      'നിങ്ങളുടെ വരുമാനം ഈ അക്കൗണ്ടിലേക്കാണ് അയയ്ക്കുക. ശ്രദ്ധയോടെ പരിശോധിക്കുക.';

  @override
  String get stepDocumentsTitle => 'നിങ്ങളുടെ രേഖകൾ';

  @override
  String get stepDocumentsSubtitle =>
      'ഓരോന്നും നല്ല വെളിച്ചത്തിൽ ഫോട്ടോ എടുക്കുക. JPG, PNG അല്ലെങ്കിൽ PDF, ഓരോന്നും 5 MB വരെ.';

  @override
  String get stepReviewTitle => 'പരിശോധിച്ച് സമർപ്പിക്കുക';

  @override
  String get stepReviewSubtitle =>
      'സമർപ്പിച്ചുകഴിഞ്ഞാൽ, ഞങ്ങളുടെ ടീം പരിശോധിക്കുന്നത് വരെ നിങ്ങളുടെ വിവരങ്ങൾ മാറ്റാനാകില്ല.';

  @override
  String get saveAndContinue => 'സൂക്ഷിച്ച് തുടരുക';

  @override
  String get backLabel => 'തിരികെ';

  @override
  String get fullNameLabel => 'മുഴുവൻ പേര്';

  @override
  String get fullNameHint => 'ആധാറിൽ ഉള്ളതുപോലെ';

  @override
  String get dateOfBirthLabel => 'ജനനത്തീയതി';

  @override
  String get selectDate => 'തീയതി തിരഞ്ഞെടുക്കുക';

  @override
  String get vehicleTypeLabel => 'വാഹന തരം';

  @override
  String get vehicleMotorcycle => 'ബൈക്ക്';

  @override
  String get vehicleScooter => 'സ്കൂട്ടർ';

  @override
  String get vehicleEv => 'ഇലക്ട്രിക് വാഹനം';

  @override
  String get vehicleBicycle => 'സൈക്കിൾ';

  @override
  String get vehicleWalk => 'നടന്ന്';

  @override
  String get vehicleNoPapersNote =>
      'വാഹന നമ്പറോ RC യോ ആവശ്യമില്ല. ആധാറും PAN ഉം മാത്രമേ ചോദിക്കൂ.';

  @override
  String get vehicleNumberLabel => 'വാഹന നമ്പർ';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC നമ്പർ';

  @override
  String get aadhaarLabel => 'ആധാർ നമ്പർ';

  @override
  String get aadhaarHint => '12 അക്കങ്ങൾ';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ഡ്രൈവിംഗ് ലൈസൻസ് നമ്പർ';

  @override
  String get drivingLicenceExpiryLabel => 'ലൈസൻസ് കാലാവധി';

  @override
  String get insuranceNumberLabel => 'ഇൻഷുറൻസ് പോളിസി നമ്പർ';

  @override
  String get insuranceExpiryLabel => 'ഇൻഷുറൻസ് കാലാവധി';

  @override
  String get bankAccountNameLabel => 'അക്കൗണ്ട് ഉടമയുടെ പേര്';

  @override
  String get bankAccountNumberLabel => 'അക്കൗണ്ട് നമ്പർ';

  @override
  String get bankIfscLabel => 'IFSC കോഡ്';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total ൽ $done അപ്‌ലോഡ് ചെയ്തു';
  }

  @override
  String get uploadDocument => 'അപ്‌ലോഡ് ചെയ്യുക';

  @override
  String get replaceDocument => 'മാറ്റുക';

  @override
  String get removeDocument => 'നീക്കുക';

  @override
  String get takePhoto => 'ഫോട്ടോ എടുക്കുക';

  @override
  String get chooseFromGallery => 'ഗാലറിയിൽ നിന്ന് തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseFile => 'ഫയൽ തിരഞ്ഞെടുക്കുക';

  @override
  String get uploadingLabel => 'അപ്‌ലോഡ് ചെയ്യുന്നു';

  @override
  String get documentRejected => 'നിരസിച്ചു';

  @override
  String get documentUploaded => 'അപ്‌ലോഡ് ചെയ്തു';

  @override
  String get documentApproved => 'അംഗീകരിച്ചു';

  @override
  String get documentRequired => 'നിർബന്ധം';

  @override
  String get documentOptional => 'ഐച്ഛികം';

  @override
  String get fileTooLarge =>
      'ആ ഫയൽ 5 MB യിൽ കൂടുതലാണ്. സ്കാനിന് പകരം ഫോട്ടോ ശ്രമിക്കൂ.';

  @override
  String get unsupportedFileType => 'JPG, PNG അല്ലെങ്കിൽ PDF തിരഞ്ഞെടുക്കുക.';

  @override
  String get pickerUnavailable =>
      'അത് തുറക്കാനായില്ല. ആപ്പിന്റെ ക്യാമറ, ഫോട്ടോ അനുമതികൾ പരിശോധിക്കുക.';

  @override
  String get uploadFailed => 'അപ്‌ലോഡ് നടന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get submitForVerification => 'പരിശോധനയ്ക്ക് സമർപ്പിക്കുക';

  @override
  String get submitConfirmTitle => 'പരിശോധനയ്ക്ക് സമർപ്പിക്കണോ?';

  @override
  String get submitConfirmBody =>
      'ഞങ്ങളുടെ ടീം പരിശോധിക്കുന്ന സമയത്ത് നിങ്ങളുടെ വിവരങ്ങളും രേഖകളും ലോക്ക് ആയിരിക്കും. തീരുമാനം ആകുന്നത് വരെ അവ മാറ്റാനാകില്ല.';

  @override
  String get cancelLabel => 'റദ്ദാക്കുക';

  @override
  String get completeEverythingBeforeSubmitting =>
      'സമർപ്പിക്കുന്നതിന് മുമ്പ് എല്ലാ ഘട്ടങ്ങളും പൂർത്തിയാക്കി എല്ലാ രേഖകളും അപ്‌ലോഡ് ചെയ്യുക.';

  @override
  String get checkTheHighlightedFields =>
      'അടയാളപ്പെടുത്തിയ ഫീൽഡുകൾ പരിശോധിച്ച് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get underReviewTitle => 'നിങ്ങളുടെ രേഖകൾ ഞങ്ങൾ പരിശോധിക്കുകയാണ്';

  @override
  String get underReviewBody =>
      'സാധാരണയായി രണ്ട് പ്രവൃത്തി ദിവസത്തിനുള്ളിൽ ഞങ്ങളുടെ ടീം പരിശോധിക്കും. അംഗീകാരം ലഭിച്ചാലുടൻ ഞങ്ങൾ അറിയിക്കും.';

  @override
  String get checkAgain => 'വീണ്ടും പരിശോധിക്കുക';

  @override
  String get stillUnderReview => 'ഇപ്പോഴും പരിശോധനയിലാണ്';

  @override
  String get rejectedTitle => 'നിങ്ങളുടെ വിവരങ്ങൾ സ്ഥിരീകരിക്കാനായില്ല';

  @override
  String get rejectedBody =>
      'ഞങ്ങളുടെ ടീം താഴെ സൂചിപ്പിച്ചവ ശരിയാക്കി, രേഖകൾ വീണ്ടും അയയ്ക്കുക.';

  @override
  String get rejectionReasonLabel => 'കാരണം';

  @override
  String get fixAndResubmit => 'ശരിയാക്കി വീണ്ടും സമർപ്പിക്കുക';

  @override
  String get blockedTitle => 'ഇപ്പോൾ ഓൺലൈനാകാൻ കഴിയില്ല';

  @override
  String get documentsExpiredMessage =>
      'നിങ്ങളുടെ ലൈസൻസിന്റെയോ ഇൻഷുറൻസിന്റെയോ കാലാവധി കഴിഞ്ഞു. ഓൺലൈനാകാൻ പുതിയ രേഖകൾ അപ്‌ലോഡ് ചെയ്യുക.';

  @override
  String get awaitingVerificationMessage =>
      'നിങ്ങളുടെ രേഖകൾ ഇപ്പോഴും പരിശോധനയിലാണ്.';

  @override
  String get updateDocuments => 'രേഖകൾ പുതുക്കുക';

  @override
  String get riderHomeTitle => 'റൈഡിന് തയ്യാർ';

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
      'ഓൺലൈനാകൂ, അടുത്തുള്ള ഡെലിവറികൾ ഞങ്ങൾ അയച്ചുതരാം.';

  @override
  String get dutyStatusLabel => 'ഡ്യൂട്ടി നില';

  @override
  String get dutyOnline => 'ഓൺലൈൻ';

  @override
  String get dutyOffline => 'ഓഫ്‌ലൈൻ';

  @override
  String get dutyOnBreak => 'ബ്രേക്കിലാണ്';

  @override
  String get goOnline => 'ഓൺലൈനാകുക';

  @override
  String get goOffline => 'ഓഫ്‌ലൈനാകുക';

  @override
  String get takeABreak => 'ബ്രേക്ക് എടുക്കുക';

  @override
  String get waitingForOrders => 'അടുത്തുള്ള ഓർഡറുകൾക്കായി കാത്തിരിക്കുന്നു';

  @override
  String get youAreOffline =>
      'നിങ്ങൾ ഓഫ്‌ലൈനാണ്. നിങ്ങൾക്ക് ഡെലിവറികളൊന്നും അയയ്ക്കില്ല.';

  @override
  String get completedDeliveriesLabel => 'പൂർത്തിയാക്കിയ ഡെലിവറികൾ';

  @override
  String get ratingLabel => 'റേറ്റിംഗ്';

  @override
  String get notRatedYet => 'ഇതുവരെ റേറ്റിംഗ് ഇല്ല';

  @override
  String get vehicleLabel => 'വാഹനം';

  @override
  String get kycStatusLabel => 'പരിശോധന';

  @override
  String get kycPending => 'സമർപ്പിച്ചിട്ടില്ല';

  @override
  String get kycSubmitted => 'പരിശോധനയിലാണ്';

  @override
  String get kycVerified => 'അംഗീകരിച്ചു';

  @override
  String get kycRejected => 'നിരസിച്ചു';

  @override
  String get fieldRequired => 'ഈ ഫീൽഡ് നിർബന്ധമാണ്';

  @override
  String get invalidAadhaar => 'നിങ്ങളുടെ ആധാർ നമ്പറിലെ 12 അക്കങ്ങളും നൽകുക';

  @override
  String get invalidPan => 'സാധുവായ PAN നൽകുക, ഉദാ: ABCDE1234F';

  @override
  String get invalidIfsc => 'സാധുവായ IFSC കോഡ് നൽകുക, ഉദാ: SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'നമ്പർ പ്ലേറ്റിൽ ഉള്ളതുപോലെ തന്നെ നമ്പർ നൽകുക';

  @override
  String get invalidAccountNumber => 'സാധുവായ അക്കൗണ്ട് നമ്പർ നൽകുക';

  @override
  String get dateMustBeFuture => 'ഈ തീയതി ഇതിനകം കഴിഞ്ഞു';

  @override
  String get mustBeEighteen => 'ഡെലിവറി ചെയ്യാൻ കുറഞ്ഞത് 18 വയസ്സ് ആയിരിക്കണം';

  @override
  String get docAadhaarFront => 'ആധാർ കാർഡ് (മുൻവശം)';

  @override
  String get docAadhaarBack => 'ആധാർ കാർഡ് (പിൻവശം)';

  @override
  String get docDrivingLicence => 'ഡ്രൈവിംഗ് ലൈസൻസ്';

  @override
  String get docVehicleRc => 'വാഹന രജിസ്ട്രേഷൻ സർട്ടിഫിക്കറ്റ്';

  @override
  String get docInsurance => 'വാഹന ഇൻഷുറൻസ്';

  @override
  String get docProfilePhoto => 'പ്രൊഫൈൽ ഫോട്ടോ';

  @override
  String get docPan => 'PAN കാർഡ്';

  @override
  String get docBankProof =>
      'റദ്ദാക്കിയ ചെക്ക് അല്ലെങ്കിൽ ബാങ്ക് സ്റ്റേറ്റ്മെന്റ്';

  @override
  String get ordersTab => 'ഓർഡറുകൾ';

  @override
  String get deliveryTab => 'ഡെലിവറി';

  @override
  String get historyTab => 'ചരിത്രം';

  @override
  String get orderBoardTitle => 'നിങ്ങളുടെ അടുത്തുള്ള ഓർഡറുകൾ';

  @override
  String get orderBoardSubtitle =>
      'ഏറ്റവും അടുത്തുള്ള റെസ്റ്റോറന്റ് ആദ്യം. ലിസ്റ്റ് തനിയെ പുതുക്കും.';

  @override
  String orderNumberLabel(String number) {
    return 'ഓർഡർ $number';
  }

  @override
  String get pickupLabel => 'പിക്കപ്പ്';

  @override
  String get dropoffLabel => 'ഡെലിവറി വിലാസം';

  @override
  String distanceMetres(String metres) {
    return '$metres മീ';
  }

  @override
  String distanceKilometres(String km) {
    return '$km കിമീ';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഇനങ്ങൾ',
      one: '1 ഇനം',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'നിങ്ങൾക്ക് ലഭിക്കുന്നത്';

  @override
  String get collectCashLabel => 'ക്യാഷ് വാങ്ങുക';

  @override
  String get prepaidLabel => 'ഓൺലൈനായി പണമടച്ചു';

  @override
  String collectAtDoor(String amount) {
    return 'ഉപഭോക്താവിൽ നിന്ന് $amount വാങ്ങുക';
  }

  @override
  String get nothingToCollect => 'പണം ഇതിനകം അടച്ചു. പണം ചോദിക്കരുത്.';

  @override
  String get acceptOrder => 'സ്വീകരിക്കുക';

  @override
  String get viewOrder => 'കാണുക';

  @override
  String get orderAccepted => 'ഓർഡർ സ്വീകരിച്ചു. റെസ്റ്റോറന്റിലേക്ക് പോകൂ.';

  @override
  String get orderAlreadyTaken =>
      'മറ്റൊരു റൈഡർ ഇത് എടുത്തു. പുതിയ ലിസ്റ്റ് ഇതാ.';

  @override
  String get orderNoLongerYours => 'ഈ ഓർഡർ ഇപ്പോൾ നിങ്ങളുടേതല്ല.';

  @override
  String get boardEmptyTitle => 'ഇപ്പോൾ ഓർഡറുകളൊന്നുമില്ല';

  @override
  String get boardEmptyBody =>
      'ഓൺലൈനിൽ തുടരുക. റെസ്റ്റോറന്റുകളിൽ തിരക്ക് കൂടുമ്പോൾ ലിസ്റ്റ് തനിയെ പുതുക്കും.';

  @override
  String get boardOfflineTitle => 'നിങ്ങൾ ഓഫ്‌ലൈനാണ്';

  @override
  String get boardOfflineBody => 'ഓർഡറുകൾ ലഭിച്ചുതുടങ്ങാൻ ഓൺലൈനാകൂ.';

  @override
  String get boardBusyTitle => 'ആദ്യം ഈ ഡെലിവറി പൂർത്തിയാക്കുക';

  @override
  String get boardBusyBody =>
      'ഇത് ഡെലിവർ ചെയ്തുകഴിഞ്ഞാൽ മറ്റൊരു ഓർഡർ എടുക്കാം.';

  @override
  String get boardNoLocationTitle => 'നിങ്ങളെ കണ്ടെത്താനാകുന്നില്ല';

  @override
  String get boardNoLocationBody =>
      'റെസ്റ്റോറന്റ് എത്ര അടുത്താണ് എന്നതനുസരിച്ചാണ് ഓർഡറുകൾ ക്രമീകരിക്കുന്നത്, അതിനാൽ എന്തെങ്കിലും കാണിക്കാൻ നിങ്ങളുടെ ലൊക്കേഷൻ വേണം.';

  @override
  String get boardNotVerifiedTitle => 'റൈഡ് ചെയ്യാൻ ഇതുവരെ അംഗീകാരമില്ല';

  @override
  String get activeDeliveryTitle => 'നിങ്ങളുടെ ഡെലിവറി';

  @override
  String get headToRestaurant => 'റെസ്റ്റോറന്റിലേക്ക് പോകുക';

  @override
  String get deliverToCustomer => 'ഉപഭോക്താവിന് ഡെലിവർ ചെയ്യുക';

  @override
  String get noActiveDeliveryTitle => 'കയ്യിൽ ഓർഡറൊന്നുമില്ല';

  @override
  String get noActiveDeliveryBody =>
      'ഓർഡർ ലിസ്റ്റിൽ നിന്ന് ഒരു ഓർഡർ സ്വീകരിക്കുക, അത് ഇവിടെ കാണാം.';

  @override
  String get confirmPickupButton => 'ഞാൻ ഓർഡർ എടുത്തു';

  @override
  String get pickupCodeTitle => 'പിക്കപ്പ് കോഡ്';

  @override
  String get pickupCodeSubtitle =>
      'റെസ്റ്റോറന്റിനോട് കോഡ് ചോദിച്ച് ഇവിടെ ടൈപ്പ് ചെയ്യുക.';

  @override
  String get pickupCodeHint => 'കോഡ്';

  @override
  String get wrongPickupCode =>
      'ആ കോഡ് ശരിയായില്ല. റെസ്റ്റോറന്റിനോട് ചോദിച്ച് ഉറപ്പാക്കുക.';

  @override
  String get pickupConfirmed =>
      'പിക്കപ്പ് ചെയ്തു. ഉപഭോക്താവിന് ഡെലിവർ ചെയ്യുക.';

  @override
  String get confirmDeliveryButton => 'ഡെലിവർ ചെയ്തു';

  @override
  String get stepReachRestaurant => 'റെസ്റ്റോറന്റിലേക്ക്';

  @override
  String get stepPickUp => 'പിക്കപ്പ്';

  @override
  String get stepReachCustomer => 'ഉപഭോക്താവിലേക്ക്';

  @override
  String get stepDeliver => 'ഡെലിവറി';

  @override
  String get swipePickUp => 'എടുത്താൽ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get swipeDeliver => 'ഡെലിവർ ചെയ്യാൻ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get cashToCollectLabel => 'വാങ്ങേണ്ട ക്യാഷ്';

  @override
  String get confirmDeliveryTitle => 'ഡെലിവറി സ്ഥിരീകരിക്കുക';

  @override
  String get confirmDeliveryBody =>
      'ഓർഡർ ഉപഭോക്താവിന്റെ കയ്യിൽ കിട്ടിയ ശേഷം മാത്രം സ്ഥിരീകരിക്കുക.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'ആദ്യം ഉപഭോക്താവിൽ നിന്ന് $amount വാങ്ങുക, പിന്നെ സ്ഥിരീകരിക്കുക.';
  }

  @override
  String get deliveryConfirmed =>
      'ഡെലിവർ ചെയ്തു. നന്ദി, നിങ്ങൾ വീണ്ടും ഓൺലൈനാണ്.';

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
  String get releaseOrderButton => 'തിരികെ നൽകുക';

  @override
  String get releaseOrderTitle => 'ഈ ഓർഡർ തിരികെ നൽകണോ?';

  @override
  String get releaseOrderBody =>
      'മറ്റൊരു റൈഡർക്കായി ഇത് വീണ്ടും ലിസ്റ്റിലേക്ക് പോകും. ഭക്ഷണം എടുക്കുന്നതിന് മുമ്പ് മാത്രമേ ഇത് ചെയ്യാനാകൂ.';

  @override
  String get releaseReasonHint => 'കാരണം (ഐച്ഛികം)';

  @override
  String get orderReleased =>
      'തിരികെ നൽകി. ഇത് വീണ്ടും മറ്റ് റൈഡർമാർക്ക് ലഭ്യമാണ്.';

  @override
  String get finishCurrentOrderFirst =>
      'ആദ്യം നിലവിലെ ഓർഡർ പൂർത്തിയാക്കുക, അല്ലെങ്കിൽ തിരികെ നൽകുക.';

  @override
  String get callRestaurant => 'റെസ്റ്റോറന്റിനെ വിളിക്കുക';

  @override
  String get callCustomer => 'ഉപഭോക്താവിനെ വിളിക്കുക';

  @override
  String get openInMaps => 'വഴി കാണുക';

  @override
  String get customerNoteLabel => 'ഉപഭോക്താവിന്റെ കുറിപ്പ്';

  @override
  String get orderItemsLabel => 'ബാഗിലുള്ളത്';

  @override
  String get orderDetailsTitle => 'ഓർഡർ വിവരങ്ങൾ';

  @override
  String get historyTitle => 'പഴയ ഡെലിവറികൾ';

  @override
  String get historyEmptyTitle => 'ഇതുവരെ ഡെലിവറികളില്ല';

  @override
  String get historyEmptyBody => 'നിങ്ങൾ പൂർത്തിയാക്കിയ ഓർഡറുകൾ ഇവിടെ കാണാം.';

  @override
  String get historySearchHint => 'ഓർഡറോ റെസ്റ്റോറന്റോ തിരയുക';

  @override
  String get historyToday => 'ഇന്ന്';

  @override
  String get historyYesterday => 'ഇന്നലെ';

  @override
  String get historyEarlier => 'മുമ്പുള്ളവ';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ഡെലിവറികൾ',
      one: '1 ഡെലിവറി',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” എന്നതിന് ഒന്നും കണ്ടെത്തിയില്ല.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount ക്യാഷ് വാങ്ങി';
  }

  @override
  String get orderDelivered => 'ഡെലിവർ ചെയ്തു';

  @override
  String get orderCancelled => 'റദ്ദാക്കി';

  @override
  String get orderPreparing => 'തയ്യാറാകുന്നു';

  @override
  String get orderReadyForPickup => 'പിക്കപ്പിന് തയ്യാർ';

  @override
  String get orderAssigned => 'നിങ്ങളെ ഏൽപ്പിച്ചു';

  @override
  String get orderPickedUp => 'പിക്കപ്പ് ചെയ്തു';

  @override
  String get orderOutForDelivery => 'വഴിയിലാണ്';

  @override
  String get trackingOn => 'ലൊക്കേഷൻ പങ്കിടൽ ഓണാണ്';

  @override
  String get locationUnavailableMessage =>
      'നിങ്ങളുടെ ലൊക്കേഷൻ ലഭിക്കുന്നില്ല. ലൊക്കേഷൻ ഓണാക്കി Nexmile Rider ന് അനുമതി നൽകുക.';

  @override
  String get locationPermissionTitle => 'ലൊക്കേഷൻ വേണം';

  @override
  String get locationPermissionBody =>
      'നിങ്ങൾ എത്ര അടുത്താണ് എന്നതനുസരിച്ചാണ് ഓർഡറുകൾ നൽകുന്നത്, ഉപഭോക്താവ് മാപ്പിൽ നിങ്ങളെ കാണുകയും ചെയ്യും. ഓൺലൈനാകാൻ ലൊക്കേഷൻ അനുവദിക്കുക.';

  @override
  String get locationSettingsButton => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get enableLocationButton => 'ലൊക്കേഷൻ അനുവദിക്കുക';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'ഷിഫ്റ്റ്';

  @override
  String get payoutsTitle => 'പേഔട്ടുകൾ';

  @override
  String get payoutsEntryValue => 'പ്രതിവാര വരുമാനം';

  @override
  String get payoutDetailsTitle => 'പ്രതിവാര പേഔട്ട്';

  @override
  String get payoutsEmptyTitle => 'ഇതുവരെ പേഔട്ടുകളില്ല';

  @override
  String get payoutsEmptyBody =>
      'ഓരോ ആഴ്ചയും കണക്കാക്കിക്കഴിഞ്ഞാൽ ആ ആഴ്ചത്തെ നിങ്ങളുടെ വരുമാനം ഇവിടെ കാണാം.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'തീർപ്പാക്കാത്തത്';

  @override
  String get payoutStatusProcessing => 'പ്രോസസ്സ് ചെയ്യുന്നു';

  @override
  String get payoutStatusPaid => 'പണം നൽകി';

  @override
  String get payoutNotSentNote =>
      'ഈ ആഴ്ചത്തെ നിങ്ങളുടെ വരുമാനം കണക്കാക്കിയിട്ടുണ്ട്. പണം ഇതുവരെ നിങ്ങളുടെ ബാങ്കിലേക്ക് അയച്ചിട്ടില്ല.';

  @override
  String payoutPaidOn(String date) {
    return '$date ന് നിങ്ങളുടെ ബാങ്കിലേക്ക് അയച്ചു';
  }

  @override
  String get payoutPaidNote => 'ഈ ആഴ്ചത്തെ ബാങ്ക് ട്രാൻസ്ഫർ പൂർത്തിയായി.';

  @override
  String get payoutReferenceLabel => 'ട്രാൻസ്ഫർ റഫറൻസ്';

  @override
  String get payoutNetLabel => 'ലഭിക്കേണ്ട തുക';

  @override
  String get payoutDeliveryEarnings => 'ഡെലിവറി വരുമാനം';

  @override
  String get payoutReferralEarnings => 'റഫറൽ വരുമാനം';

  @override
  String get payoutCarriedIn => 'മുൻ ആഴ്ചയിൽ നിന്ന്';

  @override
  String get payoutCarriedInNote =>
      '₹100 ൽ താഴെയുള്ള തുകകൾ പ്രത്യേകമായി ട്രാൻസ്ഫർ ചെയ്യില്ല. പകരം അവ അടുത്ത ആഴ്ചയിലേക്ക് ചേർക്കും.';

  @override
  String get payoutGross => 'ആകെ വരുമാനം';

  @override
  String get payoutDeductions => 'കിഴിവുകൾ';

  @override
  String get payoutsLatestWeek => 'ഏറ്റവും പുതിയ ആഴ്ച';

  @override
  String get payoutsPaidSoFar => 'ഇതുവരെ നൽകിയത്';

  @override
  String get payoutsNotYetSent => 'ഇതുവരെ അയച്ചിട്ടില്ല';

  @override
  String get payoutStepWorkedOut => 'കണക്കാക്കി';

  @override
  String get payoutStepSending => 'അയയ്ക്കുന്നു';

  @override
  String get payoutStepInBank => 'ബാങ്കിലെത്തി';

  @override
  String get navToRestaurant => 'റെസ്റ്റോറന്റിലേക്ക്';

  @override
  String get navToCustomer => 'ഉപഭോക്താവിലേക്ക്';

  @override
  String navHeadTowards(String place) {
    return '$place ഭാഗത്തേക്ക് പോകുക';
  }

  @override
  String navThen(String instruction) {
    return 'തുടർന്ന്: $instruction';
  }

  @override
  String get navArrived => 'നിങ്ങൾ എത്തി';

  @override
  String navArrivedAt(String place) {
    return '$place ൽ';
  }

  @override
  String get navFindingRoute => 'മികച്ച വഴി കണ്ടെത്തുന്നു…';

  @override
  String get navNoRoute => 'റോഡ് വഴി ലഭ്യമല്ല. നേർരേഖാ ദൂരം കാണിക്കുന്നു.';

  @override
  String get navFindingLocation => 'നിങ്ങളുടെ ലൊക്കേഷൻ കണ്ടെത്തുന്നു…';

  @override
  String get navLocationOff => 'നാവിഗേറ്റ് ചെയ്യാൻ ലൊക്കേഷൻ ഓണാക്കുക.';

  @override
  String get navEnd => 'നാവിഗേഷൻ നിർത്തുക';

  @override
  String get navRecentre => 'കേന്ദ്രീകരിക്കുക';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes മിനിറ്റ്';
  }

  @override
  String get navStart => 'നാവിഗേറ്റ് ചെയ്യുക';

  @override
  String get orderReachedRestaurant => 'റെസ്റ്റോറന്റിൽ';

  @override
  String get orderReachedCustomer => 'ഉപഭോക്താവിനടുത്ത്';

  @override
  String get reachedRestaurantButton => 'ഞാൻ റെസ്റ്റോറന്റിൽ എത്തി';

  @override
  String get reachedCustomerButton => 'ഞാൻ ഉപഭോക്താവിനടുത്ത് എത്തി';

  @override
  String get reachedRestaurantDone => 'നിങ്ങൾ എത്തിയെന്ന് അടുക്കളയെ അറിയിച്ചു';

  @override
  String get reachedCustomerDone =>
      'നിങ്ങൾ പുറത്തുണ്ടെന്ന് ഉപഭോക്താവിനെ അറിയിച്ചു';

  @override
  String get offerTitle => 'പുതിയ ഓർഡർ';

  @override
  String get offerYouEarn => 'നിങ്ങൾക്ക് ലഭിക്കുന്നത്';

  @override
  String get offerPickup => 'പിക്കപ്പ്';

  @override
  String get offerDrop => 'ഡ്രോപ്പ്';

  @override
  String offerAway(String distance) {
    return '$distance അകലെ';
  }

  @override
  String offerTrip(String distance) {
    return '$distance യാത്ര';
  }

  @override
  String offerItems(String count) {
    return '$count ഇനങ്ങൾ';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount ക്യാഷ് വാങ്ങുക';
  }

  @override
  String get offerPrepaid => 'മുൻകൂർ അടച്ചു · ക്യാഷ് ഇല്ല';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'ഏകദേശം $minutes മിനിറ്റിൽ ഭക്ഷണം തയ്യാറാകും';
  }

  @override
  String get offerSwipeToAccept => 'സ്വീകരിക്കാൻ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get offerAccepting => 'സ്വീകരിക്കുന്നു…';

  @override
  String get offerReject => 'നിരസിക്കുക';

  @override
  String get offerRejectTitle => 'എന്തുകൊണ്ടാണ് നിരസിക്കുന്നത്?';

  @override
  String get offerReasonTooFar => 'വളരെ ദൂരെയാണ്';

  @override
  String get offerReasonBusy => 'ഇപ്പോൾ തിരക്കിലാണ്';

  @override
  String get offerReasonVehicle => 'വാഹനത്തിന് പ്രശ്നം';

  @override
  String get offerReasonOther => 'മറ്റ് കാരണം';

  @override
  String get offerTaken => 'മറ്റൊരു റൈഡർ ഓർഡർ എടുത്തു';

  @override
  String get offerAutoOffline =>
      '3 ഓർഡറുകൾ നഷ്ടമായതിനാൽ നിങ്ങളെ ഓഫ്‌ലൈനാക്കി. തയ്യാറാകുമ്പോൾ ഓൺലൈനാകൂ.';

  @override
  String get mockLocationBlocked =>
      'ഓർഡറുകൾ ലഭിക്കാൻ വ്യാജ ലൊക്കേഷൻ ആപ്പുകൾ ഓഫാക്കുക.';

  @override
  String get dropoffDoorLabel => 'ഫ്ലാറ്റ് / നില';

  @override
  String get dropoffStreetLabel => 'തെരുവ്';

  @override
  String get dropoffLandmarkLabel => 'അടയാളം';

  @override
  String get doorPhotoLabel => 'വാതിലിന്റെ ഫോട്ടോ';

  @override
  String get doorPhotoHint => 'വലുതായി കാണാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get doorPhotoUnavailable => 'ഫോട്ടോ ഇപ്പോൾ ലഭ്യമല്ല';

  @override
  String permStepCount(int step, int total) {
    return '$total ൽ $step';
  }

  @override
  String get permNotNow => 'ഇപ്പോൾ വേണ്ട';

  @override
  String get permLocationTitle => 'ലൊക്കേഷൻ ഓണാക്കുക';

  @override
  String get permLocationBody =>
      'റെസ്റ്റോറന്റിന് ഏറ്റവും അടുത്തുള്ള റൈഡർക്കാണ് ഓർഡറുകൾ പോകുന്നത്, ഉപഭോക്താക്കൾ അവരുടെ ഭക്ഷണം മാപ്പിൽ പിന്തുടരുകയും ചെയ്യും.';

  @override
  String get permLocationNearTitle => 'നിങ്ങളുടെ അടുത്തുള്ള ഓർഡറുകൾ';

  @override
  String get permLocationNearBody =>
      'അടുത്തുള്ള റെസ്റ്റോറന്റുകളിൽ നിന്നുള്ള ഓർഡറുകൾ ഞങ്ങൾ നൽകും, അതിനാൽ കുറച്ച് ഓടി കൂടുതൽ സമ്പാദിക്കാം.';

  @override
  String get permLocationTrackTitle => 'ലൈവ് ട്രാക്കിംഗ്';

  @override
  String get permLocationTrackBody =>
      'ഉപഭോക്താക്കൾ നിങ്ങളെ മാപ്പിൽ കാണും, അതിനാൽ അവർ അധികം വിളിക്കില്ല.';

  @override
  String get permLocationOnlineTitle => 'ഓൺലൈനിലുള്ളപ്പോൾ മാത്രം';

  @override
  String get permLocationOnlineBody =>
      'ഓഫ്‌ലൈനായാൽ ഇത് നിൽക്കും. ഉപയോഗത്തിലുള്ളപ്പോഴെല്ലാം ഒരു അറിയിപ്പ് കാണിക്കും.';

  @override
  String get permLocationAllow => 'ലൊക്കേഷൻ അനുവദിക്കുക';

  @override
  String get permNotifyTitle => 'ഒരു ഓർഡറും നഷ്ടമാകില്ല';

  @override
  String get permNotifyBody =>
      'സ്ക്രീൻ ലോക്ക് ആയിരിക്കുമ്പോഴും പുതിയ ഓർഡറുകൾ ഫോൺ കോൾ പോലെ റിംഗ് ചെയ്യും.';

  @override
  String get permNotifyRingTitle => 'റിംഗ് ചെയ്യുന്ന ഓർഡർ അലേർട്ടുകൾ';

  @override
  String get permNotifyRingBody =>
      'അലേർട്ടിൽ നിന്ന് നേരിട്ട് സ്വീകരിക്കുകയോ നിരസിക്കുകയോ ചെയ്യാം.';

  @override
  String get permNotifyUpdatesTitle => 'പേഔട്ടുകളും അംഗീകാരങ്ങളും';

  @override
  String get permNotifyUpdatesBody =>
      'രേഖകൾ അംഗീകരിക്കുമ്പോഴും പണം അയയ്ക്കുമ്പോഴും അറിയാം.';

  @override
  String get permNotifyControlTitle => 'നിയന്ത്രണം നിങ്ങളുടെ കയ്യിൽ';

  @override
  String get permNotifyControlBody =>
      'ഫോണിന്റെ ക്രമീകരണങ്ങളിൽ എപ്പോൾ വേണമെങ്കിലും ഇത് മാറ്റാം.';

  @override
  String get permNotifyAllow => 'അറിയിപ്പുകൾ ഓണാക്കുക';

  @override
  String get permBatteryTitle => 'ഓർഡറുകൾ മുടങ്ങാതെ വരട്ടെ';

  @override
  String get permBatteryBody =>
      'ബാറ്ററി ലാഭിക്കാൻ ഫോണുകൾ പശ്ചാത്തലത്തിലുള്ള ആപ്പുകൾ അടയ്ക്കും. നിങ്ങൾ ഓൺലൈനിലുള്ളപ്പോൾ Nexmile Rider പ്രവർത്തിക്കാൻ അനുവദിക്കുക.';

  @override
  String get permBatteryOrdersTitle => 'ഓർഡറുകൾ നഷ്ടമാകില്ല';

  @override
  String get permBatteryOrdersBody =>
      'ആപ്പ് അടച്ച് ഫോൺ പോക്കറ്റിലാണെങ്കിലും ഓഫറുകൾ നിങ്ങൾക്ക് ലഭിക്കും.';

  @override
  String get permBatteryLiveTitle => 'ട്രാക്കിംഗ് ലൈവായി തുടരും';

  @override
  String get permBatteryLiveBody =>
      'നിങ്ങൾ ഡെലിവർ ചെയ്യുന്നത് വരെ ഉപഭോക്താക്കൾ നിങ്ങളെ മാപ്പിൽ കാണും.';

  @override
  String get permBatteryLightTitle => 'ബാറ്ററി കുറച്ചേ എടുക്കൂ';

  @override
  String get permBatteryLightBody =>
      'നിങ്ങൾ ഓൺലൈനിലുള്ളപ്പോൾ മാത്രമേ ഇത് കൂടുതൽ പ്രവർത്തിക്കൂ.';

  @override
  String get permBatteryAllow => 'പശ്ചാത്തല ഉപയോഗം അനുവദിക്കുക';

  @override
  String get permFullScreenTitle => 'ലോക്ക് സ്ക്രീനിൽ ഓർഡറുകൾ';

  @override
  String get permFullScreenBody =>
      'ഇൻകമിംഗ് കോൾ പോലെ പുതിയ ഓർഡറുകൾ ലോക്ക് സ്ക്രീനിന് മുകളിൽ കാണിക്കാൻ അനുവദിക്കുക, ഒറ്റ ടാപ്പിൽ സ്വീകരിക്കാം.';

  @override
  String get permFullScreenCallTitle => 'കോൾ പോലെ എടുക്കാം';

  @override
  String get permFullScreenCallBody =>
      'ലോക്ക് തുറക്കാതെ തന്നെ ഓർഡർ കണ്ട് സ്വീകരിക്കാം.';

  @override
  String get permFullScreenTimeTitle => 'സമയത്ത് പ്രതികരിക്കുക';

  @override
  String get permFullScreenTimeBody =>
      'നിങ്ങൾ മറുപടി നൽകാത്ത ഓഫർ മറ്റൊരു റൈഡർക്ക് പോകും.';

  @override
  String get permFullScreenOnlyTitle => 'പുതിയ ഓർഡറുകൾക്ക് മാത്രം';

  @override
  String get permFullScreenOnlyBody =>
      'മറ്റൊന്നും ഒരിക്കലും നിങ്ങളുടെ ലോക്ക് സ്ക്രീനിൽ വരില്ല.';

  @override
  String get setupTitle => 'ഫോൺ സെറ്റപ്പ്';

  @override
  String get setupIntro =>
      'ആപ്പ് അടച്ചിരിക്കുമ്പോഴോ ഫോൺ ലോക്ക് ആയിരിക്കുമ്പോഴോ പോലും പുതിയ ഓർഡറുകൾ റിംഗ് ചെയ്യാൻ ഇവ പൂർത്തിയാക്കുക.';

  @override
  String get setupNotifications => 'അറിയിപ്പുകൾ';

  @override
  String get setupNotificationsBody =>
      'പുതിയ ഓർഡറുകൾ റിംഗ് ചെയ്യാനും കാണിക്കാനും.';

  @override
  String get setupFullScreen => 'ഫുൾ സ്ക്രീൻ ഓർഡർ അലേർട്ടുകൾ';

  @override
  String get setupFullScreenBody =>
      'കോൾ പോലെ പുതിയ ഓർഡർ ലോക്ക് സ്ക്രീനിൽ കാണിക്കും.';

  @override
  String get setupBattery => 'ബാറ്ററി: ഒപ്റ്റിമൈസ് ചെയ്യരുത്';

  @override
  String get setupBatteryBody =>
      'നിങ്ങൾ ഓൺലൈനിലുള്ളപ്പോൾ ഫോൺ ആപ്പ് അടയ്ക്കുന്നത് തടയും.';

  @override
  String get setupAutostart => 'ഓട്ടോസ്റ്റാർട്ട്';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ഫോണുകളിൽ Nexmile Rider ന് ഓട്ടോസ്റ്റാർട്ടും ഓണാക്കണം. ക്രമീകരണങ്ങൾ തുറന്ന് ഓട്ടോസ്റ്റാർട്ട് കണ്ടെത്തി ഓണാക്കുക.';
  }

  @override
  String get setupLocation => 'ലൊക്കേഷൻ';

  @override
  String get setupLocationBody => 'അടുത്തുള്ള ഓർഡറുകൾ അയയ്ക്കാൻ ഇത് വേണം.';

  @override
  String get setupAllow => 'അനുവദിക്കുക';

  @override
  String get setupOpenSettings => 'ക്രമീകരണങ്ങൾ തുറക്കുക';

  @override
  String get setupMarkDone => 'ഞാൻ ഇത് ചെയ്തു';

  @override
  String get setupDoneStep => 'പൂർത്തിയായി';

  @override
  String get setupBannerTitle => 'ഫോൺ സെറ്റപ്പ് പൂർത്തിയാക്കുക';

  @override
  String setupBannerBody(String count) {
    return 'ഓർഡർ അലേർട്ടുകൾ നഷ്ടമാകാതിരിക്കാൻ $count എണ്ണം ബാക്കി';
  }

  @override
  String get offerEstimatedEarnings => 'പ്രതീക്ഷിക്കുന്ന വരുമാനം';

  @override
  String offerPickupLine(String name) {
    return 'പിക്കപ്പ്: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ഡ്രോപ്പ്: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'നിങ്ങളിൽ നിന്ന് ഏകദേശം $distance';
  }

  @override
  String get exitTitle => 'Nexmile Rider ൽ നിന്ന് പുറത്തുകടക്കണോ?';

  @override
  String get exitBody => 'ആപ്പിൽ നിന്ന് പുറത്തുകടക്കണമെന്ന് ഉറപ്പാണോ?';

  @override
  String get exitConfirm => 'പുറത്തുകടക്കുക';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ഡെലിവറി പങ്കാളിയാകൂ';

  @override
  String get onboardingWelcomeSubtitle =>
      'നിങ്ങളുടെ പ്രദേശത്ത് ഡെലിവർ ചെയ്യൂ, ഇഷ്ടമുള്ള സമയം തിരഞ്ഞെടുക്കൂ, ആഴ്ചതോറും പണം നേടൂ.';

  @override
  String get onboardingWelcomeNeed => 'ഇവ തയ്യാറാക്കി വയ്ക്കുക';

  @override
  String get onboardingNeedAadhaar => 'ആധാർ കാർഡ്';

  @override
  String get onboardingNeedPan => 'PAN കാർഡ്';

  @override
  String get onboardingNeedLicence => 'ഡ്രൈവിംഗ് ലൈസൻസും വാഹന RC യും';

  @override
  String get onboardingNeedInsurance => 'വാഹന ഇൻഷുറൻസ്';

  @override
  String get onboardingNeedBank => 'ബാങ്ക് അക്കൗണ്ട് വിവരങ്ങൾ';

  @override
  String get onboardingNeedNote =>
      'സൈക്കിളിലോ നടന്നോ ആണോ? ആധാർ, PAN, ബാങ്ക് അക്കൗണ്ട് എന്നിവ മാത്രം മതി.';

  @override
  String get onboardingWelcomeTime => 'ഏകദേശം 10 മിനിറ്റ് എടുക്കും';

  @override
  String get onboardingGetStarted => 'തുടങ്ങാം';

  @override
  String get onboardingSavedNote =>
      'ഓരോ ഘട്ടത്തിന് ശേഷവും സുരക്ഷിതമായി സൂക്ഷിക്കുന്നു';

  @override
  String get docsTip =>
      'നല്ല വെളിച്ചത്തിലെടുത്ത വ്യക്തമായ ഫോട്ടോകൾക്ക് വേഗത്തിൽ അംഗീകാരം ലഭിക്കും.';

  @override
  String get docsAllDone =>
      'ആവശ്യമായ എല്ലാ രേഖകളും ചേർത്തു. പരിശോധിക്കാൻ തുടരുക.';

  @override
  String get docGroupIdentity => 'തിരിച്ചറിയൽ രേഖ';

  @override
  String get docGroupVehicle => 'ലൈസൻസും വാഹന രേഖകളും';

  @override
  String get docGroupMore => 'മറ്റ് രേഖകൾ';

  @override
  String get docTapToAdd => 'ചേർക്കാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get docUploading => 'അപ്‌ലോഡ് ചെയ്യുന്നു…';

  @override
  String get docView => 'കാണുക';

  @override
  String get docSheetSubtitle => 'ആദ്യ തവണ തന്നെ അംഗീകാരം നേടാൻ';

  @override
  String get docTipCorners => 'നാല് മൂലകളും ഫോട്ടോയിൽ ഉണ്ടായിരിക്കണം';

  @override
  String get docTipGlare => 'വ്യക്തമായ അക്ഷരങ്ങൾ, തിളക്കമോ നിഴലോ ഇല്ലാതെ';

  @override
  String get docTipOriginal => 'ഒറിജിനൽ രേഖ, ഫോട്ടോകോപ്പി അല്ല';

  @override
  String get docTipFace => 'മുഖം വ്യക്തമായി കാണണം, നേരെ നോക്കുക';

  @override
  String get docTipBackground => 'ലളിതമായ പശ്ചാത്തലവും നല്ല വെളിച്ചവും';

  @override
  String get docTipNoCap => 'തൊപ്പിയോ മാസ്കോ സൺഗ്ലാസോ പാടില്ല';

  @override
  String get docTipFullPage =>
      'മുഴുവൻ പേജും, ഓരോ വരിയും വായിക്കാവുന്ന വിധത്തിൽ';

  @override
  String get docSourceCamera => 'ക്യാമറ';

  @override
  String get docSourceGallery => 'ഗാലറി';

  @override
  String get docSourceFile => 'PDF അല്ലെങ്കിൽ ഫയൽ';

  @override
  String get reviewSectionDetails => 'നിങ്ങളുടെ വിവരങ്ങൾ';

  @override
  String get reviewSectionDocuments => 'രേഖകൾ';

  @override
  String get reviewSectionBank => 'ബാങ്ക് അക്കൗണ്ട്';

  @override
  String get reviewBankHidden => 'ചേർത്തു · സുരക്ഷയ്ക്കായി മറച്ചിരിക്കുന്നു';

  @override
  String get reviewEdit => 'എഡിറ്റ് ചെയ്യുക';

  @override
  String get reviewNextTitle => 'ഇനി എന്ത് സംഭവിക്കും';

  @override
  String get reviewNext1 => 'നിങ്ങൾ അപേക്ഷ സമർപ്പിക്കുന്നു';

  @override
  String get reviewNext2 =>
      'ഞങ്ങളുടെ ടീം നിങ്ങളുടെ വിവരങ്ങളും രേഖകളും പരിശോധിക്കുന്നു';

  @override
  String get reviewNext3 => 'നിങ്ങളെ അറിയിക്കും, ഓൺലൈനായി സമ്പാദിച്ചുതുടങ്ങാം';

  @override
  String get kycStepSubmitted => 'അപേക്ഷ സമർപ്പിച്ചു';

  @override
  String get kycStepVerifying => 'നിങ്ങളുടെ രേഖകൾ പരിശോധിക്കുന്നു';

  @override
  String get kycStepApproved => 'അംഗീകരിച്ചു — ഓൺലൈനായി സമ്പാദിച്ചുതുടങ്ങൂ';
}
