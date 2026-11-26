// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appName => 'Nexmile Rider';

  @override
  String get tagline => 'ઝડપી ડિલિવરી. તાજા સ્મિત.';

  @override
  String get chooseLanguageTitle => 'તમારી ભાષા પસંદ કરો';

  @override
  String get chooseLanguageSubtitle =>
      'તમને અનુકૂળ હોય તે ભાષા પસંદ કરો. તમે તેને કોઈપણ સમયે સેટિંગ્સમાં બદલી શકો છો.';

  @override
  String get searchLanguageHint => 'ભાષા શોધો';

  @override
  String get noLanguageFound => 'કોઈ ભાષા મળી નથી';

  @override
  String languagesAvailable(int count) {
    return '$count ભાષાઓ ઉપલબ્ધ છે';
  }

  @override
  String get continueLabel => 'આગળ વધો';

  @override
  String get selectedLabel => 'પસંદ કરેલ';

  @override
  String get defaultLabel => 'ડિફૉલ્ટ';

  @override
  String get homeTitle => 'Nexmile માં આપનું સ્વાગત છે';

  @override
  String get homeSubtitle =>
      'તાજું કરિયાણું, ગરમ ખોરાક અને રોજિંદી જરૂરિયાતો તમારી નજીકની દુકાનોમાંથી.';

  @override
  String get changeLanguage => 'ભાષા બદલો';

  @override
  String get languageUpdated => 'ભાષા બદલાઈ ગઈ';

  @override
  String get appLanguageLabel => 'એપની ભાષા';

  @override
  String greetingNamed(String name) {
    return 'નમસ્તે, $name';
  }

  @override
  String get loginTitle => 'Nexmile માં સાઇન ઇન કરો';

  @override
  String get loginSubtitle =>
      'તમારો ઇમેઇલ અથવા મોબાઇલ નંબર દાખલ કરો, અમે ચકાસણી કોડ મોકલીશું.';

  @override
  String get emailOrPhoneLabel => 'ઇમેઇલ અથવા મોબાઇલ નંબર';

  @override
  String get emailOrPhoneHint => 'name@example.com અથવા 9876543210';

  @override
  String get invalidEmailOrPhone =>
      'માન્ય ઇમેઇલ સરનામું અથવા 10 અંકનો મોબાઇલ નંબર દાખલ કરો';

  @override
  String get loginHeadline => 'Nexmile સાથે ડિલિવરી કરો. તમારા સમયે કમાઓ.';

  @override
  String get loginOrSignUp => 'લૉગ ઇન અથવા સાઇન અપ કરો';

  @override
  String get loginEmailHint => 'તમારું ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get invalidEmail => 'માન્ય ઇમેઇલ સરનામું દાખલ કરો';

  @override
  String get loginHeroBadge => 'ડિલિવરી પાર્ટનર';

  @override
  String get sendCode => 'કોડ મોકલો';

  @override
  String get agreeToTermsOnContinue =>
      'આગળ વધીને તમે અમારી સેવાની શરતો અને ગોપનીયતા નીતિ સાથે સંમત થાઓ છો.';

  @override
  String get otpTitle => 'ખાતરી કરો કે આ તમે જ છો';

  @override
  String otpSubtitle(String target) {
    return '$target પર મોકલેલ 6 અંકનો કોડ દાખલ કરો';
  }

  @override
  String get otpHelpTitle => 'કોડ નથી મળ્યો?';

  @override
  String get otpHelpCheck =>
      'ઉપર આપેલો નંબર કે ઇમેઇલ તપાસો. તેને બદલવા માટે પાછા જાઓ.';

  @override
  String get otpHelpWait =>
      'કોડ આવતાં એક મિનિટ જેટલો સમય લાગી શકે છે. ટાઇમર પૂરો થાય પછી તમે નવો કોડ મંગાવી શકો છો.';

  @override
  String get otpHelpSpam => 'ઇમેઇલ માટે, તમારું સ્પામ ફોલ્ડર પણ જુઓ.';

  @override
  String get verifyCode => 'ચકાસો';

  @override
  String get resendCode => 'કોડ ફરી મોકલો';

  @override
  String resendCodeIn(int seconds) {
    return '$seconds સેકંડમાં ફરી મોકલો';
  }

  @override
  String get codeResent => 'નવો કોડ મોકલી દીધો છે';

  @override
  String get incorrectCode =>
      'આ કોડ ખોટો છે અથવા સમાપ્ત થઈ ગયો છે. નવો કોડ મંગાવો.';

  @override
  String get enterFullCode => 'પૂરા 6 અંક દાખલ કરો';

  @override
  String get accountSuspended =>
      'આ ખાતું સ્થગિત કરવામાં આવ્યું છે. કૃપા કરી સપોર્ટનો સંપર્ક કરો.';

  @override
  String get tooManyAttempts =>
      'ઘણા બધા પ્રયાસો થયા. કૃપા કરી થોડી વાર પછી ફરી પ્રયાસ કરો.';

  @override
  String get sessionExpired =>
      'તમારું સત્ર સમાપ્ત થઈ ગયું છે. કૃપા કરી ફરી સાઇન ઇન કરો.';

  @override
  String get networkError =>
      'ઇન્ટરનેટ કનેક્શન નથી. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get developmentCode => 'ડેવલપમેન્ટ કોડ';

  @override
  String get signOut => 'સાઇન આઉટ';

  @override
  String get signedOut => 'તમે સાઇન આઉટ થઈ ગયા છો';

  @override
  String get somethingWentWrong => 'કંઈક ખોટું થયું. ફરી પ્રયાસ કરો.';

  @override
  String get profileTitle => 'પ્રોફાઇલ';

  @override
  String get profileSectionDetails => 'તમારી વિગતો';

  @override
  String get profileSectionWork => 'કામ';

  @override
  String get profileSectionApp => 'એપ સેટિંગ્સ';

  @override
  String get viewProfile => 'પ્રોફાઇલ જુઓ';

  @override
  String get nameLabel => 'નામ';

  @override
  String get emailLabel => 'ઇમેઇલ';

  @override
  String get mobileLabel => 'મોબાઇલ નંબર';

  @override
  String get accountStatusLabel => 'ખાતાની સ્થિતિ';

  @override
  String get statusActive => 'સક્રિય';

  @override
  String get statusPending => 'બાકી';

  @override
  String get statusSuspended => 'સ્થગિત';

  @override
  String get verifiedLabel => 'ચકાસાયેલ';

  @override
  String get notProvided => 'ઉમેર્યું નથી';

  @override
  String get retry => 'ફરી પ્રયાસ કરો';

  @override
  String get loginRiderNote => 'આ એપ Nexmile ડિલિવરી પાર્ટનર માટે છે.';

  @override
  String get checkingYourAccount => 'તમારું ખાતું તપાસી રહ્યા છીએ';

  @override
  String get couldNotLoadAccount =>
      'તમારું ખાતું લોડ થઈ શક્યું નહીં. તમારું કનેક્શન તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get notARiderAccountTitle => 'આ ડિલિવરી પાર્ટનર ખાતું નથી';

  @override
  String get notARiderAccount =>
      'આ ઇમેઇલ અથવા મોબાઇલ નંબર પહેલેથી જ બીજા Nexmile ખાતા પર નોંધાયેલો છે. ડિલિવરી પાર્ટનર તરીકે જોડાવા માટે સાઇન આઉટ કરો અને બીજો ઇમેઇલ કે નંબર વાપરો.';

  @override
  String notARiderAccountFor(String role) {
    return 'આ ઇમેઇલ અથવા મોબાઇલ નંબર પહેલેથી જ Nexmile $role તરીકે નોંધાયેલો છે. ડિલિવરી પાર્ટનર તરીકે જોડાવા માટે સાઇન આઉટ કરો અને બીજો ઇમેઇલ કે નંબર વાપરો.';
  }

  @override
  String get roleCustomer => 'ગ્રાહક';

  @override
  String get roleMerchant => 'વેપારી';

  @override
  String get roleAdmin => 'એડમિન';

  @override
  String get useAnotherAccount => 'બીજું ખાતું વાપરો';

  @override
  String get onboardingTitle => 'Nexmile પાર્ટનર બનો';

  @override
  String get onboardingSubtitle =>
      'થોડી વિગતો અને તમારા દસ્તાવેજો આપો, પછી અમારી ટીમ તમારી ચકાસણી કરશે. સામાન્ય રીતે આમાં બે કામકાજના દિવસ સુધી લાગે છે.';

  @override
  String stepOfSteps(int current, int total) {
    return '$total માંથી પગલું $current';
  }

  @override
  String get stepIdentityTitle => 'તમારા વિશે';

  @override
  String get stepIdentitySubtitle =>
      'તમારું નામ આધાર કાર્ડ પર જે રીતે લખેલું છે બરાબર તે જ રીતે દાખલ કરો.';

  @override
  String get stepVehicleTitle => 'તમારું વાહન';

  @override
  String get stepVehicleSubtitle =>
      'તમે કયું વાહન ચલાવો છો અને તેની નંબર પ્લેટ શું છે તે જણાવો.';

  @override
  String get stepIdentityNumbersTitle => 'ઓળખ નંબર';

  @override
  String get stepIdentityNumbersSubtitle =>
      'આ નંબર તમે પછી અપલોડ કરો તે દસ્તાવેજો સાથે મેળ ખાતા હોવા જોઈએ.';

  @override
  String get stepLicenceTitle => 'લાઇસન્સ અને વીમો';

  @override
  String get stepLicenceSubtitle =>
      'તમે ડિલિવરી શરૂ કરો તે દિવસે બંને માન્ય હોવા જોઈએ.';

  @override
  String get stepBankTitle => 'તમને પૈસા ક્યાં મળશે';

  @override
  String get stepBankSubtitle =>
      'તમારી કમાણી આ ખાતામાં જમા થશે. ધ્યાનથી તપાસી લો.';

  @override
  String get stepDocumentsTitle => 'તમારા દસ્તાવેજો';

  @override
  String get stepDocumentsSubtitle =>
      'દરેકનો સારા પ્રકાશમાં ફોટો પાડો. JPG, PNG અથવા PDF, દરેક 5 MB સુધી.';

  @override
  String get stepReviewTitle => 'તપાસો અને સબમિટ કરો';

  @override
  String get stepReviewSubtitle =>
      'સબમિટ કર્યા પછી, અમારી ટીમ તપાસ પૂરી કરે ત્યાં સુધી તમારી વિગતો લૉક રહેશે.';

  @override
  String get saveAndContinue => 'સાચવો અને આગળ વધો';

  @override
  String get backLabel => 'પાછા';

  @override
  String get fullNameLabel => 'પૂરું નામ';

  @override
  String get fullNameHint => 'આધાર પર લખ્યા મુજબ';

  @override
  String get dateOfBirthLabel => 'જન્મ તારીખ';

  @override
  String get selectDate => 'તારીખ પસંદ કરો';

  @override
  String get vehicleTypeLabel => 'વાહનનો પ્રકાર';

  @override
  String get vehicleMotorcycle => 'મોટરસાઇકલ';

  @override
  String get vehicleScooter => 'સ્કૂટર';

  @override
  String get vehicleEv => 'ઇલેક્ટ્રિક વાહન';

  @override
  String get vehicleBicycle => 'સાઇકલ';

  @override
  String get vehicleWalk => 'ચાલીને';

  @override
  String get vehicleNoPapersNote =>
      'વાહન નંબર કે RC ની જરૂર નથી. તમારી પાસે ફક્ત આધાર અને PAN માંગવામાં આવશે.';

  @override
  String get vehicleNumberLabel => 'વાહન નંબર';

  @override
  String get vehicleNumberHint => 'TN01AB1234';

  @override
  String get rcNumberLabel => 'RC નંબર';

  @override
  String get aadhaarLabel => 'આધાર નંબર';

  @override
  String get aadhaarHint => '12 અંક';

  @override
  String get panLabel => 'PAN';

  @override
  String get panHint => 'ABCDE1234F';

  @override
  String get drivingLicenceNoLabel => 'ડ્રાઇવિંગ લાઇસન્સ નંબર';

  @override
  String get drivingLicenceExpiryLabel => 'લાઇસન્સ આ તારીખ સુધી માન્ય';

  @override
  String get insuranceNumberLabel => 'વીમા પૉલિસી નંબર';

  @override
  String get insuranceExpiryLabel => 'વીમો આ તારીખ સુધી માન્ય';

  @override
  String get bankAccountNameLabel => 'ખાતેદારનું નામ';

  @override
  String get bankAccountNumberLabel => 'ખાતા નંબર';

  @override
  String get bankIfscLabel => 'IFSC કોડ';

  @override
  String get bankIfscHint => 'SBIN0001234';

  @override
  String documentsProgress(int done, int total) {
    return '$total માંથી $done અપલોડ થયા';
  }

  @override
  String get uploadDocument => 'અપલોડ કરો';

  @override
  String get replaceDocument => 'બદલો';

  @override
  String get removeDocument => 'દૂર કરો';

  @override
  String get takePhoto => 'ફોટો પાડો';

  @override
  String get chooseFromGallery => 'ગેલેરીમાંથી પસંદ કરો';

  @override
  String get chooseFile => 'ફાઇલ પસંદ કરો';

  @override
  String get uploadingLabel => 'અપલોડ થઈ રહ્યું છે';

  @override
  String get documentRejected => 'નામંજૂર';

  @override
  String get documentUploaded => 'અપલોડ થયું';

  @override
  String get documentApproved => 'મંજૂર';

  @override
  String get documentRequired => 'જરૂરી';

  @override
  String get documentOptional => 'વૈકલ્પિક';

  @override
  String get fileTooLarge =>
      'આ ફાઇલ 5 MB થી મોટી છે. સ્કૅનને બદલે ફોટો અજમાવો.';

  @override
  String get unsupportedFileType => 'JPG, PNG અથવા PDF પસંદ કરો.';

  @override
  String get pickerUnavailable =>
      'તે ખોલી શકાયું નહીં. એપની કૅમેરા અને ફોટોની પરવાનગી તપાસો.';

  @override
  String get uploadFailed => 'અપલોડ થઈ શક્યું નહીં. કૃપા કરી ફરી પ્રયાસ કરો.';

  @override
  String get submitForVerification => 'ચકાસણી માટે સબમિટ કરો';

  @override
  String get submitConfirmTitle => 'ચકાસણી માટે સબમિટ કરવું છે?';

  @override
  String get submitConfirmBody =>
      'અમારી ટીમ તપાસે ત્યાં સુધી તમારી વિગતો અને દસ્તાવેજો લૉક રહેશે. નિર્ણય ન આવે ત્યાં સુધી તમે તેમાં ફેરફાર કરી શકશો નહીં.';

  @override
  String get cancelLabel => 'રદ કરો';

  @override
  String get completeEverythingBeforeSubmitting =>
      'સબમિટ કરતાં પહેલાં દરેક પગલું પૂરું કરો અને બધા દસ્તાવેજો અપલોડ કરો.';

  @override
  String get checkTheHighlightedFields =>
      'હાઇલાઇટ કરેલાં ક્ષેત્રો તપાસો અને ફરી પ્રયાસ કરો.';

  @override
  String get underReviewTitle => 'અમે તમારા દસ્તાવેજોની ચકાસણી કરી રહ્યા છીએ';

  @override
  String get underReviewBody =>
      'અમારી ટીમ સામાન્ય રીતે બે કામકાજના દિવસમાં તપાસ કરે છે. તમે મંજૂર થતાં જ અમે તમને જાણ કરીશું.';

  @override
  String get checkAgain => 'ફરી તપાસો';

  @override
  String get stillUnderReview => 'હજી તપાસ ચાલુ છે';

  @override
  String get rejectedTitle => 'અમે તમારી ચકાસણી કરી શક્યા નહીં';

  @override
  String get rejectedBody =>
      'અમારી ટીમે નીચે જણાવેલી બાબતો સુધારો, પછી તમારા દસ્તાવેજો ફરી મોકલો.';

  @override
  String get rejectionReasonLabel => 'કારણ';

  @override
  String get fixAndResubmit => 'સુધારો અને ફરી સબમિટ કરો';

  @override
  String get blockedTitle => 'તમે હજી ઓનલાઇન થઈ શકતા નથી';

  @override
  String get documentsExpiredMessage =>
      'તમારા લાઇસન્સ કે વીમાની મુદત પૂરી થઈ ગઈ છે. ઓનલાઇન થવા માટે માન્ય દસ્તાવેજો અપલોડ કરો.';

  @override
  String get awaitingVerificationMessage =>
      'તમારા દસ્તાવેજોની ચકાસણી હજી ચાલુ છે.';

  @override
  String get updateDocuments => 'દસ્તાવેજો અપડેટ કરો';

  @override
  String get riderHomeTitle => 'ડિલિવરી માટે તૈયાર';

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
      'ઓનલાઇન થાઓ, અમે તમને નજીકની ડિલિવરી મોકલીશું.';

  @override
  String get dutyStatusLabel => 'ડ્યુટીની સ્થિતિ';

  @override
  String get dutyOnline => 'ઓનલાઇન';

  @override
  String get dutyOffline => 'ઑફલાઇન';

  @override
  String get dutyOnBreak => 'બ્રેક પર';

  @override
  String get goOnline => 'ઓનલાઇન થાઓ';

  @override
  String get goOffline => 'ઑફલાઇન થાઓ';

  @override
  String get takeABreak => 'બ્રેક લો';

  @override
  String get waitingForOrders => 'નજીકના ઓર્ડરની રાહ જોઈ રહ્યા છીએ';

  @override
  String get youAreOffline =>
      'તમે ઑફલાઇન છો. તમને કોઈ ડિલિવરી મોકલવામાં આવશે નહીં.';

  @override
  String get completedDeliveriesLabel => 'પૂરી થયેલી ડિલિવરી';

  @override
  String get ratingLabel => 'રેટિંગ';

  @override
  String get notRatedYet => 'હજી કોઈ રેટિંગ નથી';

  @override
  String get vehicleLabel => 'વાહન';

  @override
  String get kycStatusLabel => 'ચકાસણી';

  @override
  String get kycPending => 'સબમિટ કર્યું નથી';

  @override
  String get kycSubmitted => 'તપાસ ચાલુ છે';

  @override
  String get kycVerified => 'મંજૂર';

  @override
  String get kycRejected => 'નામંજૂર';

  @override
  String get fieldRequired => 'આ ક્ષેત્ર જરૂરી છે';

  @override
  String get invalidAadhaar => 'તમારા આધાર નંબરના 12 અંક દાખલ કરો';

  @override
  String get invalidPan => 'માન્ય PAN દાખલ કરો, જેમ કે ABCDE1234F';

  @override
  String get invalidIfsc => 'માન્ય IFSC કોડ દાખલ કરો, જેમ કે SBIN0001234';

  @override
  String get invalidVehicleNumber =>
      'નંબર પ્લેટ પર લખેલો છે બરાબર તે જ રીતે નંબર દાખલ કરો';

  @override
  String get invalidAccountNumber => 'માન્ય ખાતા નંબર દાખલ કરો';

  @override
  String get dateMustBeFuture => 'આ તારીખ વીતી ગઈ છે';

  @override
  String get mustBeEighteen =>
      'ડિલિવરી કરવા માટે તમારી ઉંમર ઓછામાં ઓછી 18 વર્ષ હોવી જોઈએ';

  @override
  String get docAadhaarFront => 'આધાર કાર્ડ (આગળની બાજુ)';

  @override
  String get docAadhaarBack => 'આધાર કાર્ડ (પાછળની બાજુ)';

  @override
  String get docDrivingLicence => 'ડ્રાઇવિંગ લાઇસન્સ';

  @override
  String get docVehicleRc => 'વાહન રજિસ્ટ્રેશન સર્ટિફિકેટ';

  @override
  String get docInsurance => 'વાહન વીમો';

  @override
  String get docProfilePhoto => 'પ્રોફાઇલ ફોટો';

  @override
  String get docPan => 'PAN કાર્ડ';

  @override
  String get docBankProof => 'રદ કરેલો ચેક અથવા બેંક સ્ટેટમેન્ટ';

  @override
  String get ordersTab => 'ઓર્ડર';

  @override
  String get deliveryTab => 'ડિલિવરી';

  @override
  String get historyTab => 'ઇતિહાસ';

  @override
  String get orderBoardTitle => 'તમારી નજીકના ઓર્ડર';

  @override
  String get orderBoardSubtitle =>
      'સૌથી નજીકનું રેસ્ટોરાં પહેલાં. યાદી આપોઆપ અપડેટ થાય છે.';

  @override
  String orderNumberLabel(String number) {
    return 'ઓર્ડર $number';
  }

  @override
  String get pickupLabel => 'પિકઅપ';

  @override
  String get dropoffLabel => 'ડિલિવરી સરનામું';

  @override
  String distanceMetres(String metres) {
    return '$metres મી';
  }

  @override
  String distanceKilometres(String km) {
    return '$km કિમી';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count વસ્તુઓ',
      one: '1 વસ્તુ',
    );
    return '$_temp0';
  }

  @override
  String get earningsLabel => 'તમારી કમાણી';

  @override
  String get collectCashLabel => 'રોકડ લો';

  @override
  String get prepaidLabel => 'ઓનલાઇન ચૂકવેલ';

  @override
  String collectAtDoor(String amount) {
    return 'ગ્રાહક પાસેથી $amount રોકડ લો';
  }

  @override
  String get nothingToCollect => 'ચુકવણી થઈ ગઈ છે. પૈસા માંગશો નહીં.';

  @override
  String get acceptOrder => 'સ્વીકારો';

  @override
  String get viewOrder => 'જુઓ';

  @override
  String get orderAccepted => 'ઓર્ડર સ્વીકાર્યો. રેસ્ટોરાં તરફ જાઓ.';

  @override
  String get orderAlreadyTaken =>
      'આ ઓર્ડર બીજા રાઇડરે લઈ લીધો. આ રહી નવી યાદી.';

  @override
  String get orderNoLongerYours => 'આ ઓર્ડર હવે તમારો નથી.';

  @override
  String get boardEmptyTitle => 'અત્યારે કોઈ ઓર્ડર નથી';

  @override
  String get boardEmptyBody =>
      'ઓનલાઇન રહો. રેસ્ટોરાંમાં ઓર્ડર વધે તેમ યાદી આપોઆપ અપડેટ થશે.';

  @override
  String get boardOfflineTitle => 'તમે ઑફલાઇન છો';

  @override
  String get boardOfflineBody => 'ઓર્ડર મેળવવા ઓનલાઇન થાઓ.';

  @override
  String get boardBusyTitle => 'પહેલાં તમારી ડિલિવરી પૂરી કરો';

  @override
  String get boardBusyBody =>
      'આ ઓર્ડર ડિલિવર થાય પછી તમે બીજો ઓર્ડર લઈ શકો છો.';

  @override
  String get boardNoLocationTitle => 'તમારું લોકેશન મળતું નથી';

  @override
  String get boardNoLocationBody =>
      'ઓર્ડર રેસ્ટોરાં કેટલું નજીક છે તે મુજબ ગોઠવાય છે, તેથી કંઈ પણ બતાવવા માટે અમને તમારું લોકેશન જોઈએ.';

  @override
  String get boardNotVerifiedTitle => 'હજી ડિલિવરી માટે મંજૂરી મળી નથી';

  @override
  String get activeDeliveryTitle => 'તમારી ડિલિવરી';

  @override
  String get headToRestaurant => 'રેસ્ટોરાં તરફ જાઓ';

  @override
  String get deliverToCustomer => 'ગ્રાહકને ડિલિવર કરો';

  @override
  String get noActiveDeliveryTitle => 'હાથમાં કોઈ ઓર્ડર નથી';

  @override
  String get noActiveDeliveryBody =>
      'ઓર્ડરની યાદીમાંથી કોઈ ઓર્ડર સ્વીકારો, તે અહીં દેખાશે.';

  @override
  String get confirmPickupButton => 'મેં ઓર્ડર લઈ લીધો';

  @override
  String get pickupCodeTitle => 'પિકઅપ કોડ';

  @override
  String get pickupCodeSubtitle => 'રેસ્ટોરાં પાસેથી કોડ માંગો અને અહીં લખો.';

  @override
  String get pickupCodeHint => 'કોડ';

  @override
  String get wrongPickupCode => 'આ કોડ મેળ ખાતો નથી. રેસ્ટોરાં સાથે ખાતરી કરો.';

  @override
  String get pickupConfirmed => 'પિકઅપ થઈ ગયું. ગ્રાહકને ડિલિવર કરો.';

  @override
  String get confirmDeliveryButton => 'ડિલિવર કર્યો';

  @override
  String get stepReachRestaurant => 'રેસ્ટોરાં પહોંચો';

  @override
  String get stepPickUp => 'પિકઅપ';

  @override
  String get stepReachCustomer => 'ગ્રાહક પાસે પહોંચો';

  @override
  String get stepDeliver => 'ડિલિવર કરો';

  @override
  String get swipePickUp => 'ઓર્ડર લીધા પછી સ્વાઇપ કરો';

  @override
  String get swipeDeliver => 'ડિલિવર કરવા સ્વાઇપ કરો';

  @override
  String get cashToCollectLabel => 'ગ્રાહક પાસેથી લેવાની રોકડ';

  @override
  String get confirmDeliveryTitle => 'ડિલિવરીની પુષ્ટિ કરો';

  @override
  String get confirmDeliveryBody =>
      'ગ્રાહકના હાથમાં ઓર્ડર આવી જાય પછી જ પુષ્ટિ કરો.';

  @override
  String confirmDeliveryCashBody(String amount) {
    return 'પહેલાં ગ્રાહક પાસેથી $amount રોકડ લો, પછી પુષ્ટિ કરો.';
  }

  @override
  String get deliveryConfirmed => 'ડિલિવર થઈ ગયો. આભાર, તમે ફરી ઓનલાઇન છો.';

  @override
  String get releaseOrderButton => 'ઓર્ડર પાછો આપો';

  @override
  String get releaseOrderTitle => 'આ ઓર્ડર પાછો આપવો છે?';

  @override
  String get releaseOrderBody =>
      'તે બીજા રાઇડર માટે ફરી યાદીમાં જશે. ભોજન લેતાં પહેલાં જ તમે આમ કરી શકો છો.';

  @override
  String get releaseReasonHint => 'કારણ (વૈકલ્પિક)';

  @override
  String get orderReleased =>
      'ઓર્ડર પાછો આપ્યો. હવે તે બીજા રાઇડર માટે ફરી ઉપલબ્ધ છે.';

  @override
  String get finishCurrentOrderFirst =>
      'પહેલાં તમારો હાલનો ઓર્ડર પૂરો કરો અથવા પાછો આપો.';

  @override
  String get callRestaurant => 'રેસ્ટોરાંને કૉલ કરો';

  @override
  String get callCustomer => 'ગ્રાહકને કૉલ કરો';

  @override
  String get openInMaps => 'રસ્તો જુઓ';

  @override
  String get customerNoteLabel => 'ગ્રાહકની નોંધ';

  @override
  String get orderItemsLabel => 'બેગમાં શું છે';

  @override
  String get orderDetailsTitle => 'ઓર્ડરની વિગતો';

  @override
  String get historyTitle => 'અગાઉની ડિલિવરી';

  @override
  String get historyEmptyTitle => 'હજી કોઈ ડિલિવરી નથી';

  @override
  String get historyEmptyBody => 'તમે પૂરા કરેલા ઓર્ડર અહીં દેખાશે.';

  @override
  String get historySearchHint => 'ઓર્ડર કે રેસ્ટોરાં શોધો';

  @override
  String get historyToday => 'આજે';

  @override
  String get historyYesterday => 'ગઈકાલે';

  @override
  String get historyEarlier => 'પહેલાંના';

  @override
  String historyDaySummary(int count, String amount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ડિલિવરી',
      one: '1 ડિલિવરી',
    );
    return '$_temp0 · $amount';
  }

  @override
  String historyNoMatch(String query) {
    return '“$query” સાથે કંઈ મેળ ખાતું નથી.';
  }

  @override
  String historyCashTaken(String amount) {
    return '$amount રોકડ લીધી';
  }

  @override
  String get orderDelivered => 'ડિલિવર થયો';

  @override
  String get orderCancelled => 'રદ થયો';

  @override
  String get orderPreparing => 'તૈયારીમાં';

  @override
  String get orderReadyForPickup => 'પિકઅપ માટે તૈયાર';

  @override
  String get orderAssigned => 'તમને સોંપાયો';

  @override
  String get orderPickedUp => 'પિકઅપ થયો';

  @override
  String get orderOutForDelivery => 'રસ્તામાં';

  @override
  String get trackingOn => 'લોકેશન શેરિંગ ચાલુ';

  @override
  String get locationUnavailableMessage =>
      'તમારું લોકેશન મળતું નથી. લોકેશન ચાલુ કરો અને Nexmile Rider ને તેની મંજૂરી આપો.';

  @override
  String get locationPermissionTitle => 'લોકેશન જરૂરી છે';

  @override
  String get locationPermissionBody =>
      'તમે કેટલા નજીક છો તે મુજબ ઓર્ડર મોકલવામાં આવે છે, અને ગ્રાહક તમને નકશા પર જુએ છે. ઓનલાઇન થવા લોકેશનની મંજૂરી આપો.';

  @override
  String get locationSettingsButton => 'સેટિંગ્સ ખોલો';

  @override
  String get enableLocationButton => 'લોકેશનની મંજૂરી આપો';

  @override
  String amountRupees(String amount) {
    return '₹$amount';
  }

  @override
  String get shiftTab => 'શિફ્ટ';

  @override
  String get payoutsTitle => 'પેઆઉટ';

  @override
  String get payoutsEntryValue => 'સાપ્તાહિક કમાણી';

  @override
  String get payoutDetailsTitle => 'સાપ્તાહિક પેઆઉટ';

  @override
  String get payoutsEmptyTitle => 'હજી કોઈ પેઆઉટ નથી';

  @override
  String get payoutsEmptyBody =>
      'દરેક અઠવાડિયાની ગણતરી થઈ જાય પછી તમારી કમાણી અહીં દેખાશે.';

  @override
  String payoutPeriod(String start, String end) {
    return '$start – $end';
  }

  @override
  String get payoutStatusPending => 'બાકી';

  @override
  String get payoutStatusProcessing => 'પ્રક્રિયામાં';

  @override
  String get payoutStatusPaid => 'ચૂકવાઈ ગયું';

  @override
  String get payoutNotSentNote =>
      'આ અઠવાડિયાની તમારી કમાણીની ગણતરી થઈ ગઈ છે. પૈસા હજી તમારી બેંકમાં મોકલાયા નથી.';

  @override
  String payoutPaidOn(String date) {
    return '$date ના રોજ તમારી બેંકમાં મોકલાયા';
  }

  @override
  String get payoutPaidNote => 'આ અઠવાડિયાનું બેંક ટ્રાન્સફર પૂરું થઈ ગયું છે.';

  @override
  String get payoutReferenceLabel => 'ટ્રાન્સફર રેફરન્સ';

  @override
  String get payoutNetLabel => 'મળવાપાત્ર રકમ';

  @override
  String get payoutDeliveryEarnings => 'ડિલિવરીની કમાણી';

  @override
  String get payoutReferralEarnings => 'રેફરલની કમાણી';

  @override
  String get payoutCarriedIn => 'અગાઉના અઠવાડિયાની રકમ';

  @override
  String get payoutCarriedInNote =>
      '₹100 થી ઓછી રકમ અલગથી ટ્રાન્સફર થતી નથી. તેને બદલે તે પછીના અઠવાડિયામાં ઉમેરાય છે.';

  @override
  String get payoutGross => 'કુલ કમાણી';

  @override
  String get payoutDeductions => 'કપાત';

  @override
  String get payoutsLatestWeek => 'તાજેતરનું અઠવાડિયું';

  @override
  String get payoutsPaidSoFar => 'અત્યાર સુધી ચૂકવાયેલ';

  @override
  String get payoutsNotYetSent => 'હજી મોકલાયા નથી';

  @override
  String get payoutStepWorkedOut => 'ગણતરી થઈ';

  @override
  String get payoutStepSending => 'મોકલાઈ રહ્યા છે';

  @override
  String get payoutStepInBank => 'તમારી બેંકમાં';

  @override
  String get navToRestaurant => 'રેસ્ટોરાં તરફ';

  @override
  String get navToCustomer => 'ગ્રાહક તરફ';

  @override
  String navHeadTowards(String place) {
    return '$place તરફ જાઓ';
  }

  @override
  String navThen(String instruction) {
    return 'પછી: $instruction';
  }

  @override
  String get navArrived => 'તમે પહોંચી ગયા છો';

  @override
  String navArrivedAt(String place) {
    return '$place પર';
  }

  @override
  String get navFindingRoute => 'સૌથી સારો રસ્તો શોધી રહ્યા છીએ…';

  @override
  String get navNoRoute =>
      'રસ્તાની દિશા ઉપલબ્ધ નથી. સીધી લીટીનું અંતર બતાવી રહ્યા છીએ.';

  @override
  String get navFindingLocation => 'તમારું લોકેશન શોધી રહ્યા છીએ…';

  @override
  String get navLocationOff => 'નેવિગેશન માટે લોકેશન ચાલુ કરો.';

  @override
  String get navEnd => 'નેવિગેશન બંધ કરો';

  @override
  String get navRecentre => 'ફરી કેન્દ્રિત કરો';

  @override
  String navRemaining(String distance, String time) {
    return '$distance · $time';
  }

  @override
  String navMinutes(String minutes) {
    return '$minutes મિનિટ';
  }

  @override
  String get navStart => 'નેવિગેટ કરો';

  @override
  String get orderReachedRestaurant => 'રેસ્ટોરાં પર';

  @override
  String get orderReachedCustomer => 'ગ્રાહક પાસે';

  @override
  String get reachedRestaurantButton => 'રેસ્ટોરાં પહોંચી ગયા';

  @override
  String get reachedCustomerButton => 'ગ્રાહક પાસે પહોંચી ગયા';

  @override
  String get reachedRestaurantDone => 'રસોડાને જાણ થઈ ગઈ કે તમે આવી ગયા છો';

  @override
  String get reachedCustomerDone => 'ગ્રાહકને જાણ થઈ ગઈ કે તમે બહાર છો';

  @override
  String get offerTitle => 'નવો ઓર્ડર';

  @override
  String get offerYouEarn => 'તમારી કમાણી';

  @override
  String get offerPickup => 'પિકઅપ';

  @override
  String get offerDrop => 'ડ્રોપ';

  @override
  String offerAway(String distance) {
    return '$distance દૂર';
  }

  @override
  String offerTrip(String distance) {
    return '$distance ની ટ્રિપ';
  }

  @override
  String offerItems(String count) {
    return '$count વસ્તુઓ';
  }

  @override
  String offerCollectCash(String amount) {
    return '$amount રોકડ લો';
  }

  @override
  String get offerPrepaid => 'પ્રીપેડ · રોકડ નહીં';

  @override
  String offerFoodReadyIn(String minutes) {
    return 'ભોજન લગભગ $minutes મિનિટમાં તૈયાર';
  }

  @override
  String get offerSwipeToAccept => 'સ્વીકારવા સ્વાઇપ કરો';

  @override
  String get offerAccepting => 'સ્વીકારી રહ્યા છીએ…';

  @override
  String get offerReject => 'નકારો';

  @override
  String get offerRejectTitle => 'તમે કેમ નકારો છો?';

  @override
  String get offerReasonTooFar => 'ખૂબ દૂર';

  @override
  String get offerReasonBusy => 'અત્યારે વ્યસ્ત';

  @override
  String get offerReasonVehicle => 'વાહનમાં સમસ્યા';

  @override
  String get offerReasonOther => 'બીજું કારણ';

  @override
  String get offerTaken => 'બીજા રાઇડરે ઓર્ડર લઈ લીધો';

  @override
  String get offerAutoOffline =>
      '3 ઓર્ડર ચૂકી જવાથી તમને ઑફલાઇન કરી દેવાયા છે. તૈયાર હો ત્યારે ઓનલાઇન થાઓ.';

  @override
  String get mockLocationBlocked =>
      'ઓર્ડર મેળવવા કોઈ પણ નકલી લોકેશન એપ બંધ કરો.';

  @override
  String get dropoffDoorLabel => 'ફ્લેટ / માળ';

  @override
  String get dropoffStreetLabel => 'શેરી';

  @override
  String get dropoffLandmarkLabel => 'લેન્ડમાર્ક';

  @override
  String get doorPhotoLabel => 'દરવાજાનો ફોટો';

  @override
  String get doorPhotoHint => 'મોટો જોવા ટૅપ કરો';

  @override
  String get doorPhotoUnavailable => 'ફોટો અત્યારે ઉપલબ્ધ નથી';

  @override
  String permStepCount(int step, int total) {
    return '$total માંથી $step';
  }

  @override
  String get permNotNow => 'હમણાં નહીં';

  @override
  String get permLocationTitle => 'લોકેશન ચાલુ કરો';

  @override
  String get permLocationBody =>
      'ઓર્ડર રેસ્ટોરાંની સૌથી નજીકના રાઇડરને મળે છે, અને ગ્રાહકો નકશા પર પોતાનું ભોજન ટ્રૅક કરે છે.';

  @override
  String get permLocationNearTitle => 'તમારી નજીકના ઓર્ડર';

  @override
  String get permLocationNearBody =>
      'અમે તમને નજીકના રેસ્ટોરાંના ઓર્ડર આપીએ છીએ, જેથી તમારે ઓછું ચલાવવું પડે અને વધુ કમાણી થાય.';

  @override
  String get permLocationTrackTitle => 'લાઇવ ટ્રૅકિંગ';

  @override
  String get permLocationTrackBody =>
      'ગ્રાહકો તમને નકશા પર જુએ છે, તેથી તમને ઓછા કૉલ કરે છે.';

  @override
  String get permLocationOnlineTitle => 'ફક્ત તમે ઓનલાઇન હો ત્યારે';

  @override
  String get permLocationOnlineBody =>
      'ઑફલાઇન થતાં જ તે બંધ થઈ જાય છે. તે ચાલુ હોય ત્યારે હંમેશાં નોટિફિકેશન દેખાય છે.';

  @override
  String get permLocationAllow => 'લોકેશનની મંજૂરી આપો';

  @override
  String get permNotifyTitle => 'એક પણ ઓર્ડર ચૂકશો નહીં';

  @override
  String get permNotifyBody =>
      'સ્ક્રીન લૉક હોય ત્યારે પણ નવા ઓર્ડરની રિંગ ફોન કૉલની જેમ વાગે છે.';

  @override
  String get permNotifyRingTitle => 'રિંગ વાગે તેવા ઓર્ડર એલર્ટ';

  @override
  String get permNotifyRingBody => 'એલર્ટમાંથી જ સ્વીકારો અથવા નકારો.';

  @override
  String get permNotifyUpdatesTitle => 'પેઆઉટ અને મંજૂરી';

  @override
  String get permNotifyUpdatesBody =>
      'તમારા દસ્તાવેજો ક્યારે મંજૂર થાય અને પૈસા ક્યારે મોકલાય તે જાણો.';

  @override
  String get permNotifyControlTitle => 'નિયંત્રણ તમારા હાથમાં';

  @override
  String get permNotifyControlBody =>
      'ફોનના સેટિંગ્સમાં ગમે ત્યારે બદલી શકો છો.';

  @override
  String get permNotifyAllow => 'નોટિફિકેશન ચાલુ કરો';

  @override
  String get permBatteryTitle => 'ઓર્ડર આવતા રહે';

  @override
  String get permBatteryBody =>
      'બેટરી બચાવવા ફોન બેકગ્રાઉન્ડમાં ચાલતી એપ બંધ કરી દે છે. તમે ઓનલાઇન હો ત્યારે Nexmile Rider ને ચાલુ રહેવા દો.';

  @override
  String get permBatteryOrdersTitle => 'કોઈ ઓર્ડર ચૂકાશે નહીં';

  @override
  String get permBatteryOrdersBody =>
      'એપ બંધ હોય અને ફોન ખિસ્સામાં હોય ત્યારે પણ ઓર્ડર તમારા સુધી પહોંચે છે.';

  @override
  String get permBatteryLiveTitle => 'ટ્રૅકિંગ ચાલુ રહે છે';

  @override
  String get permBatteryLiveBody =>
      'તમે ડિલિવરી કરો ત્યાં સુધી ગ્રાહકો તમને નકશા પર જોતા રહે છે.';

  @override
  String get permBatteryLightTitle => 'ઓછી બેટરી વાપરે છે';

  @override
  String get permBatteryLightBody =>
      'તે ફક્ત તમે ઓનલાઇન હો ત્યારે જ વધુ કામ કરે છે.';

  @override
  String get permBatteryAllow => 'બેકગ્રાઉન્ડમાં ચાલવાની મંજૂરી આપો';

  @override
  String get permFullScreenTitle => 'લૉક સ્ક્રીન પર ઓર્ડર';

  @override
  String get permFullScreenBody =>
      'આવતા કૉલની જેમ નવા ઓર્ડરને લૉક સ્ક્રીન પર દેખાવા દો, જેથી તમે એક ટૅપમાં સ્વીકારી શકો.';

  @override
  String get permFullScreenCallTitle => 'કૉલની જેમ જવાબ આપો';

  @override
  String get permFullScreenCallBody =>
      'ફોન અનલૉક કર્યા વગર ઓર્ડર જુઓ અને સ્વીકારો.';

  @override
  String get permFullScreenTimeTitle => 'સમયસર જવાબ આપો';

  @override
  String get permFullScreenTimeBody =>
      'તમે જવાબ ન આપો તો ઓર્ડર બીજા રાઇડરને જતો રહે છે.';

  @override
  String get permFullScreenOnlyTitle => 'ફક્ત નવા ઓર્ડર માટે';

  @override
  String get permFullScreenOnlyBody =>
      'તમારી લૉક સ્ક્રીન પર બીજું કંઈ ક્યારેય દેખાતું નથી.';

  @override
  String get setupTitle => 'ફોન સેટઅપ';

  @override
  String get setupIntro =>
      'આ પૂરું કરો, જેથી એપ બંધ હોય કે ફોન લૉક હોય ત્યારે પણ નવા ઓર્ડરની રિંગ વાગે.';

  @override
  String get setupNotifications => 'નોટિફિકેશન';

  @override
  String get setupNotificationsBody =>
      'જેથી નવા ઓર્ડરની રિંગ વાગે અને તે દેખાય.';

  @override
  String get setupFullScreen => 'ફુલ-સ્ક્રીન ઓર્ડર એલર્ટ';

  @override
  String get setupFullScreenBody =>
      'કૉલની જેમ નવો ઓર્ડર તમારી લૉક સ્ક્રીન પર બતાવે છે.';

  @override
  String get setupBattery => 'બેટરી: ઑપ્ટિમાઇઝ ન કરો';

  @override
  String get setupBatteryBody =>
      'તમે ઓનલાઇન હો ત્યારે ફોનને એપ બંધ કરતાં રોકે છે.';

  @override
  String get setupAutostart => 'ઑટોસ્ટાર્ટ';

  @override
  String setupAutostartBody(String brand) {
    return '$brand ફોનમાં Nexmile Rider માટે ઑટોસ્ટાર્ટ પણ ચાલુ કરવું પડે છે. સેટિંગ્સ ખોલો, ઑટોસ્ટાર્ટ શોધો અને તેને ચાલુ કરો.';
  }

  @override
  String get setupLocation => 'લોકેશન';

  @override
  String get setupLocationBody => 'તમને નજીકના ઓર્ડર મોકલવા માટે જરૂરી.';

  @override
  String get setupAllow => 'મંજૂરી આપો';

  @override
  String get setupOpenSettings => 'સેટિંગ્સ ખોલો';

  @override
  String get setupMarkDone => 'મેં આ કરી લીધું';

  @override
  String get setupDoneStep => 'થઈ ગયું';

  @override
  String get setupBannerTitle => 'ફોન સેટઅપ પૂરું કરો';

  @override
  String setupBannerBody(String count) {
    return '$count બાકી, જેથી ઓર્ડર એલર્ટ ચૂકાય નહીં';
  }

  @override
  String get offerEstimatedEarnings => 'અંદાજિત કમાણી';

  @override
  String offerPickupLine(String name) {
    return 'પિકઅપ: $name';
  }

  @override
  String offerDropLine(String area) {
    return 'ડ્રોપ: $area';
  }

  @override
  String offerFromYou(String distance) {
    return 'તમારાથી આશરે $distance દૂર';
  }

  @override
  String get exitTitle => 'Nexmile Rider માંથી બહાર નીકળવું છે?';

  @override
  String get exitBody => 'શું તમે ખરેખર એપમાંથી બહાર નીકળવા માંગો છો?';

  @override
  String get exitConfirm => 'બહાર નીકળો';

  @override
  String get onboardingWelcomeTitle => 'Nexmile ડિલિવરી પાર્ટનર બનો';

  @override
  String get onboardingWelcomeSubtitle =>
      'તમારા વિસ્તારમાં ડિલિવરી કરો, તમારો સમય જાતે પસંદ કરો અને દર અઠવાડિયે પૈસા મેળવો.';

  @override
  String get onboardingWelcomeNeed => 'આ તૈયાર રાખો';

  @override
  String get onboardingNeedAadhaar => 'આધાર કાર્ડ';

  @override
  String get onboardingNeedPan => 'PAN કાર્ડ';

  @override
  String get onboardingNeedLicence => 'ડ્રાઇવિંગ લાઇસન્સ અને વાહન RC';

  @override
  String get onboardingNeedInsurance => 'વાહન વીમો';

  @override
  String get onboardingNeedBank => 'બેંક ખાતાની વિગતો';

  @override
  String get onboardingNeedNote =>
      'સાઇકલ પર કે ચાલીને ડિલિવરી કરશો? તમારે ફક્ત આધાર, PAN અને બેંક ખાતાની જરૂર છે.';

  @override
  String get onboardingWelcomeTime => 'લગભગ 10 મિનિટ લાગે છે';

  @override
  String get onboardingGetStarted => 'શરૂ કરો';

  @override
  String get onboardingSavedNote => 'દરેક પગલા પછી સુરક્ષિત રીતે સચવાય છે';

  @override
  String get docsTip =>
      'સારા પ્રકાશમાં લીધેલા સ્પષ્ટ ફોટો સૌથી ઝડપથી મંજૂર થાય છે.';

  @override
  String get docsAllDone =>
      'બધા જરૂરી દસ્તાવેજો ઉમેરાઈ ગયા છે. તપાસ માટે આગળ વધો.';

  @override
  String get docGroupIdentity => 'ઓળખનો પુરાવો';

  @override
  String get docGroupVehicle => 'લાઇસન્સ અને વાહનના કાગળો';

  @override
  String get docGroupMore => 'વધુ દસ્તાવેજો';

  @override
  String get docTapToAdd => 'ઉમેરવા ટૅપ કરો';

  @override
  String get docUploading => 'અપલોડ થઈ રહ્યું છે…';

  @override
  String get docView => 'જુઓ';

  @override
  String get docSheetSubtitle => 'પહેલી વારમાં જ મંજૂરી કેવી રીતે મેળવવી';

  @override
  String get docTipCorners => 'ચારેય ખૂણા ફોટોની અંદર';

  @override
  String get docTipGlare => 'સ્પષ્ટ અક્ષરો, ચમક કે પડછાયો નહીં';

  @override
  String get docTipOriginal => 'અસલ દસ્તાવેજ, ફોટોકૉપી નહીં';

  @override
  String get docTipFace => 'તમારો ચહેરો સ્પષ્ટ દેખાય, સીધું આગળ જોતા';

  @override
  String get docTipBackground => 'સાદી પૃષ્ઠભૂમિ અને સારો પ્રકાશ';

  @override
  String get docTipNoCap => 'ટોપી, માસ્ક કે ગોગલ્સ નહીં';

  @override
  String get docTipFullPage => 'આખું પાનું, દરેક લીટી વાંચી શકાય તેવી';

  @override
  String get docSourceCamera => 'કૅમેરા';

  @override
  String get docSourceGallery => 'ગેલેરી';

  @override
  String get docSourceFile => 'PDF અથવા ફાઇલ';

  @override
  String get reviewSectionDetails => 'તમારી વિગતો';

  @override
  String get reviewSectionDocuments => 'દસ્તાવેજો';

  @override
  String get reviewSectionBank => 'બેંક ખાતું';

  @override
  String get reviewBankHidden => 'ઉમેર્યું · તમારી સુરક્ષા માટે છુપાવેલું';

  @override
  String get reviewEdit => 'બદલો';

  @override
  String get reviewNextTitle => 'હવે આગળ શું થશે';

  @override
  String get reviewNext1 => 'તમે તમારી અરજી સબમિટ કરો છો';

  @override
  String get reviewNext2 => 'અમારી ટીમ તમારી વિગતો અને દસ્તાવેજો તપાસે છે';

  @override
  String get reviewNext3 =>
      'તમને જાણ કરવામાં આવે છે, પછી ઓનલાઇન થાઓ અને કમાણી શરૂ કરો';

  @override
  String get kycStepSubmitted => 'અરજી સબમિટ થઈ';

  @override
  String get kycStepVerifying => 'તમારા દસ્તાવેજોની ચકાસણી થઈ રહી છે';

  @override
  String get kycStepApproved => 'મંજૂર — ઓનલાઇન થાઓ અને કમાણી શરૂ કરો';
}
