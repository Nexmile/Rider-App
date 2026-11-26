// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Assamese (`as`).
class AppLocalizationsAs extends AppLocalizations {
  AppLocalizationsAs([String locale = 'as']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'দ্ৰুত ডেলিভাৰী। সতেজ হাঁহি।';

  @override
  String get chooseLanguageTitle => 'আপোনাৰ ভাষা বাছনি কৰক';

  @override
  String get chooseLanguageSubtitle =>
      'আপুনি সহজ অনুভৱ কৰা ভাষা বাছনি কৰক। আপুনি ইয়াক যিকোনো সময়তে ছেটিংছত সলনি কৰিব পাৰে।';

  @override
  String get searchLanguageHint => 'ভাষা বিচাৰক';

  @override
  String get noLanguageFound => 'কোনো ভাষা পোৱা নগ\'ল';

  @override
  String languagesAvailable(int count) {
    return '$countটা ভাষা উপলব্ধ';
  }

  @override
  String get continueLabel => 'আগবাঢ়ক';

  @override
  String get selectedLabel => 'বাছনি কৰা হৈছে';

  @override
  String get defaultLabel => 'ডিফল্ট';

  @override
  String get homeTitle => 'Nexmile লৈ স্বাগতম';

  @override
  String get homeSubtitle =>
      'সতেজ মুদিসামগ্ৰী, গৰম খাদ্য আৰু দৈনন্দিন প্ৰয়োজনীয় সামগ্ৰী আপোনাৰ ওচৰৰ দোকানৰ পৰা।';

  @override
  String get changeLanguage => 'ভাষা সলনি কৰক';

  @override
  String get languageUpdated => 'ভাষা সলনি কৰা হ\'ল';

  @override
  String get appLanguageLabel => 'এপৰ ভাষা';

  @override
  String greetingNamed(String name) {
    return 'নমস্কাৰ, $name';
  }

  @override
  String get loginTitle => 'Nexmile ত ছাইন ইন কৰক';

  @override
  String get loginSubtitle =>
      'আপোনাৰ ইমেইল বা মোবাইল নম্বৰ দিয়ক, আমি সত্যাপন ক\'ড পঠিয়াম।';

  @override
  String get emailOrPhoneLabel => 'ইমেইল বা মোবাইল নম্বৰ';

  @override
  String get emailOrPhoneHint => 'name@example.com বা 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'শুদ্ধ ইমেইল ঠিকনা বা 10 সংখ্যাৰ মোবাইল নম্বৰ দিয়ক';

  @override
  String get loginHeadline =>
      'Nexmile ৰ সৈতে ডেলিভাৰী কৰক। নিজৰ সময়ত উপাৰ্জন কৰক।';

  @override
  String get loginOrSignUp => 'লগ ইন বা ছাইন আপ কৰক';

  @override
  String get loginEmailHint => 'আপোনাৰ ইমেইল ঠিকনা দিয়ক';

  @override
  String get invalidEmail => 'শুদ্ধ ইমেইল ঠিকনা দিয়ক';

  @override
  String get loginHeroBadge => 'ডেলিভাৰী পাৰ্টনাৰ';

  @override
  String get sendCode => 'ক\'ড পঠিয়াওক';

  @override
  String get agreeToTermsOnContinue =>
      'আগবাঢ়িলে আপুনি আমাৰ সেৱাৰ চৰ্তাৱলী আৰু গোপনীয়তা নীতিত সন্মত হয়।';

  @override
  String get otpTitle => 'এইজন আপুনিয়েই বুলি সত্যাপন কৰক';

  @override
  String otpSubtitle(String target) {
    return '$target লৈ পঠোৱা 6 সংখ্যাৰ ক\'ড দিয়ক';
  }

  @override
  String get otpHelpTitle => 'ক\'ড পোৱা নাই নেকি?';

  @override
  String get otpHelpCheck =>
      'ওপৰৰ নম্বৰ বা ইমেইলটো শুদ্ধ নে চাওক। সলনি কৰিবলৈ উভতি যাওক।';

  @override
  String get otpHelpWait =>
      'ক\'ড আহি পাবলৈ এক মিনিটমান লাগিব পাৰে। টাইমাৰ শেষ হ\'লে আপুনি নতুন ক\'ড বিচাৰিব পাৰে।';

  @override
  String get otpHelpSpam => 'ইমেইলৰ ক্ষেত্ৰত স্পাম ফোল্ডাৰতো চাওক।';

  @override
  String get verifyCode => 'সত্যাপন কৰক';

  @override
  String get resendCode => 'ক\'ড পুনৰ পঠিয়াওক';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds ছেকেণ্ডত পুনৰ পঠিয়াওক';
  }

  @override
  String get codeResent => 'নতুন ক\'ড পঠোৱা হৈছে';

  @override
  String get incorrectCode =>
      'এই ক\'ডটো ভুল বা ইয়াৰ ম্যাদ উকলিছে। নতুন ক\'ড বিচাৰক।';

  @override
  String get enterFullCode => 'সম্পূৰ্ণ 6টা সংখ্যা দিয়ক';

  @override
  String get accountSuspended =>
      'এই একাউণ্টটো নিলম্বিত কৰা হৈছে। অনুগ্ৰহ কৰি সহায়ৰ সৈতে যোগাযোগ কৰক।';

  @override
  String get tooManyAttempts =>
      'বহুতবাৰ চেষ্টা কৰা হ\'ল। অনুগ্ৰহ কৰি কিছু সময়ৰ পিছত পুনৰ চেষ্টা কৰক।';

  @override
  String get sessionExpired =>
      'আপোনাৰ ছেছনৰ ম্যাদ উকলিছে। অনুগ্ৰহ কৰি পুনৰ ছাইন ইন কৰক।';

  @override
  String get networkError =>
      'ইণ্টাৰনেট সংযোগ নাই। সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get developmentCode => 'ডেভেলপমেণ্ট ক\'ড';

  @override
  String get signOut => 'ছাইন আউট';

  @override
  String get signedOut => 'আপুনি ছাইন আউট হৈছে';

  @override
  String get somethingWentWrong =>
      'কিবা ভুল হ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get profileTitle => 'প্ৰফাইল';

  @override
  String get profileSectionDetails => 'আপোনাৰ বিৱৰণ';

  @override
  String get profileSectionWork => 'কাম';

  @override
  String get profileSectionApp => 'এপ ছেটিংছ';

  @override
  String get viewProfile => 'প্ৰফাইল চাওক';

  @override
  String get nameLabel => 'নাম';

  @override
  String get emailLabel => 'ইমেইল';

  @override
  String get mobileLabel => 'মোবাইল নম্বৰ';

  @override
  String get accountStatusLabel => 'একাউণ্টৰ অৱস্থা';

