// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'দ্রুত ডেলিভারি। সতেজ হাসি।';

  @override
  String get chooseLanguageTitle => 'আপনার ভাষা বেছে নিন';

  @override
  String get chooseLanguageSubtitle =>
      'যে ভাষায় আপনি স্বচ্ছন্দ সেটি বেছে নিন। আপনি যেকোনো সময় সেটিংস থেকে এটি পরিবর্তন করতে পারেন।';

  @override
  String get searchLanguageHint => 'ভাষা খুঁজুন';

  @override
  String get noLanguageFound => 'কোনো ভাষা পাওয়া যায়নি';

  @override
  String languagesAvailable(int count) {
    return '$countটি ভাষা রয়েছে';
  }

  @override
  String get continueLabel => 'চালিয়ে যান';

  @override
  String get selectedLabel => 'নির্বাচিত';

  @override
  String get defaultLabel => 'ডিফল্ট';

  @override
  String get homeTitle => 'Nexmile-এ স্বাগতম';

  @override
  String get homeSubtitle =>
      'তাজা মুদিখানার জিনিস, গরম খাবার এবং প্রতিদিনের প্রয়োজনীয় সামগ্রী আপনার কাছের দোকান থেকে।';

  @override
  String get changeLanguage => 'ভাষা পরিবর্তন করুন';

  @override
  String get languageUpdated => 'ভাষা পরিবর্তন করা হয়েছে';

  @override
  String get appLanguageLabel => 'অ্যাপের ভাষা';

  @override
  String greetingNamed(String name) {
    return 'নমস্কার, $name';
  }

  @override
  String get loginTitle => 'Nexmile-এ সাইন ইন করুন';

  @override
  String get loginSubtitle =>
      'আপনার ইমেল বা মোবাইল নম্বর দিন, আমরা যাচাই কোড পাঠাব।';

  @override
  String get emailOrPhoneLabel => 'ইমেল বা মোবাইল নম্বর';

  @override
  String get emailOrPhoneHint => 'name@example.com অথবা 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'সঠিক ইমেল ঠিকানা বা ১০ সংখ্যার মোবাইল নম্বর লিখুন';

  @override
  String get loginHeadline =>
      'Nexmile-এর সঙ্গে ডেলিভারি করুন। নিজের সময়ে আয় করুন।';

  @override
  String get loginOrSignUp => 'লগ ইন বা সাইন আপ করুন';

  @override
  String get loginEmailHint => 'আপনার ইমেল ঠিকানা লিখুন';

  @override
  String get invalidEmail => 'সঠিক ইমেল ঠিকানা লিখুন';

  @override
  String get loginHeroBadge => 'ডেলিভারি পার্টনার';

  @override
  String get sendCode => 'কোড পাঠান';

  @override
  String get agreeToTermsOnContinue =>
      'চালিয়ে গেলে আপনি আমাদের পরিষেবার শর্তাবলী ও গোপনীয়তা নীতিতে সম্মত হচ্ছেন।';

  @override
  String get otpTitle => 'যাচাই করুন এটি আপনিই';

  @override
  String otpSubtitle(String target) {
    return '$target-এ পাঠানো ৬ সংখ্যার কোড লিখুন';
  }

  @override
  String get otpHelpTitle => 'কোড পাননি?';

  @override
  String get otpHelpCheck =>
      'ওপরের নম্বর বা ইমেলটি দেখে নিন। বদলাতে পিছনে ফিরে যান।';

  @override
  String get otpHelpWait =>
      'কোড আসতে এক মিনিট পর্যন্ত সময় লাগতে পারে। টাইমার শেষ হলে নতুন কোড চাইতে পারবেন।';

  @override
  String get otpHelpSpam => 'ইমেলে পাঠানো হলে স্প্যাম ফোল্ডারও দেখে নিন।';

  @override
  String get verifyCode => 'যাচাই করুন';

  @override
  String get resendCode => 'কোড আবার পাঠান';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds সেকেন্ড পরে আবার পাঠান';
  }

  @override
  String get codeResent => 'নতুন কোড পাঠানো হয়েছে';

  @override
  String get incorrectCode =>
      'এই কোডটি ভুল বা মেয়াদ শেষ হয়ে গেছে। নতুন কোড চান।';

  @override
  String get enterFullCode => 'পুরো ৬টি সংখ্যা লিখুন';

  @override
  String get accountSuspended =>
      'এই অ্যাকাউন্টটি স্থগিত করা হয়েছে। সহায়তার সঙ্গে যোগাযোগ করুন।';

  @override
  String get tooManyAttempts =>
      'অনেকবার চেষ্টা করা হয়েছে। কিছুক্ষণ পরে আবার চেষ্টা করুন।';

  @override
  String get sessionExpired =>
      'আপনার সেশনের মেয়াদ শেষ হয়েছে। আবার সাইন ইন করুন।';

  @override
  String get networkError =>
      'ইন্টারনেট সংযোগ নেই। সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get developmentCode => 'ডেভেলপমেন্ট কোড';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get signedOut => 'আপনি সাইন আউট হয়েছেন';

  @override
  String get somethingWentWrong => 'কিছু ভুল হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get profileTitle => 'প্রোফাইল';

  @override
  String get profileSectionDetails => 'আপনার তথ্য';

  @override
  String get profileSectionWork => 'কাজ';

  @override
  String get profileSectionApp => 'অ্যাপ সেটিংস';

  @override
  String get viewProfile => 'প্রোফাইল দেখুন';

  @override
  String get nameLabel => 'নাম';

  @override
  String get emailLabel => 'ইমেল';

  @override
  String get mobileLabel => 'মোবাইল নম্বর';

  @override
  String get accountStatusLabel => 'অ্যাকাউন্টের অবস্থা';

  @override
  String get statusActive => 'সক্রিয়';

  @override
  String get statusPending => 'অপেক্ষমাণ';

  @override
  String get statusSuspended => 'স্থগিত';

  @override
  String get verifiedLabel => 'যাচাই করা';

  @override
  String get notProvided => 'যোগ করা হয়নি';

  @override
  String get retry => 'আবার চেষ্টা করুন';

  @override
  String get loginRiderNote => 'এই অ্যাপটি Nexmile ডেলিভারি পার্টনারদের জন্য।';

  @override
  String get checkingYourAccount => 'আপনার অ্যাকাউন্ট দেখা হচ্ছে';

  @override
  String get couldNotLoadAccount =>
      'আপনার অ্যাকাউন্ট লোড করা যায়নি। সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get notARiderAccountTitle => 'এটি ডেলিভারি পার্টনার অ্যাকাউন্ট নয়';

  @override
  String get notARiderAccount =>
      'এই ইমেল বা মোবাইল নম্বর অন্য একটি Nexmile অ্যাকাউন্টে আগেই রেজিস্টার করা আছে। ডেলিভারি পার্টনার হিসেবে যোগ দিতে সাইন আউট করে অন্য ইমেল বা নম্বর ব্যবহার করুন।';

  @override
  String notARiderAccountFor(String role) {
    return 'এই ইমেল বা মোবাইল নম্বর আগেই Nexmile $role হিসেবে রেজিস্টার করা আছে। ডেলিভারি পার্টনার হিসেবে যোগ দিতে সাইন আউট করে অন্য ইমেল বা নম্বর ব্যবহার করুন।';
  }

  @override
  String get roleCustomer => 'ক্রেতা';

  @override
  String get roleMerchant => 'বিক্রেতা';

  @override
  String get roleAdmin => 'অ্যাডমিন';

  @override
  String get useAnotherAccount => 'অন্য অ্যাকাউন্ট ব্যবহার করুন';

  @override
  String get onboardingTitle => 'Nexmile পার্টনার হন';

  @override
  String get onboardingSubtitle =>
      'কিছু তথ্য আর আপনার ডকুমেন্ট দিন, তারপর আমাদের টিম আপনাকে যাচাই করবে। সাধারণত দুই কার্যদিবস পর্যন্ত সময় লাগে।';

  @override
  String stepOfSteps(int current, int total) {
    return 'ধাপ $current / $total';
  }

  @override
  String get stepIdentityTitle => 'আপনার সম্পর্কে';

  @override
  String get stepIdentitySubtitle =>
      'আধার কার্ডে যেমন লেখা আছে, ঠিক সেভাবে আপনার নাম লিখুন।';

  @override
  String get stepVehicleTitle => 'আপনার গাড়ি';

  @override
  String get stepVehicleSubtitle =>
      'আপনি কী চালান আর তার নম্বর প্লেটে কী নম্বর আছে, জানান।';

  @override
  String get stepIdentityNumbersTitle => 'পরিচয়পত্রের নম্বর';

  @override
  String get stepIdentityNumbersSubtitle =>
      'এগুলি পরে আপলোড করা ডকুমেন্টের সঙ্গে মিলতে হবে।';

  @override
  String get stepLicenceTitle => 'লাইসেন্স ও ইনস্যুরেন্স';

  @override
  String get stepLicenceSubtitle => 'ডেলিভারি শুরুর দিনে দুটোই বৈধ থাকতে হবে।';

  @override
  String get stepBankTitle => 'কোথায় টাকা পাবেন';

  @override
  String get stepBankSubtitle =>
      'আপনার আয় এই অ্যাকাউন্টে পাঠানো হবে। ভালো করে মিলিয়ে নিন।';

  @override
  String get stepDocumentsTitle => 'আপনার ডকুমেন্ট';

  @override
  String get stepDocumentsSubtitle =>
      'প্রতিটির ছবি ভালো আলোয় তুলুন। JPG, PNG বা PDF, প্রতিটি সর্বোচ্চ 5 MB।';

  @override
  String get stepReviewTitle => 'দেখে নিয়ে জমা দিন';

  @override
  String get stepReviewSubtitle =>
      'জমা দেওয়ার পর আমাদের টিম দেখে না নেওয়া পর্যন্ত আপনার তথ্য লক থাকবে।';

  @override
  String get saveAndContinue => 'সংরক্ষণ করে এগিয়ে যান';

  @override
  String get backLabel => 'পিছনে';

  @override
  String get fullNameLabel => 'পুরো নাম';

  @override
  String get fullNameHint => 'আধারে যেমন ছাপা আছে';

  @override
  String get dateOfBirthLabel => 'জন্মতারিখ';

  @override
  String get selectDate => 'তারিখ বাছুন';

  @override
  String get vehicleTypeLabel => 'গাড়ির ধরন';

  @override
  String get vehicleMotorcycle => 'মোটরসাইকেল';

  @override
  String get vehicleScooter => 'স্কুটার';

  @override
  String get vehicleEv => 'ইলেকট্রিক গাড়ি';

  @override
  String get vehicleBicycle => 'সাইকেল';

  @override
  String get vehicleWalk => 'পায়ে হেঁটে';

  @override
  String get vehicleNoPapersNote =>
      'গাড়ির নম্বর বা RC লাগবে না। শুধু আধার আর PAN চাওয়া হবে।';

  @override
  String get vehicleNumberLabel => 'গাড়ির নম্বর';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC নম্বর';

  @override
  String get aadhaarLabel => 'আধার নম্বর';

  @override
  String get aadhaarHint => '12 সংখ্যা';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ড্রাইভিং লাইসেন্স নম্বর';

  @override
  String get drivingLicenceExpiryLabel => 'লাইসেন্সের মেয়াদ';

  @override
  String get insuranceNumberLabel => 'ইনস্যুরেন্স পলিসি নম্বর';

  @override
  String get insuranceExpiryLabel => 'ইনস্যুরেন্সের মেয়াদ';

  @override
  String get bankAccountNameLabel => 'অ্যাকাউন্টধারীর নাম';

  @override
  String get bankAccountNumberLabel => 'অ্যাকাউন্ট নম্বর';

  @override
  String get bankIfscLabel => 'IFSC কোড';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$totalটির মধ্যে $doneটি আপলোড হয়েছে';
  }

  @override
  String get uploadDocument => 'আপলোড করুন';

  @override
  String get replaceDocument => 'বদলান';

  @override
  String get removeDocument => 'সরান';

  @override
  String get takePhoto => 'ছবি তুলুন';

  @override
  String get chooseFromGallery => 'গ্যালারি থেকে বাছুন';

  @override
  String get chooseFile => 'ফাইল বাছুন';

  @override
  String get uploadingLabel => 'আপলোড হচ্ছে';

  @override
  String get documentRejected => 'নামঞ্জুর';

  @override
  String get documentUploaded => 'আপলোড হয়েছে';

  @override
  String get documentApproved => 'অনুমোদিত';

  @override
  String get documentRequired => 'আবশ্যক';

  @override
  String get documentOptional => 'ঐচ্ছিক';

  @override
  String get fileTooLarge =>
      'ফাইলটি 5 MB-এর বেশি। স্ক্যানের বদলে ছবি তুলে দেখুন।';

  @override
  String get unsupportedFileType => 'JPG, PNG বা PDF বাছুন।';

  @override
  String get pickerUnavailable =>
      'এটি খোলা গেল না। অ্যাপের ক্যামেরা ও ছবির অনুমতি দেখে নিন।';

  @override
  String get uploadFailed => 'আপলোড হয়নি। আবার চেষ্টা করুন।';

  @override
  String get submitForVerification => 'যাচাইয়ের জন্য জমা দিন';

  @override
  String get submitConfirmTitle => 'যাচাইয়ের জন্য জমা দেবেন?';

  @override
  String get submitConfirmBody =>
      'আমাদের টিম দেখার সময় আপনার তথ্য ও ডকুমেন্ট লক থাকবে। সিদ্ধান্ত না হওয়া পর্যন্ত এগুলি বদলাতে পারবেন না।';

  @override
  String get cancelLabel => 'বাতিল';

  @override
  String get completeEverythingBeforeSubmitting =>
      'জমা দেওয়ার আগে সব ধাপ শেষ করুন এবং সব ডকুমেন্ট আপলোড করুন।';

  @override
  String get checkTheHighlightedFields =>
      'চিহ্নিত ঘরগুলি দেখে আবার চেষ্টা করুন।';

  @override
  String get underReviewTitle => 'আমরা আপনার ডকুমেন্ট যাচাই করছি';

  @override
  String get underReviewBody =>
      'আমাদের টিম সাধারণত দুই কার্যদিবসের মধ্যে দেখে নেয়। অনুমোদন হলেই আপনাকে জানিয়ে দেব।';

  @override
  String get checkAgain => 'আবার দেখুন';

  @override
  String get stillUnderReview => 'এখনো যাচাই চলছে';

  @override
  String get rejectedTitle => 'আমরা আপনাকে যাচাই করতে পারিনি';

  @override
  String get rejectedBody =>
      'নিচে আমাদের টিম যা লিখেছে তা ঠিক করুন, তারপর আবার ডকুমেন্ট পাঠান।';

  @override
  String get rejectionReasonLabel => 'কারণ';

  @override
  String get fixAndResubmit => 'ঠিক করে আবার জমা দিন';

  @override
  String get blockedTitle => 'আপনি এখনো অনলাইন হতে পারবেন না';

  @override
  String get documentsExpiredMessage =>
      'আপনার লাইসেন্স বা ইনস্যুরেন্সের মেয়াদ শেষ হয়ে গেছে। অনলাইন হতে বৈধ ডকুমেন্ট আপলোড করুন।';

  @override
  String get awaitingVerificationMessage =>
      'আপনার ডকুমেন্ট এখনো যাচাই করা হচ্ছে।';

  @override
  String get updateDocuments => 'ডকুমেন্ট আপডেট করুন';

  @override
  String get riderHomeTitle => 'কাজের জন্য তৈরি';

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
      'অনলাইন হন, আমরা আপনাকে কাছাকাছি ডেলিভারি পাঠাব।';

  @override
  String get dutyStatusLabel => 'ডিউটির অবস্থা';

  @override
  String get dutyOnline => 'অনলাইন';

  @override
  String get dutyOffline => 'অফলাইন';

  @override
  String get dutyOnBreak => 'বিরতিতে';

  @override
  String get goOnline => 'অনলাইন হন';

  @override
  String get goOffline => 'অফলাইন হন';

  @override
  String get takeABreak => 'বিরতি নিন';

  @override
  String get waitingForOrders => 'কাছাকাছি অর্ডারের অপেক্ষায়';

  @override
  String get youAreOffline =>
      'আপনি অফলাইনে আছেন। আপনাকে কোনো ডেলিভারি পাঠানো হবে না।';

  @override
  String get completedDeliveriesLabel => 'সম্পন্ন ডেলিভারি';

  @override
  String get ratingLabel => 'রেটিং';

  @override
  String get notRatedYet => 'এখনো রেটিং নেই';

  @override
  String get vehicleLabel => 'গাড়ি';

  @override
  String get kycStatusLabel => 'যাচাই';

  @override
  String get kycPending => 'জমা দেওয়া হয়নি';

  @override
  String get kycSubmitted => 'যাচাই চলছে';

  @override
  String get kycVerified => 'অনুমোদিত';

  @override
  String get kycRejected => 'নামঞ্জুর';

  @override
  String get fieldRequired => 'এই ঘরটি পূরণ করা আবশ্যক';

  @override
  String get invalidAadhaar => 'আপনার আধার নম্বরের 12টি সংখ্যা লিখুন';

  @override
  String get invalidPan => 'সঠিক PAN লিখুন, যেমন ABCDE1234F';

  @override
  String get invalidIfsc => 'সঠিক IFSC কোড লিখুন, যেমন SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'নম্বর প্লেটে যেমন আছে, ঠিক সেভাবে নম্বরটি লিখুন';

  @override
  String get invalidAccountNumber => 'সঠিক অ্যাকাউন্ট নম্বর লিখুন';

  @override
  String get dateMustBeFuture => 'এই তারিখটি পেরিয়ে গেছে';

  @override
  String get mustBeEighteen => 'ডেলিভারি করতে আপনার বয়স অন্তত 18 বছর হতে হবে';

  @override
  String get docAadhaarFront => 'আধার কার্ড (সামনের দিক)';

  @override
  String get docAadhaarBack => 'আধার কার্ড (পিছনের দিক)';

  @override
  String get docDrivingLicence => 'ড্রাইভিং লাইসেন্স';

  @override
  String get docVehicleRc => 'গাড়ির রেজিস্ট্রেশন সার্টিফিকেট';

  @override
  String get docInsurance => 'গাড়ির ইনস্যুরেন্স';

  @override
  String get docProfilePhoto => 'প্রোফাইল ছবি';

  @override
  String get docPan => 'PAN কার্ড';

  @override
  String get docBankProof => 'বাতিল চেক বা ব্যাংক স্টেটমেন্ট';

  @override
  String get ordersTab => 'অর্ডার';

  @override
  String get deliveryTab => 'ডেলিভারি';

  @override
  String get historyTab => 'ইতিহাস';

  @override
  String get orderBoardTitle => 'আপনার কাছের অর্ডার';

  @override
  String get orderBoardSubtitle =>
      'সবচেয়ে কাছের রেস্তোরাঁ আগে। তালিকা নিজে থেকেই রিফ্রেশ হয়।';

  @override
  String orderNumberLabel(String number) {
    return 'অর্ডার $number';
  }

  @override
  String get pickupLabel => 'পিকআপ';

  @override
  String get dropoffLabel => 'ডেলিভারির ঠিকানা';

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
      other: '$countটি জিনিস',
      one: '1টি জিনিস',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'আপনার আয়';

  @override
  String get collectCashLabel => 'নগদ নিন';

  @override
  String get prepaidLabel => 'অনলাইনে পেমেন্ট হয়েছে';

  @override
  String collectAtDoor(String amount) {
    return 'ক্রেতার কাছ থেকে $amount নগদ নিন';
  }

  @override
  String get nothingToCollect => 'পেমেন্ট হয়ে গেছে। টাকা চাইবেন না।';

  @override
  String get acceptOrder => 'গ্রহণ করুন';

  @override
  String get viewOrder => 'দেখুন';

  @override
  String get orderAccepted =>
      'অর্ডার গ্রহণ করা হয়েছে। রেস্তোরাঁর দিকে রওনা দিন।';

  @override
  String get orderAlreadyTaken =>
      'অন্য একজন রাইডার এটি নিয়ে নিয়েছেন। এই হল নতুন তালিকা।';

  @override
  String get orderNoLongerYours => 'এই অর্ডারটি আর আপনার নয়।';

  @override
  String get boardEmptyTitle => 'এখন কোনো অর্ডার নেই';

  @override
  String get boardEmptyBody =>
      'অনলাইনে থাকুন। রেস্তোরাঁগুলিতে ভিড় বাড়লে তালিকা নিজে থেকেই আপডেট হবে।';

  @override
  String get boardOfflineTitle => 'আপনি অফলাইনে আছেন';

  @override
  String get boardOfflineBody => 'অর্ডার পেতে অনলাইন হন।';

  @override
  String get boardBusyTitle => 'আগে আপনার ডেলিভারি শেষ করুন';

  @override
  String get boardBusyBody => 'এটি ডেলিভার হলে আরেকটি অর্ডার নিতে পারবেন।';

  @override
  String get boardNoLocationTitle => 'আপনার লোকেশন পাওয়া যাচ্ছে না';

  @override
  String get boardNoLocationBody =>
      'রেস্তোরাঁ কত কাছে তা দেখে অর্ডার সাজানো হয়, তাই কিছু দেখাতে আপনার লোকেশন দরকার।';

  @override
  String get boardNotVerifiedTitle => 'এখনো ডেলিভারির অনুমোদন পাননি';

  @override
  String get activeDeliveryTitle => 'আপনার ডেলিভারি';

  @override
  String get headToRestaurant => 'রেস্তোরাঁর দিকে রওনা দিন';

  @override
  String get deliverToCustomer => 'ক্রেতার কাছে ডেলিভারি করুন';

  @override
  String get noActiveDeliveryTitle => 'হাতে কোনো অর্ডার নেই';

  @override
  String get noActiveDeliveryBody =>
      'তালিকা থেকে একটি অর্ডার গ্রহণ করুন, সেটি এখানে দেখা যাবে।';

  @override
  String get confirmPickupButton => 'খাবার নিয়ে নিয়েছি';

  @override
  String get pickupCodeTitle => 'পিকআপ কোড';

  @override
  String get pickupCodeSubtitle =>
      'রেস্তোরাঁর কাছ থেকে কোডটি চেয়ে এখানে লিখুন।';

  @override
  String get pickupCodeHint => 'কোড';

  @override
  String get wrongPickupCode => 'কোডটি মেলেনি। রেস্তোরাঁর সঙ্গে মিলিয়ে নিন।';

  @override
  String get pickupConfirmed => 'পিকআপ হয়েছে। ক্রেতার কাছে ডেলিভারি করুন।';

  @override
  String get confirmDeliveryButton => 'ডেলিভার হয়েছে';

  @override
  String get stepReachRestaurant => 'রেস্তোরাঁয় পৌঁছান';

  @override
  String get stepPickUp => 'পিকআপ';

  @override
  String get stepReachCustomer => 'ক্রেতার কাছে পৌঁছান';

  @override
  String get stepDeliver => 'ডেলিভারি';

  @override
  String get swipePickUp => 'খাবার নিলে সোয়াইপ করুন';

  @override
  String get swipeDeliver => 'সোয়াইপ করে ডেলিভার করুন';

  @override
  String get cashToCollectLabel => 'নগদ নিতে হবে';

  @override
  String get confirmDeliveryTitle => 'ডেলিভারি নিশ্চিত করুন';

  @override
  String get confirmDeliveryBody =>
      'ক্রেতার হাতে অর্ডার পৌঁছালে তবেই নিশ্চিত করুন।';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'আগে $amount নগদ নিন, তারপর নিশ্চিত করুন।';
  }

  @override
  String get deliveryConfirmed =>
      'ডেলিভার হয়েছে। ধন্যবাদ, আপনি আবার অনলাইনে আছেন।';

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
  String get releaseOrderButton => 'ফেরত দিন';

  @override
  String get releaseOrderTitle => 'এই অর্ডারটি ফেরত দেবেন?';

  @override
  String get releaseOrderBody =>
      'এটি অন্য রাইডারের জন্য আবার তালিকায় চলে যাবে। খাবার নেওয়ার আগেই কেবল এটি করা যায়।';

  @override
  String get releaseReasonHint => 'কারণ (ঐচ্ছিক)';

  @override
  String get orderReleased =>
      'ফেরত দেওয়া হয়েছে। অন্য রাইডাররা আবার এটি নিতে পারবেন।';

  @override
  String get finishCurrentOrderFirst =>
      'আগে বর্তমান অর্ডারটি শেষ করুন বা ফেরত দিন।';

  @override
  String get callRestaurant => 'রেস্তোরাঁয় কল করুন';

  @override
  String get callCustomer => 'ক্রেতাকে কল করুন';

  @override
  String get openInMaps => 'দিকনির্দেশ';

  @override
  String get customerNoteLabel => 'ক্রেতার নোট';

  @override
  String get orderItemsLabel => 'ব্যাগে কী আছে';

  @override
  String get orderDetailsTitle => 'অর্ডারের বিবরণ';

  @override
  String get historyTitle => 'আগের ডেলিভারি';

  @override
  String get historyEmptyTitle => 'এখনো কোনো ডেলিভারি নেই';

  @override
  String get historyEmptyBody => 'আপনার সম্পন্ন করা অর্ডার এখানে দেখা যাবে।';

  @override
  String get historySearchHint => 'অর্ডার বা রেস্তোরাঁ খুঁজুন';

  @override
  String get historyToday => 'আজ';

  @override
  String get historyYesterday => 'গতকাল';

  @override
  String get historyEarlier => 'আগের অর্ডার';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি ডেলিভারি',
      one: '1টি ডেলিভারি',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query”-এর সঙ্গে কিছু মেলেনি।';
  }

  @override
  String historyCashTaken(String amount) {
    return 'নগদ নিয়েছেন $amount';
  }

  @override
  String get orderDelivered => 'ডেলিভার হয়েছে';

  @override
  String get orderCancelled => 'বাতিল হয়েছে';

  @override
  String get orderPreparing => 'তৈরি হচ্ছে';

  @override
  String get orderReadyForPickup => 'পিকআপের জন্য তৈরি';

  @override
  String get orderAssigned => 'আপনাকে দেওয়া হয়েছে';

  @override
  String get orderPickedUp => 'পিকআপ হয়েছে';

  @override
  String get orderOutForDelivery => 'পথে আছে';

  @override
  String get trackingOn => 'লোকেশন শেয়ারিং চালু';

  @override
  String get locationUnavailableMessage =>
      'আপনার লোকেশন পাওয়া যাচ্ছে না। লোকেশন চালু করে Nexmile Rider-কে অনুমতি দিন।';

  @override
  String get locationPermissionTitle => 'লোকেশন দরকার';

  @override
  String get locationPermissionBody =>
      'আপনি কত কাছে আছেন তা দেখে অর্ডার সাজানো হয়, আর ক্রেতা ম্যাপে আপনাকে দেখতে পান। অনলাইন হতে লোকেশন অনুমতি দিন।';

  @override
  String get locationSettingsButton => 'সেটিংস খুলুন';

  @override
  String get enableLocationButton => 'লোকেশন অনুমতি দিন';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'শিফট';

  @override
  String get payoutsTitle => 'পেআউট';

  @override
  String get payoutsEntryValue => 'সাপ্তাহিক আয়';

  @override
  String get payoutDetailsTitle => 'সাপ্তাহিক পেআউট';

  @override
  String get payoutsEmptyTitle => 'এখনো কোনো পেআউট নেই';

  @override
  String get payoutsEmptyBody =>
      'প্রতি সপ্তাহের হিসাব হয়ে গেলে সেই সপ্তাহের আয় এখানে দেখা যাবে।';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'অপেক্ষমাণ';

  @override
  String get payoutStatusProcessing => 'প্রক্রিয়া চলছে';

  @override
  String get payoutStatusPaid => 'পেমেন্ট হয়েছে';

  @override
  String get payoutNotSentNote =>
      'এই সপ্তাহের আয়ের হিসাব হয়ে গেছে। টাকা এখনো আপনার ব্যাংকে পাঠানো হয়নি।';

  @override
  String payoutPaidOn(String date) {
    return '$date-এ আপনার ব্যাংকে পাঠানো হয়েছে';
  }

  @override
  String get payoutPaidNote => 'এই সপ্তাহের ব্যাংক ট্রান্সফার সম্পন্ন হয়েছে।';

  @override
  String get payoutReferenceLabel => 'ট্রান্সফার রেফারেন্স';

  @override
  String get payoutNetLabel => 'প্রাপ্য টাকা';

  @override
  String get payoutDeliveryEarnings => 'ডেলিভারি থেকে আয়';

  @override
  String get payoutReferralEarnings => 'রেফারেল থেকে আয়';

  @override
  String get payoutCarriedIn => 'আগের সপ্তাহ থেকে';

  @override
  String get payoutCarriedInNote =>
      '₹100-এর কম টাকা আলাদাভাবে ট্রান্সফার করা হয় না। তার বদলে সেটি পরের সপ্তাহের সঙ্গে যোগ করা হয়।';

  @override
  String get payoutGross => 'মোট আয়';

  @override
  String get payoutDeductions => 'কাটা টাকা';

  @override
  String get payoutsLatestWeek => 'সর্বশেষ সপ্তাহ';

  @override
  String get payoutsPaidSoFar => 'এ পর্যন্ত পেমেন্ট হয়েছে';

  @override
  String get payoutsNotYetSent => 'এখনো পাঠানো হয়নি';

  @override
  String get payoutStepWorkedOut => 'হিসাব হয়েছে';

  @override
  String get payoutStepSending => 'পাঠানো হচ্ছে';

  @override
  String get payoutStepInBank => 'আপনার ব্যাংকে';

  @override
  String get navToRestaurant => 'রেস্তোরাঁর দিকে';

  @override
  String get navToCustomer => 'ক্রেতার দিকে';

  @override
  String navHeadTowards(String place) {
    return '$place-এর দিকে যান';
  }

  @override
  String navThen(String instruction) {
    return 'তারপর: $instruction';
  }

  @override
  String get navArrived => 'আপনি পৌঁছে গেছেন';

  @override
  String navArrivedAt(String place) {
    return '$place-এ';
  }

  @override
  String get navFindingRoute => 'সেরা রাস্তা খোঁজা হচ্ছে…';

  @override
  String get navNoRoute =>
      'রাস্তার দিকনির্দেশ পাওয়া যাচ্ছে না। সোজাসুজি দূরত্ব দেখানো হচ্ছে।';

  @override
  String get navFindingLocation => 'আপনার লোকেশন খোঁজা হচ্ছে…';

  @override
  String get navLocationOff => 'নেভিগেশনের জন্য লোকেশন চালু করুন।';

  @override
  String get navEnd => 'নেভিগেশন বন্ধ করুন';

  @override
  String get navRecentre => 'কেন্দ্রে আনুন';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes মিনিট';
  }

  @override
  String get navStart => 'নেভিগেট করুন';

  @override
  String get orderReachedRestaurant => 'রেস্তোরাঁয় পৌঁছেছেন';

  @override
  String get orderReachedCustomer => 'ক্রেতার কাছে পৌঁছেছেন';

  @override
  String get reachedRestaurantButton => 'আমি রেস্তোরাঁয় পৌঁছে গেছি';

  @override
  String get reachedCustomerButton => 'আমি ক্রেতার কাছে পৌঁছে গেছি';

  @override
  String get reachedRestaurantDone =>
      'রেস্তোরাঁকে জানানো হয়েছে যে আপনি এসে গেছেন';

  @override
  String get reachedCustomerDone => 'ক্রেতাকে জানানো হয়েছে যে আপনি বাইরে আছেন';

  @override
  String get offerTitle => 'নতুন অর্ডার';

  @override
  String get offerYouEarn => 'আপনার আয়';

  @override
  String get offerPickup => 'পিকআপ';

  @override
  String get offerDrop => 'ড্রপ';

  @override
  String offerAway(String distance) {
    return 'প্রায় $distance দূরে';
  }

  @override
  String offerTrip(String distance) {
    return '$distance ট্রিপ';
  }

  @override
  String offerItems(String count) {
    return '$countটি জিনিস';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount নগদ নিতে হবে';
  }

  @override
  String get offerPrepaid => 'আগেই পেমেন্ট হয়েছে · নগদ নেই';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'প্রায় $minutes মিনিটে খাবার তৈরি হবে';
  }

  @override
  String get offerSwipeToAccept => 'সোয়াইপ করে গ্রহণ করুন';

  @override
  String get offerAccepting => 'গ্রহণ করা হচ্ছে…';

  @override
  String get offerReject => 'প্রত্যাখ্যান করুন';

  @override
  String get offerRejectTitle => 'কেন অর্ডারটি নিচ্ছেন না?';

  @override
  String get offerReasonTooFar => 'অনেক দূরে';

  @override
  String get offerReasonBusy => 'এখন ব্যস্ত';

  @override
  String get offerReasonVehicle => 'গাড়িতে সমস্যা';

  @override
  String get offerReasonOther => 'অন্য কারণ';

  @override
  String get offerTaken => 'অন্য রাইডার অর্ডারটি নিয়ে নিয়েছেন';

  @override
  String get offerAutoOffline =>
      '3টি অর্ডার মিস করায় আপনাকে অফলাইন করে দেওয়া হয়েছে। তৈরি হলে অনলাইন হন।';

  @override
  String get mockLocationBlocked =>
      'অর্ডার পেতে নকল লোকেশনের যেকোনো অ্যাপ বন্ধ করুন।';

  @override
  String get dropoffDoorLabel => 'ফ্ল্যাট / তলা';

  @override
  String get dropoffStreetLabel => 'রাস্তা';

  @override
  String get dropoffLandmarkLabel => 'ল্যান্ডমার্ক';

  @override
  String get doorPhotoLabel => 'দরজার ছবি';

  @override
  String get doorPhotoHint => 'বড় করে দেখতে ট্যাপ করুন';

  @override
  String get doorPhotoUnavailable => 'ছবিটি এখন পাওয়া যাচ্ছে না';

  @override
  String permStepCount(int step, int total) {
    return '$total-এর মধ্যে $step';
  }

  @override
  String get permNotNow => 'এখন নয়';

  @override
  String get permLocationTitle => 'লোকেশন চালু করুন';

  @override
  String get permLocationBody =>
      'রেস্তোরাঁর সবচেয়ে কাছের রাইডার অর্ডার পান, আর ক্রেতারা ম্যাপে তাঁদের খাবার দেখতে পান।';

  @override
  String get permLocationNearTitle => 'আপনার কাছের অর্ডার';

  @override
  String get permLocationNearBody =>
      'আমরা কাছের রেস্তোরাঁর অর্ডার আপনাকে পাঠাই, তাই কম ঘুরে বেশি আয় করবেন।';

  @override
  String get permLocationTrackTitle => 'লাইভ ট্র্যাকিং';

  @override
  String get permLocationTrackBody =>
      'ক্রেতারা ম্যাপে আপনাকে দেখতে পান, তাই কম ফোন করেন।';

  @override
  String get permLocationOnlineTitle => 'শুধু অনলাইনে থাকার সময়';

  @override
  String get permLocationOnlineBody =>
      'অফলাইন হলেই এটি বন্ধ হয়ে যায়। যখনই এটি ব্যবহার হয়, একটি নোটিফিকেশন দেখা যায়।';

  @override
  String get permLocationAllow => 'লোকেশন অনুমতি দিন';

  @override
  String get permNotifyTitle => 'কোনো অর্ডার মিস করবেন না';

  @override
  String get permNotifyBody =>
      'স্ক্রিন লক থাকলেও নতুন অর্ডার ফোন কলের মতো বাজবে।';

  @override
  String get permNotifyRingTitle => 'অর্ডার এলে রিং বাজবে';

  @override
  String get permNotifyRingBody =>
      'অ্যালার্ট থেকেই সরাসরি গ্রহণ বা প্রত্যাখ্যান করুন।';

  @override
  String get permNotifyUpdatesTitle => 'পেআউট ও অনুমোদন';

  @override
  String get permNotifyUpdatesBody =>
      'কখন আপনার ডকুমেন্ট অনুমোদিত হল আর কখন টাকা পাঠানো হল, জানুন।';

  @override
  String get permNotifyControlTitle => 'নিয়ন্ত্রণ আপনার হাতে';

  @override
  String get permNotifyControlBody =>
      'ফোনের সেটিংস থেকে যেকোনো সময় এটি বদলাতে পারেন।';

  @override
  String get permNotifyAllow => 'নোটিফিকেশন চালু করুন';

  @override
  String get permBatteryTitle => 'অর্ডার আসতে থাকুক';

  @override
  String get permBatteryBody =>
      'ব্যাটারি বাঁচাতে ফোন পটভূমিতে চলা অ্যাপ বন্ধ করে দেয়। অনলাইনে থাকার সময় Nexmile Rider-কে চালু থাকতে দিন।';

  @override
  String get permBatteryOrdersTitle => 'কোনো অর্ডার মিস হবে না';

  @override
  String get permBatteryOrdersBody =>
      'অ্যাপ বন্ধ থাকলেও আর ফোন পকেটে থাকলেও অর্ডার আপনার কাছে পৌঁছাবে।';

  @override
  String get permBatteryLiveTitle => 'ট্র্যাকিং লাইভ থাকে';

  @override
  String get permBatteryLiveBody =>
      'ডেলিভারি না হওয়া পর্যন্ত ক্রেতারা ম্যাপে আপনাকে দেখতে পান।';

  @override
  String get permBatteryLightTitle => 'ব্যাটারি কম খরচ হয়';

  @override
  String get permBatteryLightBody =>
      'শুধু অনলাইনে থাকার সময়ই এটি বেশি কাজ করে।';

  @override
  String get permBatteryAllow => 'পটভূমিতে চলার অনুমতি দিন';

  @override
  String get permFullScreenTitle => 'লক স্ক্রিনে অর্ডার';

  @override
  String get permFullScreenBody =>
      'নতুন অর্ডার ইনকামিং কলের মতো লক স্ক্রিনের ওপরে দেখাতে দিন, যাতে এক ট্যাপেই গ্রহণ করতে পারেন।';

  @override
  String get permFullScreenCallTitle => 'কলের মতো ধরুন';

  @override
  String get permFullScreenCallBody =>
      'আনলক না করেই অর্ডার দেখুন এবং গ্রহণ করুন।';

  @override
  String get permFullScreenTimeTitle => 'সময়মতো সাড়া দিন';

  @override
  String get permFullScreenTimeBody =>
      'সাড়া না দিলে অর্ডারটি অন্য রাইডারের কাছে চলে যায়।';

  @override
  String get permFullScreenOnlyTitle => 'শুধু নতুন অর্ডারের জন্য';

  @override
  String get permFullScreenOnlyBody =>
      'লক স্ক্রিনের ওপরে আর কিছুই কখনো দেখা যাবে না।';

  @override
  String get setupTitle => 'ফোন সেটআপ';

  @override
  String get setupIntro =>
      'এগুলি সেরে নিন, যাতে অ্যাপ বন্ধ থাকলেও বা ফোন লক থাকলেও নতুন অর্ডার বাজে।';

  @override
  String get setupNotifications => 'নোটিফিকেশন';

  @override
  String get setupNotificationsBody =>
      'যাতে নতুন অর্ডার বাজতে ও দেখা যেতে পারে।';

  @override
  String get setupFullScreen => 'ফুল-স্ক্রিন অর্ডার অ্যালার্ট';

  @override
  String get setupFullScreenBody =>
      'কলের মতো লক স্ক্রিনের ওপরে নতুন অর্ডার দেখায়।';

  @override
  String get setupBattery => 'ব্যাটারি: অপ্টিমাইজ করবেন না';

  @override
  String get setupBatteryBody =>
      'অনলাইনে থাকার সময় ফোনকে অ্যাপ বন্ধ করতে দেয় না।';

  @override
  String get setupAutostart => 'অটোস্টার্ট';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ফোনে Nexmile Rider-এর জন্য অটোস্টার্টও চালু রাখতে হয়। সেটিংস খুলুন, অটোস্টার্ট খুঁজুন, তারপর চালু করুন।';
  }

  @override
  String get setupLocation => 'লোকেশন';

  @override
  String get setupLocationBody => 'কাছাকাছি অর্ডার পাঠাতে এটি দরকার।';

  @override
  String get setupAllow => 'অনুমতি দিন';

  @override
  String get setupOpenSettings => 'সেটিংস খুলুন';

  @override
  String get setupMarkDone => 'আমি করে নিয়েছি';

  @override
  String get setupDoneStep => 'হয়ে গেছে';

  @override
  String get setupBannerTitle => 'ফোন সেটআপ শেষ করুন';

  @override
  String setupBannerBody(String count) {
    return '$countটি বাকি, যাতে অর্ডার অ্যালার্ট মিস না হয়';
  }

  @override
  String get offerEstimatedEarnings => 'আনুমানিক আয়';

  @override
  String offerPickupLine(String name) {
    return 'পিকআপ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ড্রপ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'আপনার থেকে প্রায় $distance দূরে';
  }

  @override
  String get exitTitle => 'Nexmile Rider থেকে বেরোবেন?';

  @override
  String get exitBody => 'আপনি কি সত্যিই অ্যাপ থেকে বেরোতে চান?';

  @override
  String get exitConfirm => 'বেরিয়ে যান';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ডেলিভারি পার্টনার হন';

  @override
  String get onboardingWelcomeSubtitle =>
      'নিজের এলাকায় ডেলিভারি করুন, নিজের সময় বেছে নিন, আর প্রতি সপ্তাহে টাকা পান।';

  @override
  String get onboardingWelcomeNeed => 'এগুলি হাতের কাছে রাখুন';

  @override
  String get onboardingNeedAadhaar => 'আধার কার্ড';

  @override
  String get onboardingNeedPan => 'PAN কার্ড';

  @override
  String get onboardingNeedLicence => 'ড্রাইভিং লাইসেন্স ও গাড়ির RC';

  @override
  String get onboardingNeedInsurance => 'গাড়ির ইনস্যুরেন্স';

  @override
  String get onboardingNeedBank => 'ব্যাংক অ্যাকাউন্টের বিবরণ';

  @override
  String get onboardingNeedNote =>
      'সাইকেলে বা হেঁটে ডেলিভারি করবেন? শুধু আধার, PAN আর একটি ব্যাংক অ্যাকাউন্ট লাগবে।';

  @override
  String get onboardingWelcomeTime => 'প্রায় 10 মিনিট লাগে';

  @override
  String get onboardingGetStarted => 'শুরু করুন';

  @override
  String get onboardingSavedNote => 'প্রতিটি ধাপের পরে নিরাপদে সংরক্ষিত হয়';

  @override
  String get docsTip =>
      'ভালো আলোয় তোলা পরিষ্কার ছবি সবচেয়ে তাড়াতাড়ি অনুমোদিত হয়।';

  @override
  String get docsAllDone =>
      'সব আবশ্যক ডকুমেন্ট দেওয়া হয়ে গেছে। দেখে নিতে এগিয়ে যান।';

  @override
  String get docGroupIdentity => 'পরিচয়ের প্রমাণ';

  @override
  String get docGroupVehicle => 'লাইসেন্স ও গাড়ির কাগজপত্র';

  @override
  String get docGroupMore => 'আরও ডকুমেন্ট';

  @override
  String get docTapToAdd => 'যোগ করতে ট্যাপ করুন';

  @override
  String get docUploading => 'আপলোড হচ্ছে…';

  @override
  String get docView => 'দেখুন';

  @override
  String get docSheetSubtitle => 'প্রথমবারেই কীভাবে অনুমোদন পাবেন';

  @override
  String get docTipCorners => 'চারটি কোণই যেন ছবির ভেতরে থাকে';

  @override
  String get docTipGlare => 'স্পষ্ট লেখা, আলোর ঝলক বা ছায়া নেই';

  @override
  String get docTipOriginal => 'আসল ডকুমেন্ট, ফটোকপি নয়';

  @override
  String get docTipFace => 'মুখ যেন স্পষ্ট দেখা যায়, সোজা সামনে তাকিয়ে';

  @override
  String get docTipBackground => 'সাদামাটা পটভূমি আর ভালো আলো';

  @override
  String get docTipNoCap => 'টুপি, মাস্ক বা সানগ্লাস চলবে না';

  @override
  String get docTipFullPage => 'পুরো পাতা, প্রতিটি লাইন যেন পড়া যায়';

  @override
  String get docSourceCamera => 'ক্যামেরা';

  @override
  String get docSourceGallery => 'গ্যালারি';

  @override
  String get docSourceFile => 'PDF বা ফাইল';

  @override
  String get reviewSectionDetails => 'আপনার তথ্য';

  @override
  String get reviewSectionDocuments => 'ডকুমেন্ট';

  @override
  String get reviewSectionBank => 'ব্যাংক অ্যাকাউন্ট';

  @override
  String get reviewBankHidden =>
      'যোগ করা হয়েছে · আপনার নিরাপত্তার জন্য লুকানো';

  @override
  String get reviewEdit => 'সম্পাদনা';

  @override
  String get reviewNextTitle => 'এরপর কী হবে';

  @override
  String get reviewNext1 => 'আপনি আবেদন জমা দেবেন';

  @override
  String get reviewNext2 => 'আমাদের টিম আপনার তথ্য ও ডকুমেন্ট যাচাই করবে';

  @override
  String get reviewNext3 =>
      'আপনাকে জানানো হবে, তারপর অনলাইন হয়ে আয় শুরু করুন';

  @override
  String get kycStepSubmitted => 'আবেদন জমা হয়েছে';

  @override
  String get kycStepVerifying => 'আপনার ডকুমেন্ট যাচাই করা হচ্ছে';

  @override
  String get kycStepApproved => 'অনুমোদিত — অনলাইন হয়ে আয় শুরু করুন';
}
