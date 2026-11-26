// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sindhi (`sd`).
class AppLocalizationsSd extends AppLocalizations {
  AppLocalizationsSd([String locale = 'sd']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'تيز ڊليوري. تازا مرڪون.';

  @override
  String get chooseLanguageTitle => 'پنهنجي ٻولي چونڊيو';

  @override
  String get chooseLanguageSubtitle =>
      'اها ٻولي چونڊيو جنهن ۾ توهان کي آساني ٿئي. توهان ان کي ڪنهن به وقت سيٽنگون ۾ تبديل ڪري سگهو ٿا.';

  @override
  String get searchLanguageHint => 'ٻولي ڳوليو';

  @override
  String get noLanguageFound => 'ڪا به ٻولي نه ملي';

  @override
  String languagesAvailable(int count) {
    return '$count ٻوليون موجود آهن';
  }

  @override
  String get continueLabel => 'اڳتي وڌو';

  @override
  String get selectedLabel => 'چونڊيل';

  @override
  String get defaultLabel => 'ڊفالٽ';

  @override
  String get homeTitle => 'Nexmile ۾ ڀلي ڪري آيا';

  @override
  String get homeSubtitle =>
      'تازو راشن، گرم کاڌو ۽ روزمره جون ضرورتون توهان جي ويجهن دڪانن مان.';

  @override
  String get changeLanguage => 'ٻولي تبديل ڪريو';

  @override
  String get languageUpdated => 'ٻولي تبديل ٿي وئي';

  @override
  String get appLanguageLabel => 'ايپ جي ٻولي';

  @override
  String greetingNamed(String name) {
    return 'ڀلي ڪري آيا، $name';
  }

  @override
  String get loginTitle => 'Nexmile ۾ سائن ان ڪريو';

  @override
  String get loginSubtitle =>
      'پنهنجو اي ميل يا موبائل نمبر داخل ڪريو، اسان توهان کي تصديقي ڪوڊ موڪلينداسين.';

  @override
  String get emailOrPhoneLabel => 'اي ميل يا موبائل نمبر';

  @override
  String get emailOrPhoneHint => 'name@example.com يا 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'صحيح اي ميل پتو يا 10 عددن جو موبائل نمبر داخل ڪريو';

  @override
  String get loginHeadline => 'Nexmile سان ڊليوري ڪريو. پنهنجي وقت تي ڪمايو.';

  @override
  String get loginOrSignUp => 'لاگ ان يا سائن اپ ڪريو';

  @override
  String get loginEmailHint => 'پنهنجو اي ميل پتو داخل ڪريو';

  @override
  String get invalidEmail => 'صحيح اي ميل پتو داخل ڪريو';

  @override
  String get loginHeroBadge => 'ڊليوري پارٽنر';

  @override
  String get sendCode => 'ڪوڊ موڪليو';

  @override
  String get agreeToTermsOnContinue =>
      'اڳتي وڌڻ سان توهان اسان جي خدمت جي شرطن ۽ رازداري پاليسي سان متفق ٿيو ٿا.';

  @override
  String get otpTitle => 'تصديق ڪريو ته هي توهان ئي آهيو';

  @override
  String otpSubtitle(String target) {
    return '$target تي موڪليل 6 عددن جو ڪوڊ داخل ڪريو';
  }

  @override
  String get otpHelpTitle => 'ڪوڊ نه مليو؟';

  @override
  String get otpHelpCheck =>
      'مٿي لکيل نمبر يا اي ميل چيڪ ڪريو. تبديل ڪرڻ لاءِ واپس دٻايو.';

  @override
  String get otpHelpWait =>
      'ڪوڊ اچڻ ۾ هڪ منٽ تائين لڳي سگهي ٿو. ٽائمر ختم ٿيڻ تي توهان نئون ڪوڊ گهري سگهو ٿا.';

  @override
  String get otpHelpSpam => 'اي ميل لاءِ، پنهنجو اسپام فولڊر به ڏسو.';

  @override
  String get otpTrustLine =>
      'Never share this code. Nexmile will never ask you for it.';

  @override
  String get verifyCode => 'تصديق ڪريو';

  @override
  String get resendCode => 'ڪوڊ ٻيهر موڪليو';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds سيڪنڊن ۾ ٻيهر موڪليو';
  }

  @override
  String get codeResent => 'نئون ڪوڊ موڪليو ويو آهي';

  @override
  String get incorrectCode =>
      'هي ڪوڊ غلط آهي يا ان جي مدت ختم ٿي وئي. نئون ڪوڊ گهرو.';

  @override
  String get enterFullCode => 'پورا 6 عدد داخل ڪريو';

  @override
  String get accountSuspended =>
      'هي اڪائونٽ معطل ڪيو ويو آهي. مهرباني ڪري سپورٽ سان رابطو ڪريو.';

  @override
  String get tooManyAttempts =>
      'تمام گهڻيون ڪوششون ٿي ويون. مهرباني ڪري ٿوري دير کان پوءِ ٻيهر ڪوشش ڪريو.';

  @override
  String get sessionExpired =>
      'توهان جو سيشن ختم ٿي ويو آهي. مهرباني ڪري ٻيهر سائن ان ڪريو.';

  @override
  String get networkError =>
      'انٽرنيٽ ڪنيڪشن ناهي. پنهنجو ڪنيڪشن چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get developmentCode => 'ڊولپمينٽ ڪوڊ';

  @override
  String get signOut => 'سائن آئوٽ';

  @override
  String get signedOut => 'توهان سائن آئوٽ ٿي ويا آهيو';

  @override
  String get somethingWentWrong =>
      'ڪجهه غلط ٿي ويو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get profileTitle => 'پروفائل';

  @override
  String get profileSectionDetails => 'توهان جا تفصيل';

  @override
  String get profileSectionWork => 'ڪم';

  @override
  String get profileSectionApp => 'ايپ سيٽنگون';

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
  String get viewProfile => 'پروفائل ڏسو';

  @override
  String get nameLabel => 'نالو';

  @override
  String get emailLabel => 'اي ميل';