  @override
  String get statusActive => 'সক্ৰিয়';

  @override
  String get statusPending => 'বিচাৰাধীন';

  @override
  String get statusSuspended => 'নিলম্বিত';

  @override
  String get verifiedLabel => 'সত্যাপিত';

  @override
  String get notProvided => 'যোগ কৰা হোৱা নাই';

  @override
  String get retry => 'পুনৰ চেষ্টা কৰক';

  @override
  String get loginRiderNote => 'এই এপটো Nexmile ডেলিভাৰী পাৰ্টনাৰৰ বাবে।';

  @override
  String get checkingYourAccount => 'আপোনাৰ একাউণ্ট পৰীক্ষা কৰি থকা হৈছে';

  @override
  String get couldNotLoadAccount =>
      'আপোনাৰ একাউণ্ট লোড কৰিব পৰা নগ\'ল। সংযোগ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get notARiderAccountTitle => 'এইটো ডেলিভাৰী পাৰ্টনাৰ একাউণ্ট নহয়';

  @override
  String get notARiderAccount =>
      'এই ইমেইল বা মোবাইল নম্বৰ আন এটা Nexmile একাউণ্টত ইতিমধ্যে পঞ্জীয়ন কৰা আছে। ডেলিভাৰী পাৰ্টনাৰ হিচাপে যোগদান কৰিবলৈ ছাইন আউট কৰি আন এটা ব্যৱহাৰ কৰক।';

  @override
  String notARiderAccountFor(String role) {
    return 'এই ইমেইল বা মোবাইল নম্বৰ ইতিমধ্যে Nexmile $role হিচাপে পঞ্জীয়ন কৰা আছে। ডেলিভাৰী পাৰ্টনাৰ হিচাপে যোগদান কৰিবলৈ ছাইন আউট কৰি আন এটা ব্যৱহাৰ কৰক।';
  }

  @override
  String get roleCustomer => 'গ্ৰাহক';

  @override
  String get roleMerchant => 'ব্যৱসায়ী';

  @override
  String get roleAdmin => 'প্ৰশাসক';

  @override
  String get useAnotherAccount => 'আন একাউণ্ট ব্যৱহাৰ কৰক';

  @override
  String get onboardingTitle => 'Nexmile পাৰ্টনাৰ হওক';

  @override
  String get onboardingSubtitle =>
      'কিছু তথ্য আৰু আপোনাৰ নথিপত্ৰ দিয়ক, তাৰ পিছত আমাৰ দলে আপোনাক সত্যাপন কৰিব। সাধাৰণতে দুটা কৰ্মদিৱসলৈকে সময় লাগে।';

  @override
  String stepOfSteps(int current, int total) {
    return '$totalটাৰ ভিতৰত $current নং পদক্ষেপ';
  }

  @override
  String get stepIdentityTitle => 'আপোনাৰ বিষয়ে';

  @override
  String get stepIdentitySubtitle =>
      'আধাৰ কাৰ্ডত যিদৰে আছে, ঠিক সেইদৰে আপোনাৰ নাম লিখক।';

  @override
  String get stepVehicleTitle => 'আপোনাৰ বাহন';

  @override
  String get stepVehicleSubtitle =>
      'আপুনি কি বাহন চলায় আৰু ইয়াৰ নম্বৰ প্লেটত কি নম্বৰ আছে, আমাক জনাওক।';

  @override
  String get stepIdentityNumbersTitle => 'পৰিচয় নম্বৰ';

  @override
  String get stepIdentityNumbersSubtitle =>
      'এইবোৰ পিছত আপল\'ড কৰা নথিপত্ৰৰ সৈতে মিলিব লাগিব।';

  @override
  String get stepLicenceTitle => 'লাইচেন্স আৰু বীমা';

  @override
  String get stepLicenceSubtitle =>
      'আপুনি ডেলিভাৰী আৰম্ভ কৰা দিনত দুয়োটা বৈধ হ\'ব লাগিব।';

  @override
  String get stepBankTitle => 'আপুনি ক\'ত টকা পাব';

  @override
  String get stepBankSubtitle =>
      'আপোনাৰ উপাৰ্জন এই একাউণ্টলৈ পঠোৱা হ\'ব। ভালদৰে পৰীক্ষা কৰক।';

  @override
  String get stepDocumentsTitle => 'আপোনাৰ নথিপত্ৰ';

  @override
  String get stepDocumentsSubtitle =>
      'প্ৰতিখনৰ ফটো ভাল পোহৰত তোলক। JPG, PNG বা PDF, প্ৰতিখন সৰ্বাধিক 5 MB।';

  @override
  String get stepReviewTitle => 'পৰীক্ষা কৰি জমা দিয়ক';

  @override
  String get stepReviewSubtitle =>
      'জমা দিয়াৰ পিছত আমাৰ দলে পৰীক্ষা নকৰালৈকে আপোনাৰ তথ্য লক হৈ থাকিব।';

  @override
  String get saveAndContinue => 'সাঁচি থৈ আগবাঢ়ক';

  @override
  String get backLabel => 'উভতি যাওক';

  @override
  String get fullNameLabel => 'সম্পূৰ্ণ নাম';

  @override
  String get fullNameHint => 'আধাৰত যিদৰে ছপা আছে';

  @override
  String get dateOfBirthLabel => 'জন্মৰ তাৰিখ';

  @override
  String get selectDate => 'তাৰিখ বাছনি কৰক';

  @override
  String get vehicleTypeLabel => 'বাহনৰ প্ৰকাৰ';

  @override
  String get vehicleMotorcycle => 'মটৰচাইকেল';

  @override
  String get vehicleScooter => 'স্কুটাৰ';

  @override
  String get vehicleEv => 'ইলেক্ট্ৰিক বাহন';

  @override
  String get vehicleBicycle => 'চাইকেল';

  @override
  String get vehicleWalk => 'খোজকাঢ়ি';

  @override
  String get vehicleNoPapersNote =>
      'বাহনৰ নম্বৰ বা RC নালাগে। আপোনাৰ পৰা কেৱল আধাৰ আৰু PAN বিচৰা হ\'ব।';

  @override
  String get vehicleNumberLabel => 'বাহনৰ নম্বৰ';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC নম্বৰ';

  @override
  String get aadhaarLabel => 'আধাৰ নম্বৰ';

  @override
  String get aadhaarHint => '12টা সংখ্যা';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ড্ৰাইভিং লাইচেন্স নম্বৰ';

  @override
  String get drivingLicenceExpiryLabel => 'লাইচেন্সৰ ম্যাদ উকলাৰ তাৰিখ';

  @override
  String get insuranceNumberLabel => 'বীমা পলিচি নম্বৰ';

