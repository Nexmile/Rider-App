// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'ವೇಗದ ಡೆಲಿವರಿ. ತಾಜಾ ನಗು.';

  @override
  String get chooseLanguageTitle => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseLanguageSubtitle =>
      'ನಿಮಗೆ ಅನುಕೂಲವಾದ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ. ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get searchLanguageHint => 'ಭಾಷೆಯನ್ನು ಹುಡುಕಿ';

  @override
  String get noLanguageFound => 'ಯಾವುದೇ ಭಾಷೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String languagesAvailable(int count) {
    return '$count ಭಾಷೆಗಳು ಲಭ್ಯವಿದೆ';
  }

  @override
  String get continueLabel => 'ಮುಂದುವರಿಸಿ';

  @override
  String get selectedLabel => 'ಆಯ್ಕೆಯಾಗಿದೆ';

  @override
  String get defaultLabel => 'ಡೀಫಾಲ್ಟ್';

  @override
  String get homeTitle => 'Nexmile ಗೆ ಸ್ವಾಗತ';

  @override
  String get homeSubtitle =>
      'ತಾಜಾ ದಿನಸಿ, ಬಿಸಿ ಆಹಾರ ಮತ್ತು ದೈನಂದಿನ ಅಗತ್ಯ ವಸ್ತುಗಳು ನಿಮ್ಮ ಹತ್ತಿರದ ಅಂಗಡಿಗಳಿಂದ.';

  @override
  String get changeLanguage => 'ಭಾಷೆ ಬದಲಾಯಿಸಿ';

  @override
  String get languageUpdated => 'ಭಾಷೆ ಬದಲಾಗಿದೆ';

  @override
  String get appLanguageLabel => 'ಆ್ಯಪ್ ಭಾಷೆ';

  @override
  String greetingNamed(String name) {
    return 'ನಮಸ್ಕಾರ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ಗೆ ಸೈನ್ ಇನ್ ಮಾಡಿ';

  @override
  String get loginSubtitle =>
      'ನಿಮ್ಮ ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ, ನಾವು ಪರಿಶೀಲನಾ ಕೋಡ್ ಕಳುಹಿಸುತ್ತೇವೆ.';

  @override
  String get emailOrPhoneLabel => 'ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get emailOrPhoneHint => 'name@example.com ಅಥವಾ 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'ಸರಿಯಾದ ಇಮೇಲ್ ವಿಳಾಸ ಅಥವಾ 10 ಅಂಕಿಯ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ';

  @override
  String get loginHeadline =>
      'Nexmile ಜೊತೆ ಡೆಲಿವರಿ ಮಾಡಿ. ನಿಮಗೆ ಬೇಕಾದ ಸಮಯದಲ್ಲಿ ಗಳಿಸಿ.';

  @override
  String get loginOrSignUp => 'ಲಾಗ್ ಇನ್ ಅಥವಾ ಸೈನ್ ಅಪ್ ಮಾಡಿ';

  @override
  String get loginEmailHint => 'ನಿಮ್ಮ ಇಮೇಲ್ ವಿಳಾಸ ನಮೂದಿಸಿ';

  @override
  String get invalidEmail => 'ಸರಿಯಾದ ಇಮೇಲ್ ವಿಳಾಸ ನಮೂದಿಸಿ';

  @override
  String get loginHeroBadge => 'ಡೆಲಿವರಿ ಪಾರ್ಟನರ್';

  @override
  String get sendCode => 'ಕೋಡ್ ಕಳುಹಿಸಿ';

  @override
  String get agreeToTermsOnContinue =>
      'ಮುಂದುವರಿಯುವ ಮೂಲಕ ನೀವು ನಮ್ಮ ಸೇವಾ ನಿಯಮಗಳು ಮತ್ತು ಗೌಪ್ಯತಾ ನೀತಿಗೆ ಒಪ್ಪುತ್ತೀರಿ.';

  @override
  String get otpTitle => 'ಇದು ನೀವೇ ಎಂದು ಖಚಿತಪಡಿಸಿ';

  @override
  String otpSubtitle(String target) {
    return '$target ಗೆ ಕಳುಹಿಸಿದ 6 ಅಂಕಿಯ ಕೋಡ್ ನಮೂದಿಸಿ';
  }

  @override
  String get otpHelpTitle => 'ಕೋಡ್ ಬಂದಿಲ್ಲವೇ?';

  @override
  String get otpHelpCheck =>
      'ಮೇಲಿನ ಸಂಖ್ಯೆ ಅಥವಾ ಇಮೇಲ್ ಸರಿಯಾಗಿದೆಯೇ ನೋಡಿ. ಬದಲಾಯಿಸಲು ಹಿಂದಕ್ಕೆ ಹೋಗಿ.';

  @override
  String get otpHelpWait =>
      'ಕೋಡ್ ಬರಲು ಒಂದು ನಿಮಿಷದವರೆಗೆ ಆಗಬಹುದು. ಟೈಮರ್ ಮುಗಿದ ನಂತರ ಹೊಸ ಕೋಡ್ ಕೇಳಬಹುದು.';

  @override
  String get otpHelpSpam =>
      'ಇಮೇಲ್ ಆಗಿದ್ದರೆ, ನಿಮ್ಮ ಸ್ಪ್ಯಾಮ್ ಫೋಲ್ಡರ್‌ನಲ್ಲೂ ನೋಡಿ.';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'ಪರಿಶೀಲಿಸಿ';

  @override
  String get resendCode => 'ಕೋಡ್ ಮತ್ತೆ ಕಳುಹಿಸಿ';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ಸೆಕೆಂಡುಗಳಲ್ಲಿ ಮತ್ತೆ ಕಳುಹಿಸಿ';
  }

  @override
  String get codeResent => 'ಹೊಸ ಕೋಡ್ ಕಳುಹಿಸಲಾಗಿದೆ';

  @override
  String get incorrectCode =>
      'ಈ ಕೋಡ್ ತಪ್ಪಾಗಿದೆ ಅಥವಾ ಅವಧಿ ಮುಗಿದಿದೆ. ಹೊಸದನ್ನು ಕೇಳಿ.';

  @override
  String get enterFullCode => 'ಪೂರ್ಣ 6 ಅಂಕಿಗಳನ್ನು ನಮೂದಿಸಿ';

  @override
  String get accountSuspended =>
      'ಈ ಖಾತೆಯನ್ನು ಅಮಾನತುಗೊಳಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ.';

  @override
  String get tooManyAttempts =>
      'ತುಂಬಾ ಪ್ರಯತ್ನಗಳಾಗಿವೆ. ದಯವಿಟ್ಟು ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get sessionExpired =>
      'ನಿಮ್ಮ ಸೆಷನ್ ಅವಧಿ ಮುಗಿದಿದೆ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಸೈನ್ ಇನ್ ಮಾಡಿ.';

  @override
  String get networkError =>
      'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವಿಲ್ಲ. ನಿಮ್ಮ ಸಂಪರ್ಕ ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get developmentCode => 'ಡೆವಲಪ್‌ಮೆಂಟ್ ಕೋಡ್';

  @override
  String get signOut => 'ಸೈನ್ ಔಟ್';

  @override
  String get signedOut => 'ನೀವು ಸೈನ್ ಔಟ್ ಆಗಿದ್ದೀರಿ';

  @override
  String get somethingWentWrong => 'ಏನೋ ತಪ್ಪಾಗಿದೆ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get profileTitle => 'ಪ್ರೊಫೈಲ್';

  @override
  String get profileSectionDetails => 'ನಿಮ್ಮ ವಿವರಗಳು';

  @override
  String get profileSectionWork => 'ಕೆಲಸ';

  @override
  String get profileSectionApp => 'ಆ್ಯಪ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

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
  String get viewProfile => 'ಪ್ರೊಫೈಲ್ ನೋಡಿ';

  @override
  String get nameLabel => 'ಹೆಸರು';

  @override
  String get emailLabel => 'ಇಮೇಲ್';

  @override
  String get mobileLabel => 'ಮೊಬೈಲ್ ಸಂಖ್ಯೆ';

  @override
  String get accountStatusLabel => 'ಖಾತೆಯ ಸ್ಥಿತಿ';

  @override
  String get statusActive => 'ಸಕ್ರಿಯ';

  @override
  String get statusPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get statusSuspended => 'ಅಮಾನತು';

  @override
  String get verifiedLabel => 'ಪರಿಶೀಲಿಸಲಾಗಿದೆ';

  @override
  String get notProvided => 'ಸೇರಿಸಿಲ್ಲ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get loginRiderNote => 'ಈ ಆ್ಯಪ್ Nexmile ಡೆಲಿವರಿ ಪಾರ್ಟನರ್‌ಗಳಿಗಾಗಿ ಇದೆ.';

  @override
  String get checkingYourAccount => 'ನಿಮ್ಮ ಖಾತೆ ಪರಿಶೀಲಿಸುತ್ತಿದ್ದೇವೆ';

  @override
  String get couldNotLoadAccount =>
      'ನಿಮ್ಮ ಖಾತೆ ಲೋಡ್ ಮಾಡಲು ಆಗಲಿಲ್ಲ. ನಿಮ್ಮ ಸಂಪರ್ಕ ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get notARiderAccountTitle => 'ಇದು ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಖಾತೆ ಅಲ್ಲ';

  @override
  String get notARiderAccount =>
      'ಈ ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ಈಗಾಗಲೇ ಬೇರೊಂದು Nexmile ಖಾತೆಯಲ್ಲಿ ನೋಂದಣಿಯಾಗಿದೆ. ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಆಗಿ ಸೇರಲು ಸೈನ್ ಔಟ್ ಮಾಡಿ, ಬೇರೆ ಇಮೇಲ್ ಅಥವಾ ಸಂಖ್ಯೆ ಬಳಸಿ.';

  @override
  String notARiderAccountFor(String role) {
    return 'ಈ ಇಮೇಲ್ ಅಥವಾ ಮೊಬೈಲ್ ಸಂಖ್ಯೆ ಈಗಾಗಲೇ Nexmile $role ಆಗಿ ನೋಂದಣಿಯಾಗಿದೆ. ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಆಗಿ ಸೇರಲು ಸೈನ್ ಔಟ್ ಮಾಡಿ, ಬೇರೆ ಇಮೇಲ್ ಅಥವಾ ಸಂಖ್ಯೆ ಬಳಸಿ.';
  }

  @override
  String get roleCustomer => 'ಗ್ರಾಹಕ';

  @override
  String get roleMerchant => 'ವ್ಯಾಪಾರಿ';

  @override
  String get roleAdmin => 'ನಿರ್ವಾಹಕ';

  @override
  String get useAnotherAccount => 'ಬೇರೆ ಖಾತೆ ಬಳಸಿ';

  @override
  String get onboardingTitle => 'Nexmile ಪಾರ್ಟನರ್ ಆಗಿ';

  @override
  String get onboardingSubtitle =>
      'ಕೆಲವು ವಿವರಗಳು ಮತ್ತು ನಿಮ್ಮ ದಾಖಲೆಗಳನ್ನು ನೀಡಿ, ನಂತರ ನಮ್ಮ ತಂಡ ನಿಮ್ಮನ್ನು ಪರಿಶೀಲಿಸುತ್ತದೆ. ಸಾಮಾನ್ಯವಾಗಿ ಎರಡು ಕೆಲಸದ ದಿನಗಳವರೆಗೆ ಆಗಬಹುದು.';

  @override
  String stepOfSteps(int current, int total) {
    return '$total ರಲ್ಲಿ ಹಂತ $current';
  }

  @override
  String get stepIdentityTitle => 'ನಿಮ್ಮ ಬಗ್ಗೆ';

  @override
  String get stepIdentitySubtitle =>
      'ನಿಮ್ಮ ಆಧಾರ್ ಕಾರ್ಡ್‌ನಲ್ಲಿ ಇರುವಂತೆಯೇ ನಿಮ್ಮ ಹೆಸರನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get stepVehicleTitle => 'ನಿಮ್ಮ ವಾಹನ';

  @override
  String get stepVehicleSubtitle =>
      'ನೀವು ಯಾವ ವಾಹನ ಓಡಿಸುತ್ತೀರಿ ಮತ್ತು ಅದರ ನಂಬರ್ ಪ್ಲೇಟ್‌ನಲ್ಲಿರುವ ಸಂಖ್ಯೆ ತಿಳಿಸಿ.';

  @override
  String get stepIdentityNumbersTitle => 'ಗುರುತಿನ ಸಂಖ್ಯೆಗಳು';

  @override
  String get stepIdentityNumbersSubtitle =>
      'ಇವು ನೀವು ನಂತರ ಅಪ್‌ಲೋಡ್ ಮಾಡುವ ದಾಖಲೆಗಳಿಗೆ ಹೊಂದಿಕೆಯಾಗಬೇಕು.';

  @override
  String get stepLicenceTitle => 'ಲೈಸೆನ್ಸ್ ಮತ್ತು ಇನ್ಶೂರೆನ್ಸ್';

  @override
  String get stepLicenceSubtitle =>
      'ನೀವು ಡೆಲಿವರಿ ಶುರುಮಾಡುವ ದಿನ ಎರಡೂ ಮಾನ್ಯವಾಗಿರಬೇಕು.';

  @override
  String get stepBankTitle => 'ನಿಮ್ಮ ಹಣ ಎಲ್ಲಿಗೆ ಬರಬೇಕು';

  @override
  String get stepBankSubtitle =>
      'ನಿಮ್ಮ ಗಳಿಕೆಯನ್ನು ಈ ಖಾತೆಗೆ ಜಮಾ ಮಾಡಲಾಗುತ್ತದೆ. ಗಮನವಿಟ್ಟು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get stepDocumentsTitle => 'ನಿಮ್ಮ ದಾಖಲೆಗಳು';

  @override
  String get stepDocumentsSubtitle =>
      'ಪ್ರತಿಯೊಂದನ್ನೂ ಒಳ್ಳೆಯ ಬೆಳಕಿನಲ್ಲಿ ಫೋಟೋ ತೆಗೆಯಿರಿ. JPG, PNG ಅಥವಾ PDF, ಪ್ರತಿಯೊಂದೂ 5 MB ವರೆಗೆ.';

  @override
  String get stepReviewTitle => 'ಪರಿಶೀಲಿಸಿ ಸಲ್ಲಿಸಿ';

  @override
  String get stepReviewSubtitle =>
      'ನೀವು ಸಲ್ಲಿಸಿದ ನಂತರ, ನಮ್ಮ ತಂಡ ಪರಿಶೀಲಿಸುವವರೆಗೆ ನಿಮ್ಮ ವಿವರಗಳನ್ನು ಬದಲಾಯಿಸಲು ಆಗುವುದಿಲ್ಲ.';

  @override
  String get saveAndContinue => 'ಉಳಿಸಿ ಮುಂದುವರಿಸಿ';

  @override
  String get backLabel => 'ಹಿಂದೆ';

  @override
  String get fullNameLabel => 'ಪೂರ್ಣ ಹೆಸರು';

  @override
  String get fullNameHint => 'ನಿಮ್ಮ ಆಧಾರ್‌ನಲ್ಲಿ ಇರುವಂತೆ';

  @override
  String get dateOfBirthLabel => 'ಹುಟ್ಟಿದ ದಿನಾಂಕ';

  @override
  String get selectDate => 'ದಿನಾಂಕ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get vehicleTypeLabel => 'ವಾಹನದ ಪ್ರಕಾರ';

  @override
  String get vehicleMotorcycle => 'ಬೈಕ್';

  @override
  String get vehicleScooter => 'ಸ್ಕೂಟರ್';

  @override
  String get vehicleEv => 'ಎಲೆಕ್ಟ್ರಿಕ್ ವಾಹನ';

  @override
  String get vehicleBicycle => 'ಸೈಕಲ್';

  @override
  String get vehicleWalk => 'ಕಾಲ್ನಡಿಗೆ';

  @override
  String get vehicleNoPapersNote =>
      'ವಾಹನ ಸಂಖ್ಯೆ ಅಥವಾ RC ಬೇಕಿಲ್ಲ. ನಿಮ್ಮಿಂದ ಆಧಾರ್ ಮತ್ತು PAN ಮಾತ್ರ ಕೇಳಲಾಗುತ್ತದೆ.';

  @override
  String get vehicleNumberLabel => 'ವಾಹನ ಸಂಖ್ಯೆ';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC ಸಂಖ್ಯೆ';

  @override
  String get aadhaarLabel => 'ಆಧಾರ್ ಸಂಖ್ಯೆ';

  @override
  String get aadhaarHint => '12 ಅಂಕಿಗಳು';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ಡ್ರೈವಿಂಗ್ ಲೈಸೆನ್ಸ್ ಸಂಖ್ಯೆ';

  @override
  String get drivingLicenceExpiryLabel => 'ಲೈಸೆನ್ಸ್ ಅವಧಿ ಮುಗಿಯುವ ದಿನಾಂಕ';

  @override
  String get insuranceNumberLabel => 'ಇನ್ಶೂರೆನ್ಸ್ ಪಾಲಿಸಿ ಸಂಖ್ಯೆ';

  @override
  String get insuranceExpiryLabel => 'ಇನ್ಶೂರೆನ್ಸ್ ಅವಧಿ ಮುಗಿಯುವ ದಿನಾಂಕ';

  @override
  String get bankAccountNameLabel => 'ಖಾತೆದಾರರ ಹೆಸರು';

  @override
  String get bankAccountNumberLabel => 'ಖಾತೆ ಸಂಖ್ಯೆ';

  @override
  String get bankIfscLabel => 'IFSC ಕೋಡ್';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total ರಲ್ಲಿ $done ಅಪ್‌ಲೋಡ್ ಆಗಿದೆ';
  }

  @override
  String get uploadDocument => 'ಅಪ್‌ಲೋಡ್ ಮಾಡಿ';

  @override
  String get replaceDocument => 'ಬದಲಾಯಿಸಿ';

  @override
  String get removeDocument => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get takePhoto => 'ಫೋಟೋ ತೆಗೆಯಿರಿ';

  @override
  String get chooseFromGallery => 'ಗ್ಯಾಲರಿಯಿಂದ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseFile => 'ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get uploadingLabel => 'ಅಪ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ';

  @override
  String get documentRejected => 'ತಿರಸ್ಕರಿಸಲಾಗಿದೆ';

  @override
  String get documentUploaded => 'ಅಪ್‌ಲೋಡ್ ಆಗಿದೆ';

  @override
  String get documentApproved => 'ಅನುಮೋದಿಸಲಾಗಿದೆ';

  @override
  String get documentRequired => 'ಕಡ್ಡಾಯ';

  @override
  String get documentOptional => 'ಐಚ್ಛಿಕ';

  @override
  String get fileTooLarge =>
      'ಈ ಫೈಲ್ 5 MB ಗಿಂತ ದೊಡ್ಡದಿದೆ. ಸ್ಕ್ಯಾನ್ ಬದಲು ಫೋಟೋ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get unsupportedFileType => 'JPG, PNG ಅಥವಾ PDF ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get pickerUnavailable =>
      'ಅದನ್ನು ತೆರೆಯಲು ಆಗಲಿಲ್ಲ. ಆ್ಯಪ್‌ನ ಕ್ಯಾಮೆರಾ ಮತ್ತು ಫೋಟೋ ಅನುಮತಿಗಳನ್ನು ಪರಿಶೀಲಿಸಿ.';

  @override
  String get uploadFailed => 'ಅಪ್‌ಲೋಡ್ ಆಗಲಿಲ್ಲ. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get submitForVerification => 'ಪರಿಶೀಲನೆಗೆ ಸಲ್ಲಿಸಿ';

  @override
  String get submitConfirmTitle => 'ಪರಿಶೀಲನೆಗೆ ಸಲ್ಲಿಸಬೇಕೇ?';

  @override
  String get submitConfirmBody =>
      'ನಮ್ಮ ತಂಡ ಪರಿಶೀಲಿಸುವಾಗ ನಿಮ್ಮ ವಿವರಗಳು ಮತ್ತು ದಾಖಲೆಗಳು ಲಾಕ್ ಆಗಿರುತ್ತವೆ. ತೀರ್ಮಾನ ಆಗುವವರೆಗೆ ನೀವು ಅವುಗಳನ್ನು ಬದಲಾಯಿಸಲು ಆಗುವುದಿಲ್ಲ.';

  @override
  String get cancelLabel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get completeEverythingBeforeSubmitting =>
      'ಸಲ್ಲಿಸುವ ಮೊದಲು ಎಲ್ಲಾ ಹಂತಗಳನ್ನು ಮುಗಿಸಿ ಮತ್ತು ಎಲ್ಲಾ ದಾಖಲೆಗಳನ್ನು ಅಪ್‌ಲೋಡ್ ಮಾಡಿ.';

  @override
  String get checkTheHighlightedFields =>
      'ಗುರುತಿಸಿದ ಕ್ಷೇತ್ರಗಳನ್ನು ಪರಿಶೀಲಿಸಿ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get underReviewTitle => 'ನಿಮ್ಮ ದಾಖಲೆಗಳನ್ನು ಪರಿಶೀಲಿಸುತ್ತಿದ್ದೇವೆ';

  @override
  String get underReviewBody =>
      'ನಮ್ಮ ತಂಡ ಸಾಮಾನ್ಯವಾಗಿ ಎರಡು ಕೆಲಸದ ದಿನಗಳಲ್ಲಿ ಪರಿಶೀಲಿಸುತ್ತದೆ. ನಿಮಗೆ ಅನುಮೋದನೆ ಸಿಕ್ಕ ತಕ್ಷಣ ತಿಳಿಸುತ್ತೇವೆ.';

  @override
  String get checkAgain => 'ಮತ್ತೆ ಪರಿಶೀಲಿಸಿ';

  @override
  String get stillUnderReview => 'ಇನ್ನೂ ಪರಿಶೀಲನೆಯಲ್ಲಿದೆ';

  @override
  String get rejectedTitle => 'ನಿಮ್ಮನ್ನು ಪರಿಶೀಲಿಸಲು ಆಗಲಿಲ್ಲ';

  @override
  String get rejectedBody =>
      'ಕೆಳಗೆ ನಮ್ಮ ತಂಡ ತಿಳಿಸಿದ್ದನ್ನು ಸರಿಪಡಿಸಿ, ನಂತರ ನಿಮ್ಮ ದಾಖಲೆಗಳನ್ನು ಮತ್ತೆ ಕಳುಹಿಸಿ.';

  @override
  String get rejectionReasonLabel => 'ಕಾರಣ';

  @override
  String get fixAndResubmit => 'ಸರಿಪಡಿಸಿ ಮತ್ತೆ ಸಲ್ಲಿಸಿ';

  @override
  String get blockedTitle => 'ನೀವು ಇನ್ನೂ ಆನ್‌ಲೈನ್ ಆಗಲು ಸಾಧ್ಯವಿಲ್ಲ';

  @override
  String get documentsExpiredMessage =>
      'ನಿಮ್ಮ ಲೈಸೆನ್ಸ್ ಅಥವಾ ಇನ್ಶೂರೆನ್ಸ್ ಅವಧಿ ಮುಗಿದಿದೆ. ಆನ್‌ಲೈನ್ ಆಗಲು ಮಾನ್ಯವಾದ ದಾಖಲೆಗಳನ್ನು ಅಪ್‌ಲೋಡ್ ಮಾಡಿ.';

  @override
  String get awaitingVerificationMessage =>
      'ನಿಮ್ಮ ದಾಖಲೆಗಳು ಇನ್ನೂ ಪರಿಶೀಲನೆಯಲ್ಲಿವೆ.';

  @override
  String get updateDocuments => 'ದಾಖಲೆಗಳನ್ನು ಅಪ್‌ಡೇಟ್ ಮಾಡಿ';

  @override
  String get riderHomeTitle => 'ಡೆಲಿವರಿಗೆ ಸಿದ್ಧ';

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
      'ಆನ್‌ಲೈನ್ ಆಗಿ, ನಾವು ನಿಮಗೆ ಹತ್ತಿರದ ಡೆಲಿವರಿಗಳನ್ನು ಕಳುಹಿಸುತ್ತೇವೆ.';

  @override
  String get dutyStatusLabel => 'ಡ್ಯೂಟಿ ಸ್ಥಿತಿ';

  @override
  String get dutyOnline => 'ಆನ್‌ಲೈನ್';

  @override
  String get dutyOffline => 'ಆಫ್‌ಲೈನ್';

  @override
  String get dutyOnBreak => 'ಬ್ರೇಕ್‌ನಲ್ಲಿ';

  @override
  String get goOnline => 'ಆನ್‌ಲೈನ್ ಆಗಿ';

  @override
  String get goOffline => 'ಆಫ್‌ಲೈನ್ ಆಗಿ';

  @override
  String get takeABreak => 'ಬ್ರೇಕ್ ತೆಗೆದುಕೊಳ್ಳಿ';

  @override
  String get waitingForOrders => 'ಹತ್ತಿರದ ಆರ್ಡರ್‌ಗಳಿಗಾಗಿ ಕಾಯಲಾಗುತ್ತಿದೆ';

  @override
  String get youAreOffline =>
      'ನೀವು ಆಫ್‌ಲೈನ್ ಇದ್ದೀರಿ. ನಿಮಗೆ ಯಾವುದೇ ಡೆಲಿವರಿ ಕಳುಹಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get completedDeliveriesLabel => 'ಪೂರ್ಣಗೊಂಡ ಡೆಲಿವರಿಗಳು';

  @override
  String get ratingLabel => 'ರೇಟಿಂಗ್';

  @override
  String get notRatedYet => 'ಇನ್ನೂ ರೇಟಿಂಗ್ ಇಲ್ಲ';

  @override
  String get vehicleLabel => 'ವಾಹನ';

  @override
  String get kycStatusLabel => 'ಪರಿಶೀಲನೆ';

  @override
  String get kycPending => 'ಸಲ್ಲಿಸಿಲ್ಲ';

  @override
  String get kycSubmitted => 'ಪರಿಶೀಲನೆಯಲ್ಲಿದೆ';

  @override
  String get kycVerified => 'ಅನುಮೋದಿಸಲಾಗಿದೆ';

  @override
  String get kycRejected => 'ತಿರಸ್ಕರಿಸಲಾಗಿದೆ';

  @override
  String get fieldRequired => 'ಈ ಕ್ಷೇತ್ರ ಅಗತ್ಯವಿದೆ';

  @override
  String get invalidAadhaar => 'ನಿಮ್ಮ ಆಧಾರ್ ಸಂಖ್ಯೆಯ 12 ಅಂಕಿಗಳನ್ನು ನಮೂದಿಸಿ';

  @override
  String get invalidPan => 'ಸರಿಯಾದ PAN ನಮೂದಿಸಿ, ಉದಾ. ABCDE1234F';

  @override
  String get invalidIfsc => 'ಸರಿಯಾದ IFSC ಕೋಡ್ ನಮೂದಿಸಿ, ಉದಾ. SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'ನಂಬರ್ ಪ್ಲೇಟ್‌ನಲ್ಲಿ ಇರುವಂತೆಯೇ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ';

  @override
  String get invalidAccountNumber => 'ಸರಿಯಾದ ಖಾತೆ ಸಂಖ್ಯೆ ನಮೂದಿಸಿ';

  @override
  String get dateMustBeFuture => 'ಈ ದಿನಾಂಕ ಈಗಾಗಲೇ ಕಳೆದುಹೋಗಿದೆ';

  @override
  String get mustBeEighteen => 'ಡೆಲಿವರಿ ಮಾಡಲು ನಿಮಗೆ ಕನಿಷ್ಠ 18 ವರ್ಷ ಆಗಿರಬೇಕು';

  @override
  String get docAadhaarFront => 'ಆಧಾರ್ ಕಾರ್ಡ್ (ಮುಂಭಾಗ)';

  @override
  String get docAadhaarBack => 'ಆಧಾರ್ ಕಾರ್ಡ್ (ಹಿಂಭಾಗ)';

  @override
  String get docDrivingLicence => 'ಡ್ರೈವಿಂಗ್ ಲೈಸೆನ್ಸ್';

  @override
  String get docVehicleRc => 'ವಾಹನ ನೋಂದಣಿ ಪ್ರಮಾಣಪತ್ರ (RC)';

  @override
  String get docInsurance => 'ವಾಹನ ಇನ್ಶೂರೆನ್ಸ್';

  @override
  String get docProfilePhoto => 'ಪ್ರೊಫೈಲ್ ಫೋಟೋ';

  @override
  String get docPan => 'PAN ಕಾರ್ಡ್';

  @override
  String get docBankProof => 'ರದ್ದುಗೊಳಿಸಿದ ಚೆಕ್ ಅಥವಾ ಬ್ಯಾಂಕ್ ಸ್ಟೇಟ್‌ಮೆಂಟ್';

  @override
  String get ordersTab => 'ಆರ್ಡರ್‌ಗಳು';

  @override
  String get deliveryTab => 'ಡೆಲಿವರಿ';

  @override
  String get historyTab => 'ಇತಿಹಾಸ';

  @override
  String get orderBoardTitle => 'ನಿಮ್ಮ ಹತ್ತಿರದ ಆರ್ಡರ್‌ಗಳು';

  @override
  String get orderBoardSubtitle =>
      'ಹತ್ತಿರದ ರೆಸ್ಟೋರೆಂಟ್ ಮೊದಲು. ಪಟ್ಟಿ ತಾನಾಗಿಯೇ ರಿಫ್ರೆಶ್ ಆಗುತ್ತದೆ.';

  @override
  String orderNumberLabel(String number) {
    return 'ಆರ್ಡರ್ $number';
  }

  @override
  String get pickupLabel => 'ಪಿಕಪ್';

  @override
  String get dropoffLabel => 'ಡೆಲಿವರಿ ವಿಳಾಸ';

  @override
  String distanceMetres(String metres) {
    return '$metres ಮೀ';
  }

  @override
  String distanceKilometres(String km) {
    return '$km ಕಿಮೀ';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ವಸ್ತುಗಳು',
      one: '1 ವಸ್ತು',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'ನಿಮ್ಮ ಗಳಿಕೆ';

  @override
  String get collectCashLabel => 'ಗ್ರಾಹಕರಿಂದ ನಗದು ಪಡೆಯಿರಿ';

  @override
  String get prepaidLabel => 'ಆನ್‌ಲೈನ್‌ನಲ್ಲಿ ಪಾವತಿಸಲಾಗಿದೆ';

  @override
  String collectAtDoor(String amount) {
    return 'ಗ್ರಾಹಕರಿಂದ $amount ನಗದು ಪಡೆಯಿರಿ';
  }

  @override
  String get nothingToCollect => 'ಈಗಾಗಲೇ ಪಾವತಿಸಲಾಗಿದೆ. ಹಣ ಕೇಳಬೇಡಿ.';

  @override
  String get acceptOrder => 'ಸ್ವೀಕರಿಸಿ';

  @override
  String get viewOrder => 'ನೋಡಿ';

  @override
  String get orderAccepted => 'ಆರ್ಡರ್ ಸ್ವೀಕರಿಸಲಾಗಿದೆ. ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಹೊರಡಿ.';

  @override
  String get orderAlreadyTaken =>
      'ಇನ್ನೊಬ್ಬ ರೈಡರ್ ಇದನ್ನು ತೆಗೆದುಕೊಂಡಿದ್ದಾರೆ. ಇತ್ತೀಚಿನ ಪಟ್ಟಿ ಇಲ್ಲಿದೆ.';

  @override
  String get orderNoLongerYours => 'ಈ ಆರ್ಡರ್ ಈಗ ನಿಮ್ಮದಲ್ಲ.';

  @override
  String get boardEmptyTitle => 'ಸದ್ಯಕ್ಕೆ ಆರ್ಡರ್‌ಗಳಿಲ್ಲ';

  @override
  String get boardEmptyBody =>
      'ಆನ್‌ಲೈನ್‌ನಲ್ಲೇ ಇರಿ. ರೆಸ್ಟೋರೆಂಟ್‌ಗಳಲ್ಲಿ ಆರ್ಡರ್ ಹೆಚ್ಚಾದಂತೆ ಪಟ್ಟಿ ತಾನಾಗಿಯೇ ಅಪ್‌ಡೇಟ್ ಆಗುತ್ತದೆ.';

  @override
  String get boardOfflineTitle => 'ನೀವು ಆಫ್‌ಲೈನ್ ಇದ್ದೀರಿ';

  @override
  String get boardOfflineBody => 'ಆರ್ಡರ್‌ಗಳನ್ನು ಪಡೆಯಲು ಆನ್‌ಲೈನ್ ಆಗಿ.';

  @override
  String get boardBusyTitle => 'ಮೊದಲು ನಿಮ್ಮ ಡೆಲಿವರಿ ಮುಗಿಸಿ';

  @override
  String get boardBusyBody =>
      'ಈ ಆರ್ಡರ್ ಡೆಲಿವರಿ ಆದ ನಂತರ ಇನ್ನೊಂದು ಆರ್ಡರ್ ತೆಗೆದುಕೊಳ್ಳಬಹುದು.';

  @override
  String get boardNoLocationTitle => 'ನೀವು ಎಲ್ಲಿದ್ದೀರಿ ಎಂದು ತಿಳಿಯುತ್ತಿಲ್ಲ';

  @override
  String get boardNoLocationBody =>
      'ರೆಸ್ಟೋರೆಂಟ್ ಎಷ್ಟು ಹತ್ತಿರವಿದೆ ಎಂಬುದರ ಮೇಲೆ ಆರ್ಡರ್‌ಗಳನ್ನು ಜೋಡಿಸಲಾಗುತ್ತದೆ, ಹಾಗಾಗಿ ಏನನ್ನಾದರೂ ತೋರಿಸಲು ನಮಗೆ ನಿಮ್ಮ ಸ್ಥಳ ಬೇಕು.';

  @override
  String get boardNotVerifiedTitle => 'ಡೆಲಿವರಿಗೆ ಇನ್ನೂ ಅನುಮೋದನೆ ಸಿಕ್ಕಿಲ್ಲ';

  @override
  String get activeDeliveryTitle => 'ನಿಮ್ಮ ಡೆಲಿವರಿ';

  @override
  String get headToRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಹೊರಡಿ';

  @override
  String get deliverToCustomer => 'ಗ್ರಾಹಕರಿಗೆ ಡೆಲಿವರಿ ಮಾಡಿ';

  @override
  String get noActiveDeliveryTitle => 'ಕೈಯಲ್ಲಿ ಯಾವುದೇ ಆರ್ಡರ್ ಇಲ್ಲ';

  @override
  String get noActiveDeliveryBody =>
      'ಆರ್ಡರ್ ಪಟ್ಟಿಯಿಂದ ಒಂದು ಆರ್ಡರ್ ಸ್ವೀಕರಿಸಿ, ಅದು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get confirmPickupButton => 'ಆರ್ಡರ್ ಪಿಕಪ್ ಮಾಡಿದ್ದೇನೆ';

  @override
  String get pickupCodeTitle => 'ಪಿಕಪ್ ಕೋಡ್';

  @override
  String get pickupCodeSubtitle =>
      'ರೆಸ್ಟೋರೆಂಟ್‌ನಿಂದ ಕೋಡ್ ಕೇಳಿ ಇಲ್ಲಿ ಟೈಪ್ ಮಾಡಿ.';

  @override
  String get pickupCodeHint => 'ಕೋಡ್';

  @override
  String get wrongPickupCode =>
      'ಆ ಕೋಡ್ ಹೊಂದಿಕೆಯಾಗಲಿಲ್ಲ. ರೆಸ್ಟೋರೆಂಟ್ ಜೊತೆ ಪರಿಶೀಲಿಸಿ.';

  @override
  String get pickupConfirmed => 'ಪಿಕಪ್ ಆಗಿದೆ. ಗ್ರಾಹಕರಿಗೆ ಡೆಲಿವರಿ ಮಾಡಿ.';

  @override
  String get confirmDeliveryButton => 'ಡೆಲಿವರಿ ಆಗಿದೆ';

  @override
  String get stepReachRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್ ತಲುಪಿ';

  @override
  String get stepPickUp => 'ಪಿಕಪ್';

  @override
  String get stepReachCustomer => 'ಗ್ರಾಹಕರನ್ನು ತಲುಪಿ';

  @override
  String get stepDeliver => 'ಡೆಲಿವರಿ';

  @override
  String get swipePickUp => 'ಪಿಕಪ್ ಆದ ಮೇಲೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get swipeDeliver => 'ಡೆಲಿವರಿಗೆ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get cashToCollectLabel => 'ಗ್ರಾಹಕರಿಂದ ಪಡೆಯಬೇಕಾದ ನಗದು';

  @override
  String get confirmDeliveryTitle => 'ಡೆಲಿವರಿ ಖಚಿತಪಡಿಸಿ';

  @override
  String get confirmDeliveryBody =>
      'ಗ್ರಾಹಕರ ಕೈಗೆ ಆರ್ಡರ್ ತಲುಪಿದ ನಂತರವೇ ಖಚಿತಪಡಿಸಿ.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'ಮೊದಲು ಗ್ರಾಹಕರಿಂದ $amount ನಗದು ಪಡೆಯಿರಿ, ನಂತರ ಖಚಿತಪಡಿಸಿ.';
  }

  @override
  String get deliveryConfirmed =>
      'ಡೆಲಿವರಿ ಆಗಿದೆ. ಧನ್ಯವಾದ, ನೀವು ಮತ್ತೆ ಆನ್‌ಲೈನ್ ಇದ್ದೀರಿ.';

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
  String get releaseOrderButton => 'ಹಿಂತಿರುಗಿಸಿ';

  @override
  String get releaseOrderTitle => 'ಈ ಆರ್ಡರ್ ಹಿಂತಿರುಗಿಸಬೇಕೇ?';

  @override
  String get releaseOrderBody =>
      'ಇದು ಇನ್ನೊಬ್ಬ ರೈಡರ್‌ಗಾಗಿ ಮತ್ತೆ ಆರ್ಡರ್ ಪಟ್ಟಿಗೆ ಹೋಗುತ್ತದೆ. ಆಹಾರ ಪಿಕಪ್ ಮಾಡುವ ಮೊದಲು ಮಾತ್ರ ಇದನ್ನು ಮಾಡಬಹುದು.';

  @override
  String get releaseReasonHint => 'ಕಾರಣ (ಐಚ್ಛಿಕ)';

  @override
  String get orderReleased =>
      'ಹಿಂತಿರುಗಿಸಲಾಗಿದೆ. ಇದು ಮತ್ತೆ ಇತರ ರೈಡರ್‌ಗಳಿಗೆ ಲಭ್ಯವಿದೆ.';

  @override
  String get finishCurrentOrderFirst =>
      'ಮೊದಲು ನಿಮ್ಮ ಈಗಿನ ಆರ್ಡರ್ ಮುಗಿಸಿ ಅಥವಾ ಹಿಂತಿರುಗಿಸಿ.';

  @override
  String get callRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get callCustomer => 'ಗ್ರಾಹಕರಿಗೆ ಕರೆ ಮಾಡಿ';

  @override
  String get openInMaps => 'ದಾರಿ ತೋರಿಸಿ';

  @override
  String get customerNoteLabel => 'ಗ್ರಾಹಕರ ಟಿಪ್ಪಣಿ';

  @override
  String get orderItemsLabel => 'ಬ್ಯಾಗ್‌ನಲ್ಲಿ ಏನಿದೆ';

  @override
  String get orderDetailsTitle => 'ಆರ್ಡರ್ ವಿವರಗಳು';

  @override
  String get historyTitle => 'ಹಿಂದಿನ ಡೆಲಿವರಿಗಳು';

  @override
  String get historyEmptyTitle => 'ಇನ್ನೂ ಡೆಲಿವರಿಗಳಿಲ್ಲ';

  @override
  String get historyEmptyBody =>
      'ನೀವು ಪೂರ್ಣಗೊಳಿಸಿದ ಆರ್ಡರ್‌ಗಳು ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತವೆ.';

  @override
  String get historySearchHint => 'ಆರ್ಡರ್ ಅಥವಾ ರೆಸ್ಟೋರೆಂಟ್ ಹುಡುಕಿ';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'ಇಂದು';

  @override
  String get historyYesterday => 'ನಿನ್ನೆ';

  @override
  String get historyEarlier => 'ಹಿಂದಿನವು';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ಡೆಲಿವರಿಗಳು',
      one: '1 ಡೆಲಿವರಿ',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” ಗೆ ಏನೂ ಸಿಗಲಿಲ್ಲ.';
  }

  @override
  String historyCashTaken(String amount) {
    return 'ಪಡೆದ ನಗದು $amount';
  }

  @override
  String get orderDelivered => 'ಡೆಲಿವರಿ ಆಗಿದೆ';

  @override
  String get orderCancelled => 'ರದ್ದಾಗಿದೆ';

  @override
  String get orderPreparing => 'ತಯಾರಾಗುತ್ತಿದೆ';

  @override
  String get orderReadyForPickup => 'ಪಿಕಪ್‌ಗೆ ಸಿದ್ಧ';

  @override
  String get orderAssigned => 'ನಿಮಗೆ ನೀಡಲಾಗಿದೆ';

  @override
  String get orderPickedUp => 'ಪಿಕಪ್ ಆಗಿದೆ';

  @override
  String get orderOutForDelivery => 'ದಾರಿಯಲ್ಲಿದೆ';

  @override
  String get trackingOn => 'ಸ್ಥಳ ಹಂಚಿಕೆ ಆನ್ ಆಗಿದೆ';

  @override
  String get locationUnavailableMessage =>
      'ನಿಮ್ಮ ಸ್ಥಳ ಸಿಗುತ್ತಿಲ್ಲ. ಸ್ಥಳ ಆನ್ ಮಾಡಿ ಮತ್ತು Nexmile Rider ಗೆ ಅನುಮತಿ ನೀಡಿ.';

  @override
  String get locationPermissionTitle => 'ಸ್ಥಳದ ಅನುಮತಿ ಬೇಕು';

  @override
  String get locationPermissionBody =>
      'ನೀವು ಎಷ್ಟು ಹತ್ತಿರವಿದ್ದೀರಿ ಎಂಬುದರ ಮೇಲೆ ಆರ್ಡರ್‌ಗಳನ್ನು ನೀಡಲಾಗುತ್ತದೆ, ಮತ್ತು ಗ್ರಾಹಕರು ನಕ್ಷೆಯಲ್ಲಿ ನಿಮ್ಮನ್ನು ನೋಡುತ್ತಾರೆ. ಆನ್‌ಲೈನ್ ಆಗಲು ಸ್ಥಳಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ.';

  @override
  String get locationSettingsButton => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get enableLocationButton => 'ಸ್ಥಳಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'ಶಿಫ್ಟ್';

  @override
  String get payoutsTitle => 'ಪಾವತಿಗಳು';

  @override
  String get payoutsEntryValue => 'ವಾರದ ಗಳಿಕೆ';

  @override
  String get payoutDetailsTitle => 'ವಾರದ ಪಾವತಿ';

  @override
  String get payoutsEmptyTitle => 'ಇನ್ನೂ ಪಾವತಿಗಳಿಲ್ಲ';

  @override
  String get payoutsEmptyBody =>
      'ಪ್ರತಿ ವಾರದ ಲೆಕ್ಕ ಮುಗಿದ ನಂತರ ಆ ವಾರದ ನಿಮ್ಮ ಗಳಿಕೆ ಇಲ್ಲಿ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'ಬಾಕಿ ಇದೆ';

  @override
  String get payoutStatusProcessing => 'ಪ್ರಕ್ರಿಯೆಯಲ್ಲಿದೆ';

  @override
  String get payoutStatusPaid => 'ಪಾವತಿಸಲಾಗಿದೆ';

  @override
  String get payoutNotSentNote =>
      'ಈ ವಾರದ ನಿಮ್ಮ ಗಳಿಕೆಯ ಲೆಕ್ಕ ಮುಗಿದಿದೆ. ಹಣವನ್ನು ಇನ್ನೂ ನಿಮ್ಮ ಬ್ಯಾಂಕ್‌ಗೆ ಕಳುಹಿಸಿಲ್ಲ.';

  @override
  String payoutPaidOn(String date) {
    return '$date ರಂದು ನಿಮ್ಮ ಬ್ಯಾಂಕ್‌ಗೆ ಕಳುಹಿಸಲಾಗಿದೆ';
  }

  @override
  String get payoutPaidNote => 'ಈ ವಾರದ ಬ್ಯಾಂಕ್ ವರ್ಗಾವಣೆ ಪೂರ್ಣಗೊಂಡಿದೆ.';

  @override
  String get payoutReferenceLabel => 'ವರ್ಗಾವಣೆ ರೆಫರೆನ್ಸ್';

  @override
  String get payoutNetLabel => 'ನಿಮಗೆ ಸಿಗಬೇಕಾದ ಮೊತ್ತ';

  @override
  String get payoutDeliveryEarnings => 'ಡೆಲಿವರಿ ಗಳಿಕೆ';

  @override
  String get payoutReferralEarnings => 'ರೆಫರಲ್ ಗಳಿಕೆ';

  @override
  String get payoutCarriedIn => 'ಹಿಂದಿನ ವಾರದಿಂದ';

  @override
  String get payoutCarriedInNote =>
      '₹100 ಕ್ಕಿಂತ ಕಡಿಮೆ ಮೊತ್ತವನ್ನು ಪ್ರತ್ಯೇಕವಾಗಿ ವರ್ಗಾಯಿಸುವುದಿಲ್ಲ. ಬದಲಿಗೆ ಅದನ್ನು ಮುಂದಿನ ವಾರಕ್ಕೆ ಸೇರಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get payoutGross => 'ಒಟ್ಟು ಗಳಿಕೆ';

  @override
  String get payoutDeductions => 'ಕಡಿತಗಳು';

  @override
  String get payoutsLatestWeek => 'ಇತ್ತೀಚಿನ ವಾರ';

  @override
  String get payoutsPaidSoFar => 'ಇಲ್ಲಿಯವರೆಗೆ ಪಾವತಿಸಿದ್ದು';

  @override
  String get payoutsNotYetSent => 'ಇನ್ನೂ ಕಳುಹಿಸಿಲ್ಲ';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'ಲೆಕ್ಕ ಮುಗಿದಿದೆ';

  @override
  String get payoutStepSending => 'ಕಳುಹಿಸಲಾಗುತ್ತಿದೆ';

  @override
  String get payoutStepInBank => 'ನಿಮ್ಮ ಬ್ಯಾಂಕ್‌ನಲ್ಲಿ';

  @override
  String get navToRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ';

  @override
  String get navToCustomer => 'ಗ್ರಾಹಕರ ಬಳಿಗೆ';

  @override
  String navHeadTowards(String place) {
    return '$place ಕಡೆಗೆ ಹೋಗಿ';
  }

  @override
  String navThen(String instruction) {
    return 'ನಂತರ: $instruction';
  }

  @override
  String get navArrived => 'ನೀವು ತಲುಪಿದ್ದೀರಿ';

  @override
  String navArrivedAt(String place) {
    return '$place ನಲ್ಲಿ';
  }

  @override
  String get navFindingRoute => 'ಉತ್ತಮ ದಾರಿ ಹುಡುಕುತ್ತಿದ್ದೇವೆ…';

  @override
  String get navNoRoute =>
      'ರಸ್ತೆ ದಾರಿ ಲಭ್ಯವಿಲ್ಲ. ನೇರ ರೇಖೆಯ ದೂರ ತೋರಿಸಲಾಗುತ್ತಿದೆ.';

  @override
  String get navFindingLocation => 'ನಿಮ್ಮ ಸ್ಥಳ ಹುಡುಕುತ್ತಿದ್ದೇವೆ…';

  @override
  String get navLocationOff => 'ದಾರಿ ತೋರಿಸಲು ಸ್ಥಳ ಆನ್ ಮಾಡಿ.';

  @override
  String get navEnd => 'ನ್ಯಾವಿಗೇಶನ್ ನಿಲ್ಲಿಸಿ';

  @override
  String get navRecentre => 'ಮತ್ತೆ ಕೇಂದ್ರೀಕರಿಸಿ';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes ನಿಮಿ';
  }

  @override
  String get navStart => 'ನ್ಯಾವಿಗೇಟ್ ಮಾಡಿ';

  @override
  String get orderReachedRestaurant => 'ರೆಸ್ಟೋರೆಂಟ್‌ನಲ್ಲಿ';

  @override
  String get orderReachedCustomer => 'ಗ್ರಾಹಕರ ಬಳಿ';

  @override
  String get reachedRestaurantButton => 'ನಾನು ರೆಸ್ಟೋರೆಂಟ್ ತಲುಪಿದ್ದೇನೆ';

  @override
  String get reachedCustomerButton => 'ನಾನು ಗ್ರಾಹಕರನ್ನು ತಲುಪಿದ್ದೇನೆ';

  @override
  String get reachedRestaurantDone =>
      'ನೀವು ಬಂದಿರುವುದನ್ನು ಅಡುಗೆಮನೆಗೆ ತಿಳಿಸಲಾಗಿದೆ';

  @override
  String get reachedCustomerDone =>
      'ನೀವು ಹೊರಗೆ ಇರುವುದನ್ನು ಗ್ರಾಹಕರಿಗೆ ತಿಳಿಸಲಾಗಿದೆ';

  @override
  String get offerTitle => 'ಹೊಸ ಆರ್ಡರ್';

  @override
  String get offerYouEarn => 'ನಿಮ್ಮ ಗಳಿಕೆ';

  @override
  String get offerPickup => 'ಪಿಕಪ್';

  @override
  String get offerDrop => 'ಡ್ರಾಪ್';

  @override
  String offerAway(String distance) {
    return '$distance ದೂರ';
  }

  @override
  String offerTrip(String distance) {
    return '$distance ಪ್ರಯಾಣ';
  }

  @override
  String offerItems(String count) {
    return '$count ವಸ್ತುಗಳು';
  }

  @override
  String offerCollectCash(String amount) {
    return 'ಗ್ರಾಹಕರಿಂದ $amount ನಗದು ಪಡೆಯಿರಿ';
  }

  @override
  String get offerPrepaid => 'ಮೊದಲೇ ಪಾವತಿಸಲಾಗಿದೆ · ನಗದು ಇಲ್ಲ';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'ಸುಮಾರು $minutes ನಿಮಿಷಗಳಲ್ಲಿ ಆಹಾರ ಸಿದ್ಧ';
  }

  @override
  String get offerSwipeToAccept => 'ಸ್ವೀಕರಿಸಲು ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get offerAccepting => 'ಸ್ವೀಕರಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get offerReject => 'ತಿರಸ್ಕರಿಸಿ';

  @override
  String get offerRejectTitle => 'ಯಾಕೆ ತಿರಸ್ಕರಿಸುತ್ತಿದ್ದೀರಿ?';

  @override
  String get offerReasonTooFar => 'ತುಂಬಾ ದೂರ';

  @override
  String get offerReasonBusy => 'ಈಗ ಬ್ಯುಸಿ ಇದ್ದೇನೆ';

  @override
  String get offerReasonVehicle => 'ವಾಹನದ ಸಮಸ್ಯೆ';

  @override
  String get offerReasonOther => 'ಬೇರೆ ಕಾರಣ';

  @override
  String get offerTaken => 'ಇನ್ನೊಬ್ಬ ರೈಡರ್ ಆರ್ಡರ್ ತೆಗೆದುಕೊಂಡಿದ್ದಾರೆ';

  @override
  String get offerAutoOffline =>
      '3 ಆರ್ಡರ್‌ಗಳನ್ನು ತಪ್ಪಿಸಿದ್ದರಿಂದ ನಿಮ್ಮನ್ನು ಆಫ್‌ಲೈನ್ ಮಾಡಲಾಗಿದೆ. ಸಿದ್ಧವಾದಾಗ ಆನ್‌ಲೈನ್ ಆಗಿ.';

  @override
  String get mockLocationBlocked =>
      'ಆರ್ಡರ್‌ಗಳನ್ನು ಪಡೆಯಲು ನಕಲಿ ಸ್ಥಳ ತೋರಿಸುವ ಯಾವುದೇ ಆ್ಯಪ್ ಇದ್ದರೆ ಆಫ್ ಮಾಡಿ.';

  @override
  String get dropoffDoorLabel => 'ಫ್ಲ್ಯಾಟ್ / ಮಹಡಿ';

  @override
  String get dropoffStreetLabel => 'ರಸ್ತೆ';

  @override
  String get dropoffLandmarkLabel => 'ಗುರುತು';

  @override
  String get doorPhotoLabel => 'ಬಾಗಿಲಿನ ಫೋಟೋ';

  @override
  String get doorPhotoHint => 'ದೊಡ್ಡದಾಗಿ ನೋಡಲು ಒತ್ತಿ';

  @override
  String get doorPhotoUnavailable => 'ಫೋಟೋ ಸದ್ಯಕ್ಕೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String permStepCount(int step, int total) {
    return '$total ರಲ್ಲಿ $step';
  }

  @override
  String get permNotNow => 'ಈಗ ಬೇಡ';

  @override
  String get permLocationTitle => 'ಸ್ಥಳ ಆನ್ ಮಾಡಿ';

  @override
  String get permLocationBody =>
      'ರೆಸ್ಟೋರೆಂಟ್‌ಗೆ ಅತಿ ಹತ್ತಿರವಿರುವ ರೈಡರ್‌ಗೆ ಆರ್ಡರ್ ಹೋಗುತ್ತದೆ, ಮತ್ತು ಗ್ರಾಹಕರು ತಮ್ಮ ಆಹಾರವನ್ನು ನಕ್ಷೆಯಲ್ಲಿ ನೋಡುತ್ತಾರೆ.';

  @override
  String get permLocationNearTitle => 'ನಿಮ್ಮ ಹತ್ತಿರದ ಆರ್ಡರ್‌ಗಳು';

  @override
  String get permLocationNearBody =>
      'ಹತ್ತಿರದ ರೆಸ್ಟೋರೆಂಟ್‌ಗಳ ಆರ್ಡರ್‌ಗಳನ್ನು ನಿಮಗೆ ನೀಡುತ್ತೇವೆ, ಹಾಗಾಗಿ ಕಡಿಮೆ ಓಡಾಟ, ಹೆಚ್ಚು ಗಳಿಕೆ.';

  @override
  String get permLocationTrackTitle => 'ಲೈವ್ ಟ್ರ್ಯಾಕಿಂಗ್';

  @override
  String get permLocationTrackBody =>
      'ಗ್ರಾಹಕರು ನಿಮ್ಮನ್ನು ನಕ್ಷೆಯಲ್ಲಿ ನೋಡುತ್ತಾರೆ, ಹಾಗಾಗಿ ನಿಮಗೆ ಕಡಿಮೆ ಕರೆ ಮಾಡುತ್ತಾರೆ.';

  @override
  String get permLocationOnlineTitle => 'ನೀವು ಆನ್‌ಲೈನ್ ಇರುವಾಗ ಮಾತ್ರ';

  @override
  String get permLocationOnlineBody =>
      'ಆಫ್‌ಲೈನ್ ಆದರೆ ಅದು ನಿಲ್ಲುತ್ತದೆ. ಬಳಕೆಯಲ್ಲಿರುವಾಗಲೆಲ್ಲಾ ಒಂದು ನೋಟಿಫಿಕೇಶನ್ ಕಾಣಿಸುತ್ತದೆ.';

  @override
  String get permLocationAllow => 'ಸ್ಥಳಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';

  @override
  String get permNotifyTitle => 'ಯಾವುದೇ ಆರ್ಡರ್ ತಪ್ಪಿಸಿಕೊಳ್ಳಬೇಡಿ';

  @override
  String get permNotifyBody =>
      'ನಿಮ್ಮ ಸ್ಕ್ರೀನ್ ಲಾಕ್ ಆಗಿದ್ದರೂ ಹೊಸ ಆರ್ಡರ್‌ಗಳು ಫೋನ್ ಕರೆಯಂತೆ ರಿಂಗ್ ಆಗುತ್ತವೆ.';

  @override
  String get permNotifyRingTitle => 'ರಿಂಗ್ ಆಗುವ ಆರ್ಡರ್ ಅಲರ್ಟ್‌ಗಳು';

  @override
  String get permNotifyRingBody => 'ಅಲರ್ಟ್‌ನಿಂದಲೇ ಸ್ವೀಕರಿಸಿ ಅಥವಾ ತಿರಸ್ಕರಿಸಿ.';

  @override
  String get permNotifyUpdatesTitle => 'ಪಾವತಿಗಳು ಮತ್ತು ಅನುಮೋದನೆಗಳು';

  @override
  String get permNotifyUpdatesBody =>
      'ನಿಮ್ಮ ದಾಖಲೆಗಳು ಅನುಮೋದನೆಯಾದಾಗ ಮತ್ತು ಹಣ ಕಳುಹಿಸಿದಾಗ ತಿಳಿಯಿರಿ.';

  @override
  String get permNotifyControlTitle => 'ನಿಯಂತ್ರಣ ನಿಮ್ಮ ಕೈಯಲ್ಲಿ';

  @override
  String get permNotifyControlBody =>
      'ನಿಮ್ಮ ಫೋನ್‌ನ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get permNotifyAllow => 'ನೋಟಿಫಿಕೇಶನ್ ಆನ್ ಮಾಡಿ';

  @override
  String get permBatteryTitle => 'ಆರ್ಡರ್‌ಗಳು ಬರುತ್ತಲೇ ಇರಲಿ';

  @override
  String get permBatteryBody =>
      'ಬ್ಯಾಟರಿ ಉಳಿಸಲು ಫೋನ್‌ಗಳು ಹಿನ್ನೆಲೆಯಲ್ಲಿರುವ ಆ್ಯಪ್‌ಗಳನ್ನು ಮುಚ್ಚುತ್ತವೆ. ನೀವು ಆನ್‌ಲೈನ್ ಇರುವಾಗ Nexmile Rider ಚಾಲನೆಯಲ್ಲಿರಲು ಬಿಡಿ.';

  @override
  String get permBatteryOrdersTitle => 'ಯಾವ ಆರ್ಡರ್ ಕೂಡ ತಪ್ಪುವುದಿಲ್ಲ';

  @override
  String get permBatteryOrdersBody =>
      'ಆ್ಯಪ್ ಮುಚ್ಚಿದ್ದರೂ, ಫೋನ್ ಜೇಬಿನಲ್ಲಿದ್ದರೂ ಆರ್ಡರ್‌ಗಳು ನಿಮಗೆ ತಲುಪುತ್ತವೆ.';

  @override
  String get permBatteryLiveTitle => 'ಟ್ರ್ಯಾಕಿಂಗ್ ಲೈವ್ ಆಗಿರುತ್ತದೆ';

  @override
  String get permBatteryLiveBody =>
      'ನೀವು ಡೆಲಿವರಿ ಮಾಡುವವರೆಗೂ ಗ್ರಾಹಕರು ನಿಮ್ಮನ್ನು ನಕ್ಷೆಯಲ್ಲಿ ನೋಡುತ್ತಿರುತ್ತಾರೆ.';

  @override
  String get permBatteryLightTitle => 'ಬ್ಯಾಟರಿ ಕಡಿಮೆ ಬಳಕೆ';

  @override
  String get permBatteryLightBody =>
      'ನೀವು ಆನ್‌ಲೈನ್ ಇರುವಾಗ ಮಾತ್ರ ಇದು ಹೆಚ್ಚು ಕೆಲಸ ಮಾಡುತ್ತದೆ.';

  @override
  String get permBatteryAllow => 'ಹಿನ್ನೆಲೆ ಬಳಕೆಗೆ ಅನುಮತಿ ನೀಡಿ';

  @override
  String get permFullScreenTitle => 'ಲಾಕ್ ಸ್ಕ್ರೀನ್‌ನಲ್ಲಿ ಆರ್ಡರ್‌ಗಳು';

  @override
  String get permFullScreenBody =>
      'ಹೊಸ ಆರ್ಡರ್‌ಗಳು ಒಳಬರುವ ಕರೆಯಂತೆ ಲಾಕ್ ಸ್ಕ್ರೀನ್ ಮೇಲೆ ಕಾಣಿಸಲಿ, ಆಗ ಒಂದೇ ಟ್ಯಾಪ್‌ನಲ್ಲಿ ಸ್ವೀಕರಿಸಬಹುದು.';

  @override
  String get permFullScreenCallTitle => 'ಕರೆಯಂತೆ ಉತ್ತರಿಸಿ';

  @override
  String get permFullScreenCallBody =>
      'ಫೋನ್ ಅನ್‌ಲಾಕ್ ಮಾಡದೆ ಆರ್ಡರ್ ನೋಡಿ ಸ್ವೀಕರಿಸಿ.';

  @override
  String get permFullScreenTimeTitle => 'ಸಮಯಕ್ಕೆ ಉತ್ತರಿಸಿ';

  @override
  String get permFullScreenTimeBody =>
      'ನೀವು ಉತ್ತರಿಸದ ಆರ್ಡರ್ ಇನ್ನೊಬ್ಬ ರೈಡರ್‌ಗೆ ಹೋಗುತ್ತದೆ.';

  @override
  String get permFullScreenOnlyTitle => 'ಹೊಸ ಆರ್ಡರ್‌ಗಳಿಗೆ ಮಾತ್ರ';

  @override
  String get permFullScreenOnlyBody =>
      'ಬೇರೆ ಯಾವುದೂ ನಿಮ್ಮ ಲಾಕ್ ಸ್ಕ್ರೀನ್ ಮೇಲೆ ಕಾಣಿಸುವುದಿಲ್ಲ.';

  @override
  String get setupTitle => 'ಫೋನ್ ಸೆಟಪ್';

  @override
  String get setupIntro =>
      'ಆ್ಯಪ್ ಮುಚ್ಚಿದ್ದರೂ ಅಥವಾ ಫೋನ್ ಲಾಕ್ ಆಗಿದ್ದರೂ ಹೊಸ ಆರ್ಡರ್‌ಗಳು ರಿಂಗ್ ಆಗಲು ಇವುಗಳನ್ನು ಮುಗಿಸಿ.';

  @override
  String get setupNotifications => 'ನೋಟಿಫಿಕೇಶನ್‌ಗಳು';

  @override
  String get setupNotificationsBody =>
      'ಹೊಸ ಆರ್ಡರ್‌ಗಳು ರಿಂಗ್ ಆಗಲು ಮತ್ತು ಕಾಣಿಸಲು.';

  @override
  String get setupFullScreen => 'ಫುಲ್-ಸ್ಕ್ರೀನ್ ಆರ್ಡರ್ ಅಲರ್ಟ್‌ಗಳು';

  @override
  String get setupFullScreenBody =>
      'ಹೊಸ ಆರ್ಡರ್ ಅನ್ನು ಕರೆಯಂತೆ ನಿಮ್ಮ ಲಾಕ್ ಸ್ಕ್ರೀನ್ ಮೇಲೆ ತೋರಿಸುತ್ತದೆ.';

  @override
  String get setupBattery => 'ಬ್ಯಾಟರಿ: ಆಪ್ಟಿಮೈಸ್ ಮಾಡಬೇಡಿ';

  @override
  String get setupBatteryBody =>
      'ನೀವು ಆನ್‌ಲೈನ್ ಇರುವಾಗ ಫೋನ್ ಆ್ಯಪ್ ಅನ್ನು ಮುಚ್ಚದಂತೆ ತಡೆಯುತ್ತದೆ.';

  @override
  String get setupAutostart => 'ಆಟೋಸ್ಟಾರ್ಟ್';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ಫೋನ್‌ಗಳಲ್ಲಿ Nexmile Rider ಗೆ ಆಟೋಸ್ಟಾರ್ಟ್ ಕೂಡ ಆನ್ ಇರಬೇಕು. ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ, ಆಟೋಸ್ಟಾರ್ಟ್ (Autostart) ಹುಡುಕಿ, ಅದನ್ನು ಆನ್ ಮಾಡಿ.';
  }

  @override
  String get setupLocation => 'ಸ್ಥಳ';

  @override
  String get setupLocationBody => 'ನಿಮಗೆ ಹತ್ತಿರದ ಆರ್ಡರ್‌ಗಳನ್ನು ಕಳುಹಿಸಲು ಬೇಕು.';

  @override
  String get setupAllow => 'ಅನುಮತಿಸಿ';

  @override
  String get setupOpenSettings => 'ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ತೆರೆಯಿರಿ';

  @override
  String get setupMarkDone => 'ನಾನು ಇದನ್ನು ಮಾಡಿದ್ದೇನೆ';

  @override
  String get setupDoneStep => 'ಮುಗಿದಿದೆ';

  @override
  String get setupBannerTitle => 'ಫೋನ್ ಸೆಟಪ್ ಮುಗಿಸಿ';

  @override
  String setupBannerBody(String count) {
    return 'ಆರ್ಡರ್ ಅಲರ್ಟ್‌ಗಳು ತಪ್ಪದಿರಲು ಇನ್ನೂ $count ಬಾಕಿ ಇದೆ';
  }

  @override
  String get offerEstimatedEarnings => 'ಅಂದಾಜು ಗಳಿಕೆ';

  @override
  String offerPickupLine(String name) {
    return 'ಪಿಕಪ್: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ಡ್ರಾಪ್: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'ನಿಮ್ಮಿಂದ ಸುಮಾರು $distance ದೂರ';
  }

  @override
  String get exitTitle => 'Nexmile Rider ನಿಂದ ಹೊರಬರಬೇಕೇ?';

  @override
  String get exitBody => 'ನೀವು ಖಚಿತವಾಗಿ ಆ್ಯಪ್‌ನಿಂದ ಹೊರಬರಬೇಕೇ?';

  @override
  String get exitConfirm => 'ಹೊರಬನ್ನಿ';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ಡೆಲಿವರಿ ಪಾರ್ಟನರ್ ಆಗಿ';

  @override
  String get onboardingWelcomeSubtitle =>
      'ನಿಮ್ಮ ಪ್ರದೇಶದಲ್ಲೇ ಡೆಲಿವರಿ ಮಾಡಿ, ನಿಮಗೆ ಬೇಕಾದ ಸಮಯದಲ್ಲಿ ಕೆಲಸ ಮಾಡಿ, ಪ್ರತಿ ವಾರ ಹಣ ಪಡೆಯಿರಿ.';

  @override
  String get onboardingWelcomeNeed => 'ಇವುಗಳನ್ನು ಸಿದ್ಧವಾಗಿಡಿ';

  @override
  String get onboardingNeedAadhaar => 'ಆಧಾರ್ ಕಾರ್ಡ್';

  @override
  String get onboardingNeedPan => 'PAN ಕಾರ್ಡ್';

  @override
  String get onboardingNeedLicence => 'ಡ್ರೈವಿಂಗ್ ಲೈಸೆನ್ಸ್ ಮತ್ತು ವಾಹನದ RC';

  @override
  String get onboardingNeedInsurance => 'ವಾಹನ ಇನ್ಶೂರೆನ್ಸ್';

  @override
  String get onboardingNeedBank => 'ಬ್ಯಾಂಕ್ ಖಾತೆಯ ವಿವರಗಳು';

  @override
  String get onboardingNeedNote =>
      'ಸೈಕಲ್‌ನಲ್ಲಿ ಅಥವಾ ಕಾಲ್ನಡಿಗೆಯಲ್ಲಿ ಡೆಲಿವರಿ ಮಾಡುತ್ತೀರಾ? ನಿಮಗೆ ಆಧಾರ್, PAN ಮತ್ತು ಬ್ಯಾಂಕ್ ಖಾತೆ ಮಾತ್ರ ಸಾಕು.';

  @override
  String get onboardingWelcomeTime => 'ಸುಮಾರು 10 ನಿಮಿಷ ಬೇಕಾಗುತ್ತದೆ';

  @override
  String get onboardingGetStarted => 'ಶುರುಮಾಡಿ';

  @override
  String get onboardingSavedNote =>
      'ಪ್ರತಿ ಹಂತದ ನಂತರ ಸುರಕ್ಷಿತವಾಗಿ ಉಳಿಸಲಾಗುತ್ತದೆ';

  @override
  String get docsTip =>
      'ಒಳ್ಳೆಯ ಬೆಳಕಿನಲ್ಲಿ ತೆಗೆದ ಸ್ಪಷ್ಟ ಫೋಟೋಗಳು ಬೇಗ ಅನುಮೋದನೆಯಾಗುತ್ತವೆ.';

  @override
  String get docsAllDone =>
      'ಎಲ್ಲಾ ಕಡ್ಡಾಯ ದಾಖಲೆಗಳು ಸೇರಿವೆ. ಪರಿಶೀಲಿಸಲು ಮುಂದುವರಿಸಿ.';

  @override
  String get docGroupIdentity => 'ಗುರುತಿನ ಪುರಾವೆ';

  @override
  String get docGroupVehicle => 'ಲೈಸೆನ್ಸ್ ಮತ್ತು ವಾಹನದ ದಾಖಲೆಗಳು';

  @override
  String get docGroupMore => 'ಇತರ ದಾಖಲೆಗಳು';

  @override
  String get docTapToAdd => 'ಸೇರಿಸಲು ಒತ್ತಿ';

  @override
  String get docUploading => 'ಅಪ್‌ಲೋಡ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get docView => 'ನೋಡಿ';

  @override
  String get docSheetSubtitle => 'ಮೊದಲ ಬಾರಿಯೇ ಅನುಮೋದನೆ ಪಡೆಯುವುದು ಹೇಗೆ';

  @override
  String get docTipCorners => 'ನಾಲ್ಕೂ ಮೂಲೆಗಳು ಫೋಟೋದೊಳಗೆ ಇರಲಿ';

  @override
  String get docTipGlare => 'ಸ್ಪಷ್ಟ ಅಕ್ಷರಗಳು, ಹೊಳಪು ಅಥವಾ ನೆರಳು ಇಲ್ಲದೆ';

  @override
  String get docTipOriginal => 'ಮೂಲ ದಾಖಲೆ, ಜೆರಾಕ್ಸ್ ಪ್ರತಿ ಅಲ್ಲ';

  @override
  String get docTipFace => 'ನಿಮ್ಮ ಮುಖ ಸ್ಪಷ್ಟವಾಗಿ ಕಾಣಲಿ, ನೇರವಾಗಿ ನೋಡಿ';

  @override
  String get docTipBackground => 'ಸರಳ ಹಿನ್ನೆಲೆ ಮತ್ತು ಒಳ್ಳೆಯ ಬೆಳಕು';

  @override
  String get docTipNoCap => 'ಕ್ಯಾಪ್, ಮಾಸ್ಕ್ ಅಥವಾ ಸನ್‌ಗ್ಲಾಸ್ ಬೇಡ';

  @override
  String get docTipFullPage => 'ಪೂರ್ಣ ಪುಟ, ಪ್ರತಿ ಸಾಲು ಓದುವಂತೆ';

  @override
  String get docSourceCamera => 'ಕ್ಯಾಮೆರಾ';

  @override
  String get docSourceGallery => 'ಗ್ಯಾಲರಿ';

  @override
  String get docSourceFile => 'PDF ಅಥವಾ ಫೈಲ್';

  @override
  String get reviewSectionDetails => 'ನಿಮ್ಮ ವಿವರಗಳು';

  @override
  String get reviewSectionDocuments => 'ದಾಖಲೆಗಳು';

  @override
  String get reviewSectionBank => 'ಬ್ಯಾಂಕ್ ಖಾತೆ';

  @override
  String get reviewBankHidden =>
      'ಸೇರಿಸಲಾಗಿದೆ · ನಿಮ್ಮ ಸುರಕ್ಷತೆಗಾಗಿ ಮರೆಮಾಡಲಾಗಿದೆ';

  @override
  String get reviewEdit => 'ಸಂಪಾದಿಸಿ';

  @override
  String get reviewNextTitle => 'ಮುಂದೆ ಏನಾಗುತ್ತದೆ';

  @override
  String get reviewNext1 => 'ನೀವು ನಿಮ್ಮ ಅರ್ಜಿ ಸಲ್ಲಿಸುತ್ತೀರಿ';

  @override
  String get reviewNext2 =>
      'ನಮ್ಮ ತಂಡ ನಿಮ್ಮ ವಿವರಗಳು ಮತ್ತು ದಾಖಲೆಗಳನ್ನು ಪರಿಶೀಲಿಸುತ್ತದೆ';

  @override
  String get reviewNext3 =>
      'ನಿಮಗೆ ತಿಳಿಸಲಾಗುತ್ತದೆ, ಆನ್‌ಲೈನ್ ಆಗಿ ಗಳಿಸಲು ಶುರುಮಾಡಿ';

  @override
  String get kycStepSubmitted => 'ಅರ್ಜಿ ಸಲ್ಲಿಸಲಾಗಿದೆ';

  @override
  String get kycStepVerifying => 'ನಿಮ್ಮ ದಾಖಲೆಗಳ ಪರಿಶೀಲನೆ ನಡೆಯುತ್ತಿದೆ';

  @override
  String get kycStepApproved => 'ಅನುಮೋದಿಸಲಾಗಿದೆ — ಆನ್‌ಲೈನ್ ಆಗಿ ಗಳಿಸಲು ಶುರುಮಾಡಿ';
}