  @override
  String get mobileLabel => 'موبائل نمبر';

  @override
  String get accountStatusLabel => 'اڪائونٽ جي حالت';

  @override
  String get statusActive => 'فعال';

  @override
  String get statusPending => 'زير التوا';

  @override
  String get statusSuspended => 'معطل';

  @override
  String get verifiedLabel => 'تصديق ٿيل';

  @override
  String get notProvided => 'شامل نه ڪيو ويو';

  @override
  String get retry => 'ٻيهر ڪوشش ڪريو';

  @override
  String get loginRiderNote => 'هي ايپ Nexmile جي ڊليوري پارٽنرن لاءِ آهي.';

  @override
  String get checkingYourAccount => 'توهان جو اڪائونٽ چيڪ ڪري رهيا آهيون';

  @override
  String get couldNotLoadAccount =>
      'اسان توهان جو اڪائونٽ لوڊ نه ڪري سگهياسين. پنهنجو ڪنيڪشن چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get notARiderAccountTitle => 'هي ڊليوري پارٽنر جو اڪائونٽ ناهي';

  @override
  String get notARiderAccount =>
      'هي اي ميل يا موبائل نمبر اڳ ۾ ئي Nexmile جي ٻئي اڪائونٽ تي رجسٽر ٿيل آهي. ڊليوري پارٽنر طور شامل ٿيڻ لاءِ سائن آئوٽ ڪري ٻيو اي ميل يا نمبر استعمال ڪريو.';

  @override
  String notARiderAccountFor(String role) {
    return 'هي اي ميل يا موبائل نمبر اڳ ۾ ئي Nexmile $role طور رجسٽر ٿيل آهي. ڊليوري پارٽنر طور شامل ٿيڻ لاءِ سائن آئوٽ ڪري ٻيو اي ميل يا نمبر استعمال ڪريو.';
  }

  @override
  String get roleCustomer => 'گراهڪ';

  @override
  String get roleMerchant => 'دڪاندار';

  @override
  String get roleAdmin => 'ايڊمن';

  @override
  String get useAnotherAccount => 'ٻيو اڪائونٽ استعمال ڪريو';

  @override
  String get onboardingTitle => 'Nexmile پارٽنر بڻجو';

  @override
  String get onboardingSubtitle =>
      'ڪجهه تفصيل ۽ توهان جا دستاويز، پوءِ اسان جي ٽيم توهان جي تصديق ڪندي. عام طور تي وڌ ۾ وڌ ٻه ڪم وارا ڏينهن لڳن ٿا.';

  @override
  String stepOfSteps(int current, int total) {
    return '$total مان قدم $current';
  }

  @override
  String get stepIdentityTitle => 'توهان بابت';

  @override
  String get stepIdentitySubtitle =>
      'پنهنجو نالو بلڪل ائين لکو جيئن توهان جي آڌار ڪارڊ تي لکيل آهي.';

  @override
  String get stepVehicleTitle => 'توهان جي گاڏي';

  @override
  String get stepVehicleSubtitle =>
      'ٻڌايو ته توهان ڇا هلائيندا آهيو ۽ ان جي نمبر پليٽ تي ڪهڙو نمبر آهي.';

  @override
  String get stepIdentityNumbersTitle => 'سڃاڻپ جا نمبر';

  @override
  String get stepIdentityNumbersSubtitle =>
      'اهي انهن دستاويزن سان ملڻ گهرجن جيڪي توهان پوءِ اپلوڊ ڪندا.';

  @override
  String get stepLicenceTitle => 'لائسنس ۽ انشورنس';

  @override
  String get stepLicenceSubtitle =>
      'ٻئي ان ڏينهن لاڳو هجڻ گهرجن جنهن ڏينهن توهان ڊليوري شروع ڪندا.';

  @override
  String get stepBankTitle => 'توهان کي پئسا ڪٿي ملندا';

  @override
  String get stepBankSubtitle =>
      'توهان جي ڪمائي هن اڪائونٽ ۾ جمع ٿيندي. ان کي ڌيان سان چيڪ ڪريو.';

  @override
  String get stepDocumentsTitle => 'توهان جا دستاويز';

  @override
  String get stepDocumentsSubtitle =>
      'هر هڪ جي تصوير سٺي روشني ۾ ڪڍو. JPG، PNG يا PDF، هر هڪ 5 MB تائين.';

  @override
  String get stepReviewTitle => 'چيڪ ڪري موڪليو';

  @override
  String get stepReviewSubtitle =>
      'موڪلڻ کان پوءِ توهان جا تفصيل تيستائين لاڪ رهندا جيستائين اسان جي ٽيم انهن جو جائزو نه وٺي.';

  @override
  String get saveAndContinue => 'محفوظ ڪري اڳتي وڌو';

  @override
  String get backLabel => 'واپس';

  @override
  String get fullNameLabel => 'پورو نالو';

  @override
  String get fullNameHint => 'جيئن توهان جي آڌار تي لکيل آهي';

  @override
  String get dateOfBirthLabel => 'ڄمڻ جي تاريخ';

  @override
  String get selectDate => 'تاريخ چونڊيو';

  @override
  String get vehicleTypeLabel => 'گاڏي جو قسم';

  @override
  String get vehicleMotorcycle => 'موٽر سائيڪل';

  @override
  String get vehicleScooter => 'اسڪوٽر';

  @override
  String get vehicleEv => 'اليڪٽرڪ گاڏي';

  @override
  String get vehicleBicycle => 'سائيڪل';

  @override
  String get vehicleWalk => 'پيدل';

  @override
  String get vehicleNoPapersNote =>
      'گاڏي جو نمبر يا RC گهربل ناهي. توهان کان رڳو آڌار ۽ PAN گهريا ويندا.';

  @override
  String get vehicleNumberLabel => 'گاڏي جو نمبر';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC نمبر';

  @override
  String get aadhaarLabel => 'آڌار نمبر';

  @override
  String get aadhaarHint => '12 عدد';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ڊرائيونگ لائسنس نمبر';