  @override
  String get insuranceExpiryLabel => 'বীমাৰ ম্যাদ উকলাৰ তাৰিখ';

  @override
  String get bankAccountNameLabel => 'একাউণ্টধাৰীৰ নাম';

  @override
  String get bankAccountNumberLabel => 'একাউণ্ট নম্বৰ';

  @override
  String get bankIfscLabel => 'IFSC ক\'ড';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$totalখনৰ $doneখন আপল\'ড হ\'ল';
  }

  @override
  String get uploadDocument => 'আপল\'ড কৰক';

  @override
  String get replaceDocument => 'সলনি কৰক';

  @override
  String get removeDocument => 'আঁতৰাওক';

  @override
  String get takePhoto => 'ফটো তোলক';

  @override
  String get chooseFromGallery => 'গেলাৰীৰ পৰা বাছনি কৰক';

  @override
  String get chooseFile => 'ফাইল বাছনি কৰক';

  @override
  String get uploadingLabel => 'আপল\'ড হৈ আছে';

  @override
  String get documentRejected => 'নাকচ কৰা হ\'ল';

  @override
  String get documentUploaded => 'আপল\'ড হ\'ল';

  @override
  String get documentApproved => 'অনুমোদিত';

  @override
  String get documentRequired => 'আৱশ্যক';

  @override
  String get documentOptional => 'ঐচ্ছিক';

  @override
  String get fileTooLarge =>
      'ফাইলটো 5 MB তকৈ ডাঙৰ। স্কেনৰ সলনি এখন ফটো চেষ্টা কৰক।';

  @override
  String get unsupportedFileType => 'JPG, PNG বা PDF বাছনি কৰক।';

  @override
  String get pickerUnavailable =>
      'সেইটো খুলিব পৰা নগ\'ল। এপৰ কেমেৰা আৰু ফটোৰ অনুমতি পৰীক্ষা কৰক।';

  @override
  String get uploadFailed => 'আপল\'ড সফল নহ\'ল। অনুগ্ৰহ কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get submitForVerification => 'সত্যাপনৰ বাবে জমা দিয়ক';

  @override
  String get submitConfirmTitle => 'সত্যাপনৰ বাবে জমা দিব নেকি?';

  @override
  String get submitConfirmBody =>
      'আমাৰ দলে পৰীক্ষা কৰি থকাৰ সময়ত আপোনাৰ তথ্য আৰু নথিপত্ৰ লক হৈ থাকিব। সিদ্ধান্ত নোলোৱালৈকে আপুনি সেইবোৰ সলনি কৰিব নোৱাৰিব।';

  @override
  String get cancelLabel => 'বাতিল কৰক';

  @override
  String get completeEverythingBeforeSubmitting =>
      'জমা দিয়াৰ আগতে সকলো পদক্ষেপ সম্পূৰ্ণ কৰক আৰু সকলো নথিপত্ৰ আপল\'ড কৰক।';

  @override
  String get checkTheHighlightedFields =>
      'চিহ্নিত ঘৰবোৰ পৰীক্ষা কৰি পুনৰ চেষ্টা কৰক।';

  @override
  String get underReviewTitle => 'আমি আপোনাৰ নথিপত্ৰ সত্যাপন কৰি আছোঁ';

  @override
  String get underReviewBody =>
      'আমাৰ দলে সাধাৰণতে দুটা কৰ্মদিৱসৰ ভিতৰত পৰীক্ষা কৰে। অনুমোদন পোৱাৰ লগে লগে আমি আপোনাক জনাম।';

  @override
  String get checkAgain => 'পুনৰ চাওক';

  @override
  String get stillUnderReview => 'এতিয়াও পৰীক্ষা চলি আছে';

  @override
  String get rejectedTitle => 'আমি আপোনাক সত্যাপন কৰিব পৰা নাই';

  @override
  String get rejectedBody =>
      'তলত আমাৰ দলে উল্লেখ কৰা কথাখিনি ঠিক কৰক, তাৰ পিছত নথিপত্ৰ পুনৰ পঠিয়াওক।';

  @override
  String get rejectionReasonLabel => 'কাৰণ';

  @override
  String get fixAndResubmit => 'ঠিক কৰি পুনৰ জমা দিয়ক';

  @override
  String get blockedTitle => 'আপুনি এতিয়াও অনলাইন হ\'ব নোৱাৰে';

  @override
  String get documentsExpiredMessage =>
      'আপোনাৰ লাইচেন্স বা বীমাৰ ম্যাদ উকলিছে। অনলাইন হ\'বলৈ বৈধ নথিপত্ৰ আপল\'ড কৰক।';

  @override
  String get awaitingVerificationMessage =>
      'আপোনাৰ নথিপত্ৰ এতিয়াও সত্যাপন কৰি থকা হৈছে।';

  @override
  String get updateDocuments => 'নথিপত্ৰ আপডেট কৰক';

  @override
  String get riderHomeTitle => 'যাবলৈ সাজু';

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
      'অনলাইন হওক, আমি আপোনালৈ ওচৰৰ ডেলিভাৰী পঠিয়াম।';

  @override
  String get dutyStatusLabel => 'ডিউটিৰ অৱস্থা';

  @override
  String get dutyOnline => 'অনলাইন';

  @override
  String get dutyOffline => 'অফলাইন';

  @override
  String get dutyOnBreak => 'বিৰতিত আছে';

  @override
  String get goOnline => 'অনলাইন হওক';

  @override
  String get goOffline => 'অফলাইন হওক';

  @override
  String get takeABreak => 'বিৰতি লওক';

  @override
  String get waitingForOrders => 'ওচৰৰ অৰ্ডাৰৰ বাবে অপেক্ষা কৰি আছে';

  @override
  String get youAreOffline =>
      'আপুনি অফলাইন আছে। আপোনালৈ কোনো ডেলিভাৰী পঠোৱা নহ\'ব।';

  @override
  String get completedDeliveriesLabel => 'সম্পূৰ্ণ কৰা ডেলিভাৰী';

  @override
  String get ratingLabel => 'ৰেটিং';

  @override
  String get notRatedYet => 'এতিয়াও ৰেটিং পোৱা নাই';

  @override
  String get vehicleLabel => 'বাহন';

  @override
  String get kycStatusLabel => 'সত্যাপন';

  @override
  String get kycPending => 'জমা দিয়া হোৱা নাই';

  @override
  String get kycSubmitted => 'পৰীক্ষা চলি আছে';

  @override
  String get kycVerified => 'অনুমোদিত';

  @override
  String get kycRejected => 'নাকচ কৰা হ\'ল';

  @override
  String get fieldRequired => 'এই ঘৰটো পূৰণ কৰা আৱশ্যক';

  @override
  String get invalidAadhaar => 'আপোনাৰ আধাৰ নম্বৰৰ 12টা সংখ্যা দিয়ক';

  @override
  String get invalidPan => 'শুদ্ধ PAN দিয়ক, যেনে ABCDE1234F';

  @override
  String get invalidIfsc => 'শুদ্ধ IFSC ক\'ড দিয়ক, যেনে SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'নম্বৰ প্লেটত যিদৰে আছে, ঠিক সেইদৰে নম্বৰটো দিয়ক';

  @override
  String get invalidAccountNumber => 'শুদ্ধ একাউণ্ট নম্বৰ দিয়ক';

  @override
  String get dateMustBeFuture => 'এই তাৰিখ ইতিমধ্যে পাৰ হৈ গৈছে';

  @override
  String get mustBeEighteen =>
      'ডেলিভাৰী কৰিবলৈ আপোনাৰ বয়স কমেও 18 বছৰ হ\'ব লাগিব';

  @override
  String get docAadhaarFront => 'আধাৰ কাৰ্ড (সন্মুখ)';

  @override
  String get docAadhaarBack => 'আধাৰ কাৰ্ড (পিছফাল)';

  @override
  String get docDrivingLicence => 'ড্ৰাইভিং লাইচেন্স';

  @override
  String get docVehicleRc => 'বাহনৰ পঞ্জীয়ন প্ৰমাণপত্ৰ';

  @override
  String get docInsurance => 'বাহনৰ বীমা';

  @override
  String get docProfilePhoto => 'প্ৰফাইল ফটো';

  @override
  String get docPan => 'PAN কাৰ্ড';

  @override
  String get docBankProof => 'বাতিল কৰা চেক বা বেংক ষ্টেটমেণ্ট';

  @override
  String get ordersTab => 'অৰ্ডাৰ';

  @override
  String get deliveryTab => 'ডেলিভাৰী';

  @override
  String get historyTab => 'ইতিহাস';

  @override
  String get orderBoardTitle => 'আপোনাৰ ওচৰৰ অৰ্ডাৰ';

  @override
  String get orderBoardSubtitle =>
      'আটাইতকৈ ওচৰৰ ৰেষ্টুৰেণ্ট প্ৰথমে। তালিকাখন নিজে নিজে আপডেট হয়।';

  @override
  String orderNumberLabel(String number) {
    return 'অৰ্ডাৰ $number';
  }

  @override
  String get pickupLabel => 'পিকআপ';

  @override
  String get dropoffLabel => 'ডেলিভাৰীৰ ঠিকনা';

  @override
  String distanceMetres(String metres) {
    return '$metres মি';
  }

  @override
  String distanceKilometres(String km) {
    return '$km কিমি';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা বস্তু',
      one: '1টা বস্তু',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'আপুনি পাব';

  @override
  String get collectCashLabel => 'নগদ সংগ্ৰহ কৰক';

  @override
  String get prepaidLabel => 'অনলাইনত পৰিশোধ হৈছে';

  @override
  String collectAtDoor(String amount) {
    return 'গ্ৰাহকৰ পৰা নগদ $amount লওক';
  }

  @override
  String get nothingToCollect => 'আগতেই পৰিশোধ হৈছে। টকা নিবিচাৰিব।';

  @override
  String get acceptOrder => 'গ্ৰহণ কৰক';

  @override
  String get viewOrder => 'চাওক';

  @override
  String get orderAccepted => 'অৰ্ডাৰ গ্ৰহণ কৰা হ\'ল। ৰেষ্টুৰেণ্টলৈ যাওক।';

  @override
  String get orderAlreadyTaken =>
      'আন এজন ৰাইডাৰে এইটো ল\'লে। এয়া শেহতীয়া তালিকা।';

  @override
  String get orderNoLongerYours => 'এই অৰ্ডাৰটো এতিয়া আপোনাৰ নহয়।';

  @override
  String get boardEmptyTitle => 'এতিয়া কোনো অৰ্ডাৰ নাই';

  @override
  String get boardEmptyBody =>
      'অনলাইন থাকক। ৰেষ্টুৰেণ্টবোৰ ব্যস্ত হোৱাৰ লগে লগে তালিকাখন নিজে নিজে আপডেট হ\'ব।';

  @override
  String get boardOfflineTitle => 'আপুনি অফলাইন আছে';

  @override
  String get boardOfflineBody => 'অৰ্ডাৰ পাবলৈ অনলাইন হওক।';

  @override
  String get boardBusyTitle => 'প্ৰথমে আপোনাৰ ডেলিভাৰী শেষ কৰক';

  @override
  String get boardBusyBody =>
      'এইটো ডেলিভাৰ হোৱাৰ পিছত আপুনি আন এটা অৰ্ডাৰ ল\'ব পাৰিব।';

  @override
  String get boardNoLocationTitle => 'আমি আপোনাৰ অৱস্থান পোৱা নাই';

  @override
  String get boardNoLocationBody =>
      'ৰেষ্টুৰেণ্ট কিমান ওচৰত সেই অনুসৰি অৰ্ডাৰবোৰ সজোৱা হয়, সেয়েহে কিবা দেখুৱাবলৈ আমাক আপোনাৰ অৱস্থান লাগিব।';

  @override
  String get boardNotVerifiedTitle => 'ডেলিভাৰীৰ বাবে এতিয়াও অনুমোদন পোৱা নাই';

  @override
  String get activeDeliveryTitle => 'আপোনাৰ ডেলিভাৰী';

  @override
  String get headToRestaurant => 'ৰেষ্টুৰেণ্টলৈ যাওক';

  @override
  String get deliverToCustomer => 'গ্ৰাহকক ডেলিভাৰী কৰক';

  @override
  String get noActiveDeliveryTitle => 'হাতত কোনো অৰ্ডাৰ নাই';

  @override
  String get noActiveDeliveryBody =>
      'তালিকাৰ পৰা এটা অৰ্ডাৰ গ্ৰহণ কৰক, সেইটো ইয়াত দেখা যাব।';

  @override
  String get confirmPickupButton => 'মই অৰ্ডাৰ লৈছোঁ';

  @override
  String get pickupCodeTitle => 'পিকআপ ক\'ড';

  @override
  String get pickupCodeSubtitle => 'ৰেষ্টুৰেণ্টক ক\'ডটো সোধক আৰু ইয়াত লিখক।';

  @override
  String get pickupCodeHint => 'ক\'ড';

  @override
  String get wrongPickupCode =>
      'ক\'ডটো মিলা নাই। ৰেষ্টুৰেণ্টৰ সৈতে মিলাই চাওক।';

  @override
  String get pickupConfirmed => 'পিকআপ হ\'ল। গ্ৰাহকক ডেলিভাৰী কৰক।';

  @override
  String get confirmDeliveryButton => 'ডেলিভাৰ হ\'ল';

  @override
  String get stepReachRestaurant => 'ৰেষ্টুৰেণ্টলৈ যাওক';

  @override
  String get stepPickUp => 'পিকআপ';

  @override
  String get stepReachCustomer => 'গ্ৰাহকলৈ যাওক';

  @override
  String get stepDeliver => 'ডেলিভাৰী';

  @override
  String get swipePickUp => 'লোৱাৰ পিছত ছোৱাইপ কৰক';

  @override
  String get swipeDeliver => 'ডেলিভাৰীৰ বাবে ছোৱাইপ কৰক';

  @override
  String get cashToCollectLabel => 'গ্ৰাহকৰ পৰা ল\'ব লগীয়া নগদ';

  @override
  String get confirmDeliveryTitle => 'ডেলিভাৰী নিশ্চিত কৰক';

  @override
  String get confirmDeliveryBody =>
      'গ্ৰাহকৰ হাতত অৰ্ডাৰ পোৱাৰ পিছতহে নিশ্চিত কৰক।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'প্ৰথমে গ্ৰাহকৰ পৰা নগদ $amount লওক, তাৰ পিছত নিশ্চিত কৰক।';
  }

  @override
  String get deliveryConfirmed => 'ডেলিভাৰ হ\'ল। ধন্যবাদ, আপুনি পুনৰ অনলাইন।';

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
  String get releaseOrderButton => 'ঘূৰাই দিয়ক';

  @override
  String get releaseOrderTitle => 'এই অৰ্ডাৰ ঘূৰাই দিব নেকি?';

  @override
  String get releaseOrderBody =>
      'ই আন ৰাইডাৰৰ বাবে তালিকালৈ উভতি যাব। খাদ্য লোৱাৰ আগতেহে আপুনি এইটো কৰিব পাৰে।';

  @override
  String get releaseReasonHint => 'কাৰণ (ঐচ্ছিক)';

  @override
  String get orderReleased =>
      'ঘূৰাই দিয়া হ\'ল। ই পুনৰ আন ৰাইডাৰৰ বাবে উপলব্ধ।';

  @override
  String get finishCurrentOrderFirst =>
      'প্ৰথমে আপোনাৰ বৰ্তমানৰ অৰ্ডাৰ শেষ কৰক বা ঘূৰাই দিয়ক।';

  @override
  String get callRestaurant => 'ৰেষ্টুৰেণ্টলৈ কল কৰক';

  @override
  String get callCustomer => 'গ্ৰাহকলৈ কল কৰক';

  @override
  String get openInMaps => 'পথ নিৰ্দেশনা';

  @override
  String get customerNoteLabel => 'গ্ৰাহকৰ টোকা';

  @override
  String get orderItemsLabel => 'বেগত কি আছে';

  @override
  String get orderDetailsTitle => 'অৰ্ডাৰৰ বিৱৰণ';

  @override
  String get historyTitle => 'আগৰ ডেলিভাৰী';

  @override
  String get historyEmptyTitle => 'এতিয়াও কোনো ডেলিভাৰী নাই';

  @override
  String get historyEmptyBody => 'আপুনি সম্পূৰ্ণ কৰা অৰ্ডাৰবোৰ ইয়াত দেখা যাব।';

  @override
  String get historySearchHint => 'অৰ্ডাৰ বা ৰেষ্টুৰেণ্ট বিচাৰক';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'আজি';

  @override
  String get historyYesterday => 'কালি';

  @override
  String get historyEarlier => 'আগৰ';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটা ডেলিভাৰী',
      one: '1টা ডেলিভাৰী',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” ৰ সৈতে একো মিলা নাই।';
  }

  @override
  String historyCashTaken(String amount) {
    return 'লোৱা নগদ $amount';
  }

  @override
  String get orderDelivered => 'ডেলিভাৰ হ\'ল';

  @override
  String get orderCancelled => 'বাতিল হ\'ল';

  @override
  String get orderPreparing => 'প্ৰস্তুত হৈ আছে';

  @override
  String get orderReadyForPickup => 'পিকআপৰ বাবে সাজু';

  @override
  String get orderAssigned => 'আপোনাক দিয়া হ\'ল';

  @override
  String get orderPickedUp => 'পিকআপ হ\'ল';

  @override
  String get orderOutForDelivery => 'বাটত আছে';

  @override
  String get trackingOn => 'অৱস্থান শ্বেয়াৰ চালু আছে';

  @override
  String get locationUnavailableMessage =>
      'আপোনাৰ অৱস্থান পোৱা নাই। অৱস্থান চালু কৰক আৰু Nexmile Rider ক অনুমতি দিয়ক।';

  @override
  String get locationPermissionTitle => 'অৱস্থান লাগিব';

  @override
  String get locationPermissionBody =>
      'আপুনি কিমান ওচৰত আছে সেই অনুসৰি অৰ্ডাৰ দিয়া হয়, আৰু গ্ৰাহকে মানচিত্ৰত আপোনাক চাই থাকে। অনলাইন হ\'বলৈ অৱস্থানৰ অনুমতি দিয়ক।';

  @override
  String get locationSettingsButton => 'ছেটিংছ খোলক';

  @override
  String get enableLocationButton => 'অৱস্থানৰ অনুমতি দিয়ক';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'শ্বিফ্ট';

  @override
  String get payoutsTitle => 'পেআউট';

  @override
  String get payoutsEntryValue => 'সাপ্তাহিক উপাৰ্জন';

  @override
  String get payoutDetailsTitle => 'সাপ্তাহিক পেআউট';

  @override
  String get payoutsEmptyTitle => 'এতিয়াও কোনো পেআউট নাই';

  @override
  String get payoutsEmptyBody =>
      'প্ৰতি সপ্তাহৰ হিচাপ হোৱাৰ পিছত আপোনাৰ উপাৰ্জন ইয়াত দেখা যাব।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'বিচাৰাধীন';

  @override
  String get payoutStatusProcessing => 'প্ৰক্ৰিয়া চলি আছে';

  @override
  String get payoutStatusPaid => 'পৰিশোধ হ\'ল';

  @override
  String get payoutNotSentNote =>
      'এই সপ্তাহৰ আপোনাৰ উপাৰ্জনৰ হিচাপ কৰা হৈছে। টকা এতিয়াও আপোনাৰ বেংকলৈ পঠোৱা হোৱা নাই।';

  @override
  String payoutPaidOn(String date) {
    return '$date ত আপোনাৰ বেংকলৈ পঠোৱা হ\'ল';
  }

  @override
  String get payoutPaidNote => 'এই সপ্তাহৰ বেংক ট্ৰান্সফাৰ সম্পূৰ্ণ হৈছে।';

  @override
  String get payoutReferenceLabel => 'ট্ৰান্সফাৰ ৰেফাৰেন্স';

  @override
  String get payoutNetLabel => 'প্ৰাপ্য পৰিমাণ';

  @override
  String get payoutDeliveryEarnings => 'ডেলিভাৰীৰ উপাৰ্জন';

  @override
  String get payoutReferralEarnings => 'ৰেফাৰেলৰ উপাৰ্জন';

  @override
  String get payoutCarriedIn => 'আগৰ সপ্তাহৰ পৰা';

  @override
  String get payoutCarriedInNote =>
      '₹100 তকৈ কম পৰিমাণ অকলে ট্ৰান্সফাৰ কৰা নহয়। সেইবোৰ পিছৰ সপ্তাহৰ সৈতে যোগ কৰা হয়।';

  @override
  String get payoutGross => 'মুঠ উপাৰ্জন';

  @override
  String get payoutDeductions => 'কৰ্তন';

  @override
  String get payoutsLatestWeek => 'শেহতীয়া সপ্তাহ';

  @override
  String get payoutsPaidSoFar => 'এতিয়ালৈকে পৰিশোধ হোৱা';

  @override
  String get payoutsNotYetSent => 'এতিয়াও পঠোৱা হোৱা নাই';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'হিচাপ হ\'ল';

  @override
  String get payoutStepSending => 'পঠোৱা চলি আছে';

  @override
  String get payoutStepInBank => 'আপোনাৰ বেংকত';

  @override
  String get navToRestaurant => 'ৰেষ্টুৰেণ্টলৈ';

  @override
  String get navToCustomer => 'গ্ৰাহকলৈ';

  @override
  String navHeadTowards(String place) {
    return '$place ৰ ফালে যাওক';
  }

  @override
  String navThen(String instruction) {
    return 'তাৰ পিছত: $instruction';
  }

  @override
  String get navArrived => 'আপুনি আহি পালে';

  @override
  String navArrivedAt(String place) {
    return '$place ত';
  }

  @override
  String get navFindingRoute => 'সৰ্বোত্তম পথ বিচাৰি আছোঁ…';

  @override
  String get navNoRoute =>
      'পথৰ নিৰ্দেশনা উপলব্ধ নহয়। পোনপটীয়া দূৰত্ব দেখুওৱা হৈছে।';

  @override
  String get navFindingLocation => 'আপোনাৰ অৱস্থান বিচাৰি আছোঁ…';

  @override
  String get navLocationOff => 'নেভিগেট কৰিবলৈ অৱস্থান চালু কৰক।';

  @override
  String get navEnd => 'নেভিগেচন বন্ধ কৰক';

  @override
  String get navRecentre => 'পুনৰ কেন্দ্ৰিত কৰক';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes মিনিট';
  }

  @override
  String get navStart => 'নেভিগেট কৰক';

  @override
  String get orderReachedRestaurant => 'ৰেষ্টুৰেণ্টত আছে';

  @override
  String get orderReachedCustomer => 'গ্ৰাহকৰ ওচৰত আছে';

  @override
  String get reachedRestaurantButton => 'মই ৰেষ্টুৰেণ্ট পালোঁ';

  @override
  String get reachedCustomerButton => 'মই গ্ৰাহকৰ ওচৰ পালোঁ';

  @override
  String get reachedRestaurantDone => 'আপুনি অহা খবৰ ৰন্ধনশালাক দিয়া হ\'ল';

  @override
  String get reachedCustomerDone => 'আপুনি বাহিৰত থকা খবৰ গ্ৰাহকক দিয়া হ\'ল';

  @override
  String get offerTitle => 'নতুন অৰ্ডাৰ';

  @override
  String get offerYouEarn => 'আপুনি পাব';

  @override
  String get offerPickup => 'পিকআপ';

  @override
  String get offerDrop => 'ড্ৰপ';

  @override
  String offerAway(String distance) {
    return '$distance দূৰত';
  }

  @override
  String offerTrip(String distance) {
    return '$distanceৰ যাত্ৰা';
  }

  @override
  String offerItems(String count) {
    return '$countটা বস্তু';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount নগদ সংগ্ৰহ কৰক';
  }

  @override
  String get offerPrepaid => 'আগতেই পৰিশোধ · নগদ নালাগে';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'প্ৰায় $minutes মিনিটত খাদ্য সাজু হ\'ব';
  }

  @override
  String get offerSwipeToAccept => 'গ্ৰহণ কৰিবলৈ ছোৱাইপ কৰক';

  @override
  String get offerAccepting => 'গ্ৰহণ কৰি থকা হৈছে…';

  @override
  String get offerReject => 'নাকচ কৰক';

  @override
  String get offerRejectTitle => 'আপুনি কিয় নাকচ কৰিছে?';

  @override
  String get offerReasonTooFar => 'বহুত দূৰ';

  @override
  String get offerReasonBusy => 'এতিয়া ব্যস্ত';

  @override
  String get offerReasonVehicle => 'বাহনৰ সমস্যা';

  @override
  String get offerReasonOther => 'অন্য কাৰণ';

  @override
  String get offerTaken => 'আন ৰাইডাৰে অৰ্ডাৰটো ল\'লে';

  @override
  String get offerAutoOffline =>
      '3টা অৰ্ডাৰৰ উত্তৰ নিদিয়াৰ বাবে আপোনাক অফলাইন কৰা হ\'ল। সাজু হ\'লে অনলাইন হওক।';

  @override
  String get mockLocationBlocked =>
      'অৰ্ডাৰ পাবলৈ যিকোনো নকল অৱস্থানৰ এপ বন্ধ কৰক।';

  @override
  String get dropoffDoorLabel => 'ফ্লেট / মহলা';

  @override
  String get dropoffStreetLabel => 'পথ';

  @override
  String get dropoffLandmarkLabel => 'চিন';

  @override
  String get doorPhotoLabel => 'দুৱাৰৰ ফটো';

  @override
  String get doorPhotoHint => 'ডাঙৰকৈ চাবলৈ টিপক';

  @override
  String get doorPhotoUnavailable => 'এতিয়া ফটো উপলব্ধ নহয়';

  @override
  String permStepCount(int step, int total) {
    return '$total ৰ $step';
  }

  @override
  String get permNotNow => 'এতিয়া নহয়';

  @override
  String get permLocationTitle => 'অৱস্থান চালু কৰক';

  @override
  String get permLocationBody =>
      'অৰ্ডাৰ ৰেষ্টুৰেণ্টৰ আটাইতকৈ ওচৰৰ ৰাইডাৰলৈ যায়, আৰু গ্ৰাহকে মানচিত্ৰত নিজৰ খাদ্য চাই থাকে।';

  @override
  String get permLocationNearTitle => 'আপোনাৰ ওচৰৰ অৰ্ডাৰ';

  @override
  String get permLocationNearBody =>
      'আমি আপোনাক ওচৰৰ ৰেষ্টুৰেণ্টৰ অৰ্ডাৰ দিওঁ, যাতে আপুনি কম চলাই বেছি উপাৰ্জন কৰিব পাৰে।';

  @override
  String get permLocationTrackTitle => 'লাইভ ট্ৰেকিং';

  @override
  String get permLocationTrackBody =>
      'গ্ৰাহকে মানচিত্ৰত আপোনাক দেখে, সেয়েহে তেওঁলোকে আপোনাক কম কল কৰে।';

  @override
  String get permLocationOnlineTitle => 'কেৱল অনলাইন থকাৰ সময়ত';

  @override
  String get permLocationOnlineBody =>
      'অফলাইন হ\'লে ই বন্ধ হয়। ব্যৱহাৰ হৈ থকাৰ সময়ত এটা নোটিফিকেচন দেখা যায়।';

  @override
  String get permLocationAllow => 'অৱস্থানৰ অনুমতি দিয়ক';

  @override
  String get permNotifyTitle => 'কোনো অৰ্ডাৰ নেহেৰুৱাব';

  @override
  String get permNotifyBody =>
      'স্ক্ৰীণ লক থাকিলেও নতুন অৰ্ডাৰ ফোন কলৰ দৰে বাজে।';

  @override
  String get permNotifyRingTitle => 'বাজি উঠা অৰ্ডাৰ এলাৰ্ট';

  @override
  String get permNotifyRingBody =>
      'এলাৰ্টৰ পৰাই পোনপটীয়াকৈ গ্ৰহণ বা নাকচ কৰক।';

  @override
  String get permNotifyUpdatesTitle => 'পেআউট আৰু অনুমোদন';

  @override
  String get permNotifyUpdatesBody =>
      'আপোনাৰ নথিপত্ৰ কেতিয়া অনুমোদন হয় আৰু টকা কেতিয়া পঠোৱা হয়, জানিব পাৰিব।';

  @override
  String get permNotifyControlTitle => 'নিয়ন্ত্ৰণ আপোনাৰ হাতত';

  @override
  String get permNotifyControlBody =>
      'যিকোনো সময়তে ফোনৰ ছেটিংছত সলনি কৰিব পাৰে।';

  @override
  String get permNotifyAllow => 'নোটিফিকেচন চালু কৰক';

  @override
  String get permBatteryTitle => 'অৰ্ডাৰ আহি থাকক';

  @override
  String get permBatteryBody =>
      'বেটাৰী বচাবলৈ ফোনে পটভূমিত এপ বন্ধ কৰি দিয়ে। আপুনি অনলাইন থকাৰ সময়ত Nexmile Rider চলি থাকিবলৈ দিয়ক।';

  @override
  String get permBatteryOrdersTitle => 'কোনো অৰ্ডাৰ হেৰাই নাযায়';

  @override
  String get permBatteryOrdersBody =>
      'এপ বন্ধ থাকিলেও আৰু ফোন জেপত থাকিলেও অৰ্ডাৰ আপোনাৰ ওচৰলৈ আহে।';

  @override
  String get permBatteryLiveTitle => 'ট্ৰেকিং লাইভ থাকে';

  @override
  String get permBatteryLiveBody =>
      'আপুনি ডেলিভাৰী নকৰালৈকে গ্ৰাহকে মানচিত্ৰত আপোনাক দেখি থাকে।';

  @override
  String get permBatteryLightTitle => 'বেটাৰী কম খৰচ হয়';

  @override
  String get permBatteryLightBody =>
      'আপুনি অনলাইন থকাৰ সময়তহে ই বেছি কাম কৰে।';

  @override
  String get permBatteryAllow => 'পটভূমিত চলিবলৈ অনুমতি দিয়ক';

  @override
  String get permFullScreenTitle => 'লক স্ক্ৰীণত অৰ্ডাৰ';

  @override
  String get permFullScreenBody =>
      'নতুন অৰ্ডাৰ অহা কলৰ দৰে লক স্ক্ৰীণৰ ওপৰত দেখা যাবলৈ দিয়ক, যাতে এটা টিপতে গ্ৰহণ কৰিব পাৰে।';

  @override
  String get permFullScreenCallTitle => 'কলৰ দৰে উত্তৰ দিয়ক';

  @override
  String get permFullScreenCallBody => 'আনলক নকৰাকৈয়ে অৰ্ডাৰ চাই গ্ৰহণ কৰক।';

  @override
  String get permFullScreenTimeTitle => 'সময়মতে উত্তৰ দিয়ক';

  @override
  String get permFullScreenTimeBody =>
      'আপুনি উত্তৰ নিদিয়া অৰ্ডাৰ আন ৰাইডাৰলৈ যায়।';

  @override
  String get permFullScreenOnlyTitle => 'কেৱল নতুন অৰ্ডাৰৰ বাবে';

  @override
  String get permFullScreenOnlyBody =>
      'আপোনাৰ লক স্ক্ৰীণৰ ওপৰত আন একো কেতিয়াও দেখা নাযায়।';

  @override
  String get setupTitle => 'ফোন ছেটআপ';

  @override
  String get setupIntro =>
      'এপ বন্ধ থাকিলেও বা ফোন লক থাকিলেও নতুন অৰ্ডাৰ বাজিবলৈ এইবোৰ সম্পূৰ্ণ কৰক।';

  @override
  String get setupNotifications => 'নোটিফিকেচন';

  @override
  String get setupNotificationsBody => 'যাতে নতুন অৰ্ডাৰ বাজে আৰু দেখা যায়।';

  @override
  String get setupFullScreen => 'সম্পূৰ্ণ স্ক্ৰীণ অৰ্ডাৰ এলাৰ্ট';

  @override
  String get setupFullScreenBody =>
      'কলৰ দৰে লক স্ক্ৰীণৰ ওপৰত নতুন অৰ্ডাৰ দেখুৱায়।';

  @override
  String get setupBattery => 'বেটাৰী: অপ্টিমাইজ নকৰিব';

  @override
  String get setupBatteryBody =>
      'আপুনি অনলাইন থকাৰ সময়ত ফোনে এপ বন্ধ কৰি দিয়াটো ৰোধ কৰে।';

  @override
  String get setupAutostart => 'অটোষ্টাৰ্ট';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ফোনত Nexmile Rider ৰ বাবে অটোষ্টাৰ্টো চালু কৰিব লাগে। ছেটিংছ খোলক, অটোষ্টাৰ্ট বিচাৰক আৰু চালু কৰক।';
  }

  @override
  String get setupLocation => 'অৱস্থান';

  @override
  String get setupLocationBody => 'ওচৰৰ অৰ্ডাৰ পঠিয়াবলৈ প্ৰয়োজন।';

  @override
  String get setupAllow => 'অনুমতি দিয়ক';

  @override
  String get setupOpenSettings => 'ছেটিংছ খোলক';

  @override
  String get setupMarkDone => 'মই এইটো কৰিলোঁ';

  @override
  String get setupDoneStep => 'সম্পন্ন';

  @override
  String get setupBannerTitle => 'ফোন ছেটআপ সম্পূৰ্ণ কৰক';

  @override
  String setupBannerBody(String count) {
    return 'অৰ্ডাৰ এলাৰ্ট নেহেৰুৱাবলৈ $countটা বাকী';
  }

  @override
  String get offerEstimatedEarnings => 'আনুমানিক উপাৰ্জন';

  @override
  String offerPickupLine(String name) {
    return 'পিকআপ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ড্ৰপ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'আপোনাৰ পৰা প্ৰায় $distance দূৰত';
  }

  @override
  String get exitTitle => 'Nexmile Rider ৰ পৰা ওলাব নেকি?';

  @override
  String get exitBody => 'আপুনি সঁচাকৈয়ে এপৰ পৰা ওলাই যাব বিচাৰে নেকি?';

  @override
  String get exitConfirm => 'ওলাই যাওক';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ডেলিভাৰী পাৰ্টনাৰ হওক';

  @override
  String get onboardingWelcomeSubtitle =>
      'নিজৰ অঞ্চলত ডেলিভাৰী কৰক, নিজৰ সময় নিজে বাছক, আৰু প্ৰতি সপ্তাহে টকা পাওক।';

  @override
  String get onboardingWelcomeNeed => 'এইবোৰ সাজু ৰাখক';

  @override
  String get onboardingNeedAadhaar => 'আধাৰ কাৰ্ড';

  @override
  String get onboardingNeedPan => 'PAN কাৰ্ড';

  @override
  String get onboardingNeedLicence => 'ড্ৰাইভিং লাইচেন্স আৰু বাহনৰ RC';

  @override
  String get onboardingNeedInsurance => 'বাহনৰ বীমা';

  @override
  String get onboardingNeedBank => 'বেংক একাউণ্টৰ বিৱৰণ';

  @override
  String get onboardingNeedNote =>
      'চাইকেল চলায় বা খোজকাঢ়ি ডেলিভাৰী কৰে? আপোনাক কেৱল আধাৰ, PAN আৰু এটা বেংক একাউণ্ট লাগিব।';

  @override
  String get onboardingWelcomeTime => 'প্ৰায় 10 মিনিট লাগে';

  @override
  String get onboardingGetStarted => 'আৰম্ভ কৰক';

  @override
  String get onboardingSavedNote =>
      'প্ৰতিটো পদক্ষেপৰ পিছত সুৰক্ষিতভাৱে সাঁচি থোৱা হয়';

  @override
  String get docsTip =>
      'ভাল পোহৰত তোলা স্পষ্ট ফটো আটাইতকৈ সোনকালে অনুমোদন হয়।';

  @override
  String get docsAllDone =>
      'সকলো আৱশ্যকীয় নথিপত্ৰ দিয়া হ\'ল। পৰীক্ষা কৰিবলৈ আগবাঢ়ক।';

  @override
  String get docGroupIdentity => 'পৰিচয়ৰ প্ৰমাণ';

  @override
  String get docGroupVehicle => 'লাইচেন্স আৰু বাহনৰ কাগজ-পত্ৰ';

  @override
  String get docGroupMore => 'অন্যান্য নথিপত্ৰ';

  @override
  String get docTapToAdd => 'যোগ কৰিবলৈ টিপক';

  @override
  String get docUploading => 'আপল\'ড হৈ আছে…';

  @override
  String get docView => 'চাওক';

  @override
  String get docSheetSubtitle => 'প্ৰথমবাৰতে অনুমোদন পাবলৈ কি কৰিব';

  @override
  String get docTipCorners => 'চাৰিওটা চুক ফটোৰ ভিতৰত';

  @override
  String get docTipGlare => 'স্পষ্ট লেখা, পোহৰৰ চমক বা ছাঁ নাই';

  @override
  String get docTipOriginal => 'মূল নথি, ফটোকপি নহয়';

  @override
  String get docTipFace => 'মুখ স্পষ্টকৈ দেখা যাব লাগিব, পোনে পোনে চাওক';

  @override
  String get docTipBackground => 'সাধাৰণ পটভূমি আৰু ভাল পোহৰ';

  @override
  String get docTipNoCap => 'টুপী, মাস্ক বা ক\'লা চশমা নিপিন্ধিব';

  @override
  String get docTipFullPage => 'সম্পূৰ্ণ পৃষ্ঠা, প্ৰতিটো শাৰী পঢ়িব পৰাকৈ';

  @override
  String get docSourceCamera => 'কেমেৰা';

  @override
  String get docSourceGallery => 'গেলাৰী';

  @override
  String get docSourceFile => 'PDF বা ফাইল';

  @override
  String get reviewSectionDetails => 'আপোনাৰ বিৱৰণ';

  @override
  String get reviewSectionDocuments => 'নথিপত্ৰ';

  @override
  String get reviewSectionBank => 'বেংক একাউণ্ট';

  @override
  String get reviewBankHidden =>
      'যোগ কৰা হৈছে · আপোনাৰ সুৰক্ষাৰ বাবে লুকুৱাই ৰখা হৈছে';

  @override
  String get reviewEdit => 'সম্পাদনা কৰক';

  @override
  String get reviewNextTitle => 'ইয়াৰ পিছত কি হ\'ব';

  @override
  String get reviewNext1 => 'আপুনি আবেদন জমা দিয়ে';

  @override
  String get reviewNext2 => 'আমাৰ দলে আপোনাৰ তথ্য আৰু নথিপত্ৰ পৰীক্ষা কৰে';

  @override
  String get reviewNext3 => 'আপোনাক জনোৱা হয়, অনলাইন হৈ উপাৰ্জন আৰম্ভ কৰক';

  @override
  String get kycStepSubmitted => 'আবেদন জমা দিয়া হ\'ল';

  @override
  String get kycStepVerifying => 'আপোনাৰ নথিপত্ৰ সত্যাপন কৰি থকা হৈছে';

  @override
  String get kycStepApproved => 'অনুমোদিত — অনলাইন হৈ উপাৰ্জন আৰম্ভ কৰক';
}