  @override
  String get drivingLicenceExpiryLabel => 'لائسنس جي آخري تاريخ';

  @override
  String get insuranceNumberLabel => 'انشورنس پاليسي نمبر';

  @override
  String get insuranceExpiryLabel => 'انشورنس جي آخري تاريخ';

  @override
  String get bankAccountNameLabel => 'اڪائونٽ هولڊر جو نالو';

  @override
  String get bankAccountNumberLabel => 'اڪائونٽ نمبر';

  @override
  String get bankIfscLabel => 'IFSC ڪوڊ';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total مان $done اپلوڊ ٿي ويا';
  }

  @override
  String get uploadDocument => 'اپلوڊ ڪريو';

  @override
  String get replaceDocument => 'بدلايو';

  @override
  String get removeDocument => 'هٽايو';

  @override
  String get takePhoto => 'تصوير ڪڍو';

  @override
  String get chooseFromGallery => 'گيلري مان چونڊيو';

  @override
  String get chooseFile => 'فائل چونڊيو';

  @override
  String get uploadingLabel => 'اپلوڊ ٿي رهيو آهي';

  @override
  String get documentRejected => 'رد ٿيل';

  @override
  String get documentUploaded => 'اپلوڊ ٿيل';

  @override
  String get documentApproved => 'منظور ٿيل';

  @override
  String get documentRequired => 'لازمي';

  @override
  String get documentOptional => 'اختياري';

  @override
  String get fileTooLarge =>
      'هي فائل 5 MB کان وڏي آهي. اسڪين بدران تصوير آزمايو.';

  @override
  String get unsupportedFileType => 'JPG، PNG يا PDF چونڊيو.';

  @override
  String get pickerUnavailable =>
      'اهو کلي نه سگهيو. ايپ جي ڪيمرا ۽ تصويرن جي اجازت چيڪ ڪريو.';

  @override
  String get uploadFailed =>
      'اهو اپلوڊ نه ٿي سگهيو. مهرباني ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get submitForVerification => 'تصديق لاءِ موڪليو';

  @override
  String get submitConfirmTitle => 'تصديق لاءِ موڪلجي؟';

  @override
  String get submitConfirmBody =>
      'جيستائين اسان جي ٽيم جائزو وٺي، توهان جا تفصيل ۽ دستاويز لاڪ رهندا. فيصلو ٿيڻ تائين توهان انهن کي تبديل نه ڪري سگهندا.';

  @override
  String get cancelLabel => 'منسوخ ڪريو';

  @override
  String get completeEverythingBeforeSubmitting =>
      'موڪلڻ کان اڳ هر قدم پورو ڪريو ۽ سڀ دستاويز اپلوڊ ڪريو.';

  @override
  String get checkTheHighlightedFields =>
      'نشان لڳل خانا چيڪ ڪري ٻيهر ڪوشش ڪريو.';

  @override
  String get underReviewTitle =>
      'اسان توهان جي دستاويزن جي تصديق ڪري رهيا آهيون';

  @override
  String get underReviewBody =>
      'اسان جي ٽيم عام طور تي ٻن ڪم وارن ڏينهن ۾ جائزو وٺي ٿي. منظوري ملندي ئي اسان توهان کي ٻڌائينداسين.';

  @override
  String get checkAgain => 'ٻيهر چيڪ ڪريو';

  @override
  String get stillUnderReview => 'اڃا جائزي هيٺ آهي';

  @override
  String get rejectedTitle => 'اسان توهان جي تصديق نه ڪري سگهياسين';

  @override
  String get rejectedBody =>
      'هيٺ اسان جي ٽيم جيڪو لکيو آهي اهو درست ڪريو، پوءِ پنهنجا دستاويز ٻيهر موڪليو.';

  @override
  String get rejectionReasonLabel => 'سبب';

  @override
  String get fixAndResubmit => 'درست ڪري ٻيهر موڪليو';

  @override
  String get blockedTitle => 'توهان اڃا آن لائن نٿا ٿي سگهو';

  @override
  String get documentsExpiredMessage =>
      'توهان جي لائسنس يا انشورنس جي مدت ختم ٿي وئي آهي. آن لائن ٿيڻ لاءِ نوان دستاويز اپلوڊ ڪريو.';

  @override
  String get awaitingVerificationMessage =>
      'توهان جي دستاويزن جي اڃا تصديق ٿي رهي آهي.';

  @override
  String get updateDocuments => 'دستاويز اپڊيٽ ڪريو';

  @override
  String get riderHomeTitle => 'ڊليوري لاءِ تيار';

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
      'آن لائن ٿيو ۽ اسان توهان کي ويجهيون ڊليوريون موڪلينداسين.';

  @override
  String get dutyStatusLabel => 'ڊيوٽي جي حالت';

  @override
  String get dutyOnline => 'آن لائن';

  @override
  String get dutyOffline => 'آف لائن';

  @override
  String get dutyOnBreak => 'بريڪ تي';

  @override
  String get goOnline => 'آن لائن ٿيو';

  @override
  String get goOffline => 'آف لائن ٿيو';

  @override
  String get takeABreak => 'بريڪ وٺو';

  @override
  String get waitingForOrders => 'ويجهن آرڊرن جو انتظار';

  @override
  String get youAreOffline =>
      'توهان آف لائن آهيو. توهان کي ڪا به ڊليوري نه موڪلي ويندي.';

  @override
  String get completedDeliveriesLabel => 'پوريون ڪيل ڊليوريون';

  @override
  String get ratingLabel => 'ريٽنگ';

  @override
  String get notRatedYet => 'اڃا ريٽنگ ناهي';

  @override
  String get vehicleLabel => 'گاڏي';

  @override
  String get kycStatusLabel => 'تصديق';

  @override
  String get kycPending => 'نه موڪليو ويو';

  @override
  String get kycSubmitted => 'جائزي هيٺ';

  @override
  String get kycVerified => 'منظور ٿيل';

  @override
  String get kycRejected => 'رد ٿيل';

  @override
  String get fieldRequired => 'هي خانو ضروري آهي';

  @override
  String get invalidAadhaar => 'پنهنجي آڌار نمبر جا 12 عدد داخل ڪريو';

  @override
  String get invalidPan => 'صحيح PAN داخل ڪريو، جيئن ABCDE1234F';

  @override
  String get invalidIfsc => 'صحيح IFSC ڪوڊ داخل ڪريو، جيئن SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'نمبر بلڪل ائين داخل ڪريو جيئن پليٽ تي لکيل آهي';

  @override
  String get invalidAccountNumber => 'صحيح اڪائونٽ نمبر داخل ڪريو';

  @override
  String get dateMustBeFuture => 'هي تاريخ گذري چڪي آهي';

  @override
  String get mustBeEighteen =>
      'ڊليوري ڪرڻ لاءِ توهان جي عمر گھٽ ۾ گھٽ 18 سال هجڻ گهرجي';

  @override
  String get docAadhaarFront => 'آڌار ڪارڊ (اڳيون پاسو)';

  @override
  String get docAadhaarBack => 'آڌار ڪارڊ (پويون پاسو)';

  @override
  String get docDrivingLicence => 'ڊرائيونگ لائسنس';

  @override
  String get docVehicleRc => 'گاڏي جو رجسٽريشن سرٽيفڪيٽ';

  @override
  String get docInsurance => 'گاڏي جي انشورنس';

  @override
  String get docProfilePhoto => 'پروفائل تصوير';

  @override
  String get docPan => 'PAN ڪارڊ';

  @override
  String get docBankProof => 'ڪينسل ٿيل چيڪ يا بينڪ اسٽيٽمينٽ';

  @override
  String get ordersTab => 'آرڊر';

  @override
  String get deliveryTab => 'ڊليوري';

  @override
  String get historyTab => 'هسٽري';

  @override
  String get orderBoardTitle => 'توهان جي ويجهو آرڊر';

  @override
  String get orderBoardSubtitle =>
      'سڀ کان ويجهو ريسٽورنٽ پهرين. لسٽ پاڻمرادو اپڊيٽ ٿيندي رهي ٿي.';

  @override
  String orderNumberLabel(String number) {
    return 'آرڊر $number';
  }

  @override
  String get pickupLabel => 'پڪ اپ';

  @override
  String get dropoffLabel => 'ڊليوري جو پتو';

  @override
  String distanceMetres(String metres) {
    return '$metres ميٽر';
  }

  @override
  String distanceKilometres(String km) {
    return '$km ڪلوميٽر';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count شيون',
      one: '1 شيء',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'توهان جي ڪمائي';

  @override
  String get collectCashLabel => 'نقد وٺو';

  @override
  String get prepaidLabel => 'آن لائن ادا ٿيل';

  @override
  String collectAtDoor(String amount) {
    return 'گراهڪ کان $amount وٺو';
  }

  @override
  String get nothingToCollect => 'اڳ ۾ ئي ادا ٿيل. پئسا نه گهرو.';

  @override
  String get acceptOrder => 'قبول ڪريو';

  @override
  String get viewOrder => 'ڏسو';

  @override
  String get orderAccepted => 'آرڊر قبول ٿي ويو. ريسٽورنٽ ڏانهن وڃو.';

  @override
  String get orderAlreadyTaken =>
      'هي آرڊر ٻئي رائيڊر وٺي ورتو. هي تازي لسٽ آهي.';

  @override
  String get orderNoLongerYours => 'هي آرڊر هاڻي توهان جو ناهي.';

  @override
  String get boardEmptyTitle => 'هن وقت ڪو آرڊر ناهي';

  @override
  String get boardEmptyBody =>
      'آن لائن رهو. ريسٽورنٽ مصروف ٿيندا ته لسٽ پاڻمرادو اپڊيٽ ٿيندي.';

  @override
  String get boardOfflineTitle => 'توهان آف لائن آهيو';

  @override
  String get boardOfflineBody => 'آرڊر حاصل ڪرڻ لاءِ آن لائن ٿيو.';

  @override
  String get boardBusyTitle => 'پهرين پنهنجي ڊليوري پوري ڪريو';

  @override
  String get boardBusyBody =>
      'هي آرڊر ڊليور ٿيڻ کان پوءِ توهان ٻيو آرڊر وٺي سگهو ٿا.';

  @override
  String get boardNoLocationTitle => 'اسان کي توهان جو مقام نٿو ملي';

  @override
  String get boardNoLocationBody =>
      'آرڊر ان حساب سان ترتيب ڏنل آهن ته ريسٽورنٽ ڪيترو ويجهو آهي، تنهنڪري ڪجهه ڏيکارڻ لاءِ اسان کي توهان جو مقام گهرجي.';

  @override
  String get boardNotVerifiedTitle => 'اڃا ڊليوري جي منظوري ناهي';

  @override
  String get activeDeliveryTitle => 'توهان جي ڊليوري';

  @override
  String get headToRestaurant => 'ريسٽورنٽ ڏانهن وڃو';

  @override
  String get deliverToCustomer => 'گراهڪ تائين پهچايو';

  @override
  String get noActiveDeliveryTitle => 'هٿ ۾ ڪو آرڊر ناهي';

  @override
  String get noActiveDeliveryBody =>
      'لسٽ مان ڪو آرڊر قبول ڪريو، اهو هتي نظر ايندو.';

  @override
  String get confirmPickupButton => 'مون آرڊر کڻي ورتو';

  @override
  String get pickupCodeTitle => 'پڪ اپ ڪوڊ';

  @override
  String get pickupCodeSubtitle => 'ريسٽورنٽ کان ڪوڊ پڇو ۽ هتي لکو.';

  @override
  String get pickupCodeHint => 'ڪوڊ';

  @override
  String get wrongPickupCode => 'اهو ڪوڊ غلط آهي. ريسٽورنٽ سان چيڪ ڪريو.';

  @override
  String get pickupConfirmed => 'آرڊر کنيو ويو. گراهڪ تائين پهچايو.';

  @override
  String get confirmDeliveryButton => 'ڊليور ٿي ويو';

  @override
  String get stepReachRestaurant => 'ريسٽورنٽ پهچو';

  @override
  String get stepPickUp => 'آرڊر کڻو';

  @override
  String get stepReachCustomer => 'گراهڪ تائين پهچو';

  @override
  String get stepDeliver => 'ڊليور ڪريو';

  @override
  String get swipePickUp => 'کڻڻ کان پوءِ سوائپ ڪريو';

  @override
  String get swipeDeliver => 'ڊليور ڪرڻ لاءِ سوائپ ڪريو';

  @override
  String get cashToCollectLabel => 'گراهڪ کان نقد وٺو';

  @override
  String get confirmDeliveryTitle => 'ڊليوري جي تصديق ڪريو';

  @override
  String get confirmDeliveryBody =>
      'تصديق تڏهن ئي ڪريو جڏهن آرڊر گراهڪ جي هٿ ۾ هجي.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'پهرين گراهڪ کان $amount وٺو، پوءِ تصديق ڪريو.';
  }

  @override
  String get deliveryConfirmed =>
      'ڊليور ٿي ويو. مهرباني، توهان ٻيهر آن لائن آهيو.';

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
  String get releaseOrderButton => 'واپس ڪريو';

  @override
  String get releaseOrderTitle => 'هي آرڊر واپس ڪجي؟';

  @override
  String get releaseOrderBody =>
      'اهو ٻئي رائيڊر لاءِ لسٽ تي واپس هليو ويندو. توهان ائين رڳو کاڌو کڻڻ کان اڳ ڪري سگهو ٿا.';

  @override
  String get releaseReasonHint => 'سبب (اختياري)';

  @override
  String get orderReleased =>
      'واپس ٿي ويو. اهو ٻين رائيڊرن لاءِ ٻيهر موجود آهي.';

  @override
  String get finishCurrentOrderFirst =>
      'پهرين پنهنجو موجوده آرڊر پورو ڪريو يا واپس ڪريو.';

  @override
  String get callRestaurant => 'ريسٽورنٽ کي ڪال ڪريو';

  @override
  String get callCustomer => 'گراهڪ کي ڪال ڪريو';

  @override
  String get openInMaps => 'رستو ڏسو';

  @override
  String get customerNoteLabel => 'گراهڪ جو نوٽ';

  @override
  String get orderItemsLabel => 'بيگ ۾ ڇا آهي';

  @override
  String get orderDetailsTitle => 'آرڊر جا تفصيل';

  @override
  String get historyTitle => 'پراڻيون ڊليوريون';

  @override
  String get historyEmptyTitle => 'اڃا ڪا ڊليوري ناهي';

  @override
  String get historyEmptyBody => 'توهان جا پورا ڪيل آرڊر هتي نظر ايندا.';

  @override
  String get historySearchHint => 'آرڊر يا ريسٽورنٽ ڳوليو';

  @override
  String get historyFilterAll => 'All';

  @override
  String get historyFilterWeek => 'This week';

  @override
  String get historyFilterMonth => 'This month';

  @override
  String get historyEarned => 'Earned';

  @override
  String get historyToday => 'اڄ';

  @override
  String get historyYesterday => 'ڪالهه';

  @override
  String get historyEarlier => 'اڳ جا';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ڊليوريون',
      one: '1 ڊليوري',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” سان ڪجهه نه مليو.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount نقد ورتا';
  }

  @override
  String get orderDelivered => 'ڊليور ٿي ويو';

  @override
  String get orderCancelled => 'رد ٿي ويو';

  @override
  String get orderPreparing => 'تيار ٿي رهيو آهي';

  @override
  String get orderReadyForPickup => 'کڻڻ لاءِ تيار';

  @override
  String get orderAssigned => 'توهان کي ڏنو ويو';

  @override
  String get orderPickedUp => 'کنيو ويو';

  @override
  String get orderOutForDelivery => 'رستي ۾';

  @override
  String get trackingOn => 'مقام شيئر ٿي رهيو آهي';

  @override
  String get locationUnavailableMessage =>
      'اسان توهان جو مقام پڙهي نٿا سگهون. مقام آن ڪريو ۽ Nexmile Rider کي اجازت ڏيو.';

  @override
  String get locationPermissionTitle => 'مقام گهرجي';

  @override
  String get locationPermissionBody =>
      'آرڊر ان حساب سان ورهايا وڃن ٿا ته توهان ڪيترو ويجهو آهيو، ۽ گراهڪ نقشي تي توهان کي ڏسي ٿو. آن لائن ٿيڻ لاءِ مقام جي اجازت ڏيو.';

  @override
  String get locationSettingsButton => 'سيٽنگون کوليو';

  @override
  String get enableLocationButton => 'مقام جي اجازت ڏيو';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'شفٽ';

  @override
  String get payoutsTitle => 'ادائيگيون';

  @override
  String get payoutsEntryValue => 'هفتيوار ڪمائي';

  @override
  String get payoutDetailsTitle => 'هفتيوار ادائيگي';

  @override
  String get payoutsEmptyTitle => 'اڃا ڪا ادائيگي ناهي';

  @override
  String get payoutsEmptyBody =>
      'هر هفتي جو حساب ٿيڻ کان پوءِ، ان هفتي جي توهان جي ڪمائي هتي نظر ايندي.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'زير التوا';

  @override
  String get payoutStatusProcessing => 'پروسيس ٿي رهي آهي';

  @override
  String get payoutStatusPaid => 'ادا ٿيل';

  @override
  String get payoutNotSentNote =>
      'هن هفتي جي توهان جي ڪمائي جو حساب ٿي ويو آهي. پئسا اڃا توهان جي بينڪ ۾ نه موڪليا ويا آهن.';

  @override
  String payoutPaidOn(String date) {
    return '$date تي توهان جي بينڪ ۾ موڪليا ويا';
  }

  @override
  String get payoutPaidNote => 'هن هفتي جو بينڪ ٽرانسفر ٿي ويو آهي.';

  @override
  String get payoutReferenceLabel => 'ٽرانسفر ريفرنس';

  @override
  String get payoutNetLabel => 'ملڻ واري رقم';

  @override
  String get payoutDeliveryEarnings => 'ڊليوري جي ڪمائي';

  @override
  String get payoutReferralEarnings => 'ريفرل جي ڪمائي';

  @override
  String get payoutCarriedIn => 'اڳئين هفتي مان';

  @override
  String get payoutCarriedInNote =>
      '₹100 کان گھٽ رقم اڪيلي ٽرانسفر نه ٿيندي آهي. ان جي بدران اها ايندڙ هفتي ۾ شامل ڪئي ويندي آهي.';

  @override
  String get payoutGross => 'ڪل ڪمائي';

  @override
  String get payoutDeductions => 'ڪٽوتيون';

  @override
  String get payoutsLatestWeek => 'تازو هفتو';

  @override
  String get payoutsPaidSoFar => 'هيستائين ادا ٿيل';

  @override
  String get payoutsNotYetSent => 'اڃا نه موڪليل';

  @override
  String get payoutsRecentWeeks => 'Recent weeks';

  @override
  String get payoutsHowTitle => 'How payouts work';

  @override
  String get payoutsHowBody =>
      'Each week\'s earnings are worked out after the week ends, then sent to your bank. Deductions such as TDS are listed in each week\'s breakdown.';

  @override
  String get payoutStepWorkedOut => 'حساب ٿي ويو';

  @override
  String get payoutStepSending => 'موڪلڻ جاري';

  @override
  String get payoutStepInBank => 'توهان جي بينڪ ۾';

  @override
  String get navToRestaurant => 'ريسٽورنٽ ڏانهن';

  @override
  String get navToCustomer => 'گراهڪ ڏانهن';

  @override
  String navHeadTowards(String place) {
    return '$place ڏانهن وڃو';
  }

  @override
  String navThen(String instruction) {
    return 'پوءِ: $instruction';
  }

  @override
  String get navArrived => 'توهان پهچي ويا آهيو';

  @override
  String navArrivedAt(String place) {
    return '$place تي';
  }

  @override
  String get navFindingRoute => 'بهترين رستو ڳولي رهيا آهيون…';

  @override
  String get navNoRoute =>
      'سڙڪ جو رستو موجود ناهي. سڌي لڪير وارو فاصلو ڏيکاري رهيا آهيون.';

  @override
  String get navFindingLocation => 'توهان جو مقام ڳولي رهيا آهيون…';

  @override
  String get navLocationOff => 'نيويگيشن لاءِ مقام آن ڪريو.';

  @override
  String get navEnd => 'نيويگيشن بند ڪريو';

  @override
  String get navRecentre => 'مرڪوز ڪريو';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes منٽ';
  }

  @override
  String get navStart => 'نيويگيٽ ڪريو';

  @override
  String get orderReachedRestaurant => 'ريسٽورنٽ تي';

  @override
  String get orderReachedCustomer => 'گراهڪ وٽ';

  @override
  String get reachedRestaurantButton => 'مان ريسٽورنٽ تي آهيان';

  @override
  String get reachedCustomerButton => 'مان گراهڪ وٽ آهيان';

  @override
  String get reachedRestaurantDone =>
      'ريسٽورنٽ کي خبر پئجي وئي ته توهان پهچي ويا آهيو';

  @override
  String get reachedCustomerDone => 'گراهڪ کي خبر پئجي وئي ته توهان ٻاهر آهيو';

  @override
  String get offerTitle => 'نئون آرڊر';

  @override
  String get offerYouEarn => 'توهان جي ڪمائي';

  @override
  String get offerPickup => 'پڪ اپ';

  @override
  String get offerDrop => 'ڊراپ';

  @override
  String offerAway(String distance) {
    return '$distance پري';
  }

  @override
  String offerTrip(String distance) {
    return '$distance جو سفر';
  }

  @override
  String offerItems(String count) {
    return '$count شيون';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount نقد وٺو';
  }

  @override
  String get offerPrepaid => 'اڳ ۾ ادا ٿيل · نقد ناهي';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'کاڌو لڳ ڀڳ $minutes منٽن ۾ تيار';
  }

  @override
  String get offerSwipeToAccept => 'قبول ڪرڻ لاءِ سوائپ ڪريو';

  @override
  String get offerAccepting => 'قبول ٿي رهيو آهي…';

  @override
  String get offerReject => 'رد ڪريو';

  @override
  String get offerRejectTitle => 'توهان رد ڇو ڪري رهيا آهيو؟';

  @override
  String get offerReasonTooFar => 'تمام پري';

  @override
  String get offerReasonBusy => 'هن وقت مصروف';

  @override
  String get offerReasonVehicle => 'گاڏي ۾ خرابي';

  @override
  String get offerReasonOther => 'ٻيو سبب';

  @override
  String get offerTaken => 'آرڊر ٻئي رائيڊر وٺي ورتو';

  @override
  String get offerAutoOffline =>
      '3 آرڊر وڃائڻ کان پوءِ توهان کي آف لائن ڪيو ويو. جڏهن تيار هجو، آن لائن ٿيو.';

  @override
  String get mockLocationBlocked =>
      'آرڊر حاصل ڪرڻ لاءِ جعلي مقام واري ڪا به ايپ بند ڪريو.';

  @override
  String get dropoffDoorLabel => 'فليٽ / منزل';

  @override
  String get dropoffStreetLabel => 'گلي';

  @override
  String get dropoffLandmarkLabel => 'نشاني';

  @override
  String get doorPhotoLabel => 'دروازي جي تصوير';

  @override
  String get doorPhotoHint => 'وڏو ڏسڻ لاءِ دٻايو';

  @override
  String get doorPhotoUnavailable => 'تصوير هن وقت دستياب ناهي';

  @override
  String permStepCount(int step, int total) {
    return '$total مان $step';
  }

  @override
  String get permNotNow => 'هينئر نه';

  @override
  String get permLocationTitle => 'مقام آن ڪريو';

  @override
  String get permLocationBody =>
      'آرڊر ريسٽورنٽ جي سڀ کان ويجهي رائيڊر ڏانهن وڃن ٿا، ۽ گراهڪ نقشي تي پنهنجي کاڌي کي ٽريڪ ڪن ٿا.';

  @override
  String get permLocationNearTitle => 'توهان جي ويجهو آرڊر';

  @override
  String get permLocationNearBody =>
      'اسان توهان کي ويجهن ريسٽورنٽن جا آرڊر ڏيون ٿا، ته جيئن توهان گھٽ سفر ڪريو ۽ وڌيڪ ڪمايو.';

  @override
  String get permLocationTrackTitle => 'لائيو ٽريڪنگ';

  @override
  String get permLocationTrackBody =>
      'گراهڪ توهان کي نقشي تي ڏسن ٿا، تنهنڪري توهان کي گھٽ ڪال ڪن ٿا.';

  @override
  String get permLocationOnlineTitle => 'رڳو جڏهن توهان آن لائن هجو';

  @override
  String get permLocationOnlineBody =>
      'آف لائن ٿيو ته اهو بند ٿي ويندو. جڏهن به اهو استعمال ۾ هوندو، هڪ نوٽيفڪيشن نظر ايندو.';

  @override
  String get permLocationAllow => 'مقام جي اجازت ڏيو';

  @override
  String get permNotifyTitle => 'ڪو به آرڊر نه وڃايو';

  @override
  String get permNotifyBody =>
      'نوان آرڊر فون ڪال وانگر وڄن ٿا، توڙي جو توهان جي اسڪرين لاڪ هجي.';

  @override
  String get permNotifyRingTitle => 'وڄندڙ آرڊر الرٽ';

  @override
  String get permNotifyRingBody => 'سڌو الرٽ مان ئي قبول يا رد ڪريو.';

  @override
  String get permNotifyUpdatesTitle => 'ادائيگيون ۽ منظوريون';

  @override
  String get permNotifyUpdatesBody =>
      'ڄاڻو ته توهان جا دستاويز ڪڏهن منظور ٿين ٿا ۽ پئسا ڪڏهن موڪليا وڃن ٿا.';

  @override
  String get permNotifyControlTitle => 'ڪنٽرول توهان جي هٿ ۾';

  @override
  String get permNotifyControlBody =>
      'پنهنجي فون جي سيٽنگن ۾ ڪنهن به وقت تبديل ڪريو.';

  @override
  String get permNotifyAllow => 'نوٽيفڪيشن آن ڪريو';

  @override
  String get permBatteryTitle => 'آرڊر ملندا رهن';

  @override
  String get permBatteryBody =>
      'فون بيٽري بچائڻ لاءِ پس منظر ۾ ايپون بند ڪري ڇڏيندا آهن. جڏهن توهان آن لائن هجو ته Nexmile Rider کي هلندو رهڻ ڏيو.';

  @override
  String get permBatteryOrdersTitle => 'ڪو به آرڊر نه رهجندو';

  @override
  String get permBatteryOrdersBody =>
      'ايپ بند هجي ۽ فون کيسي ۾ هجي، تڏهن به آرڊر توهان تائين پهچن ٿا.';

  @override
  String get permBatteryLiveTitle => 'ٽريڪنگ لائيو رهي ٿي';

  @override
  String get permBatteryLiveBody =>
      'جيستائين توهان ڊليور نٿا ڪريو، گراهڪ توهان کي نقشي تي ڏسندا رهن ٿا.';

  @override
  String get permBatteryLightTitle => 'گھٽ بيٽري خرچ';

  @override
  String get permBatteryLightBody =>
      'ايپ رڳو تڏهن وڌيڪ ڪم ڪري ٿي جڏهن توهان آن لائن هجو.';

  @override
  String get permBatteryAllow => 'پس منظر ۾ هلڻ جي اجازت ڏيو';

  @override
  String get permFullScreenTitle => 'لاڪ اسڪرين تي آرڊر';

  @override
  String get permFullScreenBody =>
      'نون آرڊرن کي ايندڙ ڪال وانگر لاڪ اسڪرين مٿان ڏيکارڻ ڏيو، ته جيئن توهان هڪ ئي ٽيپ ۾ قبول ڪري سگهو.';

  @override
  String get permFullScreenCallTitle => 'ڪال وانگر جواب ڏيو';

  @override
  String get permFullScreenCallBody =>
      'فون انلاڪ ڪرڻ کان سواءِ آرڊر ڏسو ۽ قبول ڪريو.';

  @override
  String get permFullScreenTimeTitle => 'وقت تي جواب ڏيو';

  @override
  String get permFullScreenTimeBody =>
      'جنهن آرڊر جو توهان جواب نه ڏيو، اهو ٻئي رائيڊر ڏانهن هليو ويندو.';

  @override
  String get permFullScreenOnlyTitle => 'رڳو نون آرڊرن لاءِ';

  @override
  String get permFullScreenOnlyBody =>
      'ٻيو ڪجهه به توهان جي لاڪ اسڪرين مٿان ڪڏهن به نه ايندو.';

  @override
  String get setupTitle => 'فون سيٽ اپ';

  @override
  String get setupIntro =>
      'اهي پورا ڪريو ته جيئن ايپ بند هجي يا فون لاڪ هجي، تڏهن به نوان آرڊر وڄن.';

  @override
  String get setupNotifications => 'نوٽيفڪيشن';

  @override
  String get setupNotificationsBody => 'ته جيئن نوان آرڊر وڄن ۽ نظر اچن.';

  @override
  String get setupFullScreen => 'فل اسڪرين آرڊر الرٽ';

  @override
  String get setupFullScreenBody =>
      'نئون آرڊر ڪال وانگر توهان جي لاڪ اسڪرين تي ڏيکاري ٿو.';

  @override
  String get setupBattery => 'بيٽري: آپٽمائيز نه ڪريو';

  @override
  String get setupBatteryBody =>
      'جڏهن توهان آن لائن هجو ته فون کي ايپ بند ڪرڻ کان روڪي ٿو.';

  @override
  String get setupAutostart => 'آٽو اسٽارٽ';

  @override
  String setupAutostartBody(String brand) {
    return '$brand فونن ۾ Nexmile Rider لاءِ آٽو اسٽارٽ به آن هجڻ گهرجي. سيٽنگون کوليو، آٽو اسٽارٽ ڳوليو ۽ ان کي آن ڪريو.';
  }

  @override
  String get setupLocation => 'مقام';

  @override
  String get setupLocationBody => 'توهان کي ويجها آرڊر موڪلڻ لاءِ گهرجي.';

  @override
  String get setupAllow => 'اجازت ڏيو';

  @override
  String get setupOpenSettings => 'سيٽنگون کوليو';

  @override
  String get setupMarkDone => 'مون هي ڪري ورتو';

  @override
  String get setupDoneStep => 'ٿي ويو';

  @override
  String get setupBannerTitle => 'فون سيٽ اپ پورو ڪريو';

  @override
  String setupBannerBody(String count) {
    return '$count باقي، ته جيئن ڪو آرڊر الرٽ نه رهجي';
  }

  @override
  String get offerEstimatedEarnings => 'اندازي مطابق ڪمائي';

  @override
  String offerPickupLine(String name) {
    return 'پڪ اپ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ڊراپ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'توهان کان لڳ ڀڳ $distance پري';
  }

  @override
  String get exitTitle => 'Nexmile Rider مان نڪرجي؟';

  @override
  String get exitBody => 'ڇا توهان واقعي ايپ مان نڪرڻ چاهيو ٿا؟';

  @override
  String get exitConfirm => 'نڪرو';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ڊليوري پارٽنر بڻجو';

  @override
  String get onboardingWelcomeSubtitle =>
      'پنهنجي علائقي ۾ ڊليوري ڪريو، پنهنجا ڪلاڪ پاڻ چونڊيو، ۽ هر هفتي پئسا وٺو.';

  @override
  String get onboardingWelcomeNeed => 'اهي تيار رکو';

  @override
  String get onboardingNeedAadhaar => 'آڌار ڪارڊ';

  @override
  String get onboardingNeedPan => 'PAN ڪارڊ';

  @override
  String get onboardingNeedLicence => 'ڊرائيونگ لائسنس ۽ گاڏي جو RC';

  @override
  String get onboardingNeedInsurance => 'گاڏي جي انشورنس';

  @override
  String get onboardingNeedBank => 'بينڪ اڪائونٽ جا تفصيل';

  @override
  String get onboardingNeedNote =>
      'سائيڪل تي يا پيدل؟ توهان کي رڳو آڌار، PAN ۽ بينڪ اڪائونٽ گهرجي.';

  @override
  String get onboardingWelcomeTime => 'لڳ ڀڳ 10 منٽ لڳن ٿا';

  @override
  String get onboardingGetStarted => 'شروع ڪريو';

  @override
  String get onboardingSavedNote => 'هر قدم کان پوءِ حفاظت سان محفوظ ٿئي ٿو';

  @override
  String get docsTip => 'سٺي روشني ۾ صاف تصويرون سڀ کان جلدي منظور ٿين ٿيون.';

  @override
  String get docsAllDone =>
      'سڀ لازمي دستاويز اچي ويا آهن. جائزي لاءِ اڳتي وڌو.';

  @override
  String get docGroupIdentity => 'سڃاڻپ جو ثبوت';

  @override
  String get docGroupVehicle => 'لائسنس ۽ گاڏي جا ڪاغذ';

  @override
  String get docGroupMore => 'ٻيا دستاويز';

  @override
  String get docTapToAdd => 'شامل ڪرڻ لاءِ دٻايو';

  @override
  String get docUploading => 'اپلوڊ ٿي رهيو آهي…';

  @override
  String get docView => 'ڏسو';

  @override
  String get docSheetSubtitle => 'پهرين ڀيري ۾ ئي منظوري ڪيئن وٺجي';

  @override
  String get docTipCorners => 'چارئي ڪنڊون تصوير اندر';

  @override
  String get docTipGlare => 'صاف لکت، ڪا چمڪ يا پاڇو نه';

  @override
  String get docTipOriginal => 'اصل دستاويز، فوٽو ڪاپي نه';

  @override
  String get docTipFace => 'توهان جو منهن صاف نظر اچي، سڌو سامهون ڏسندي';

  @override
  String get docTipBackground => 'سادو پس منظر ۽ سٺي روشني';

  @override
  String get docTipNoCap => 'ٽوپي، ماسڪ يا ڪارا چشما نه';

  @override
  String get docTipFullPage => 'پورو صفحو، هر سٽ پڙهڻ جوڳي';

  @override
  String get docSourceCamera => 'ڪيمرا';

  @override
  String get docSourceGallery => 'گيلري';

  @override
  String get docSourceFile => 'PDF يا فائل';

  @override
  String get reviewSectionDetails => 'توهان جا تفصيل';

  @override
  String get reviewSectionDocuments => 'دستاويز';

  @override
  String get reviewSectionBank => 'بينڪ اڪائونٽ';

  @override
  String get reviewBankHidden => 'شامل ٿيل · توهان جي حفاظت لاءِ لڪيل';

  @override
  String get reviewEdit => 'تبديل ڪريو';

  @override
  String get reviewNextTitle => 'اڳتي ڇا ٿيندو';

  @override
  String get reviewNext1 => 'توهان پنهنجي درخواست موڪليو ٿا';

  @override
  String get reviewNext2 => 'اسان جي ٽيم توهان جا تفصيل ۽ دستاويز چيڪ ڪري ٿي';

  @override
  String get reviewNext3 =>
      'توهان کي خبر ڏني ويندي، پوءِ آن لائن ٿيو ۽ ڪمائڻ شروع ڪريو';

  @override
  String get kycStepSubmitted => 'درخواست موڪلي وئي';

  @override
  String get kycStepVerifying => 'توهان جي دستاويزن جي تصديق ٿي رهي آهي';

  @override
  String get kycStepApproved => 'منظور — آن لائن ٿيو ۽ ڪمائڻ شروع ڪريو';
}
