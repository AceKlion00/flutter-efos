import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'employemntStatus': 'Employment Status',
          'whyNotNI': 'Why do you not have an NI number?',
          'dbs': 'Do you have DBS, if so please enter date for this',
          'searchByPostcode': "Search by postcode",
          'postcodeNotFound': "Postcode doesn't exist",
          'findAddress': 'Find Address',
          'notHaveNi': 'I do not have a National Insurance Number',
          'selectAllAgreements': 'Please select all agreements',
          'hasCriminalConvictions':
              'Do you have any Unspent Criminal Convictions?',
          '48hours':
              '48 Hour Opt Out (The Working Time Regulations 1998 provide that a worker shall not work in excess of an average of 48 hours each week calculated over a set reference period unless they opt out of the limitation. You are asked here to confirm whether or not you wish to opt out. If you opt out, you must give Extrastaff one months written notice if you want to opt back in. You also agree to notify Extrastaff immediately if any of the information becomes out of date.)',
          '48hours note':
              '**If you are a driver(7.5tonne or LGV driver- all categories) you are governed by the road transport WTR(2005) so cannot exceed an average of 48 hours per week over a 17 weekreference period. Please ensure you select the opt in option.',
          'optional': 'optional',
          'euNS': 'Nationality',
          'pSame': 'Both passwords should be the same',
          'pMin6': 'Password must be minimum 6 characters',
          'eitherMobileOrEmail': 'Skip phone or email of referee but not both',
          'photoOfYourself': 'You need to upload a photo of yourself',
          'hPhotoOfYourself': 'photo of yourself',
          'yourAvailability': 'Your Availability',
          'topRoles':
              'Please tick the role(s) you are able to do/hold qualifications for',
          'topSkills': 'Please tick the skill(s) that you have experience in',
          'searchRolesForYou': 'Search for your Role',
          'rolesForYou': 'Roles For You',
          'skillsForYou': 'Skills For You',
          'retakePhoto': 'Retake Photo',
          'uploadNewPhoto': 'Upload new Photo',
          'takePhoto': 'Take Photo',
          'interviewDate': 'Select interview date',
          'dear': 'Dear',
          'skip': 'Skip',
          'payingYou': 'Paying you',
          'pleaseSelect': 'Please select',
          'authenticateBiometric': 'Please authenticate to use biometric ID',
          'setUpLater': 'Set up later',
          'useBiometricID': 'Use Biometric ID',
          'useBiometricID?': 'Use Biometric ID?',
          'backDrivingH': 'Back of your Driving Licence',
          'backDriving': 'Now upload the Back of your Driving Licence',
          'frontDrivingH': 'Front of your Driving Licence',
          'frontDriving': 'Please upload the Front of your Driving Licence',
          'frontVisaBrpH': 'Front of your VISA / BRP Card',
          'frontVisaBrp': 'Please upload the Front of your VISA / BRP Card',
          'backVisaBrpH': 'Back of your VISA / BRP Card',
          'backVisaBrp': 'Now upload the Back of your VISA / BRP Card',
          'passcodeNotMathcing': 'Passcode does not match.',
          'selectStatement':
              'Please choose the statement below that applies to you',
          'mh': 'Medical history',
          'completingCompetency':
              'Thank you for completing the Competency Test',
          'I': 'I',
          'confirm': 'confirm',
          'understood': 'understood',
          'agreementAbove': 'I have read and understood the agreement above',
          'uploadAllDocuments': 'Please upload all documents',
          'onTheFlow': 'Please complete all sections in order',
          'onTheFlow-review': 'Please review all sections in order',
          'plan1': 'Plan 1',
          'plan2': 'Plan 2',
          'both': 'Both',
          'hmrcChecklist': 'HMRC Checklist',
          'addCompanyMessage': 'Please add atleast 1 company.',
          'yourScoreIs': 'Your score is',
          'validBankAccountNumber': 'Please enter valid bank account number',
          'bankSortCode': 'Please enter valid Sort code',
          'workDays': 'Please select your work days.',
          'mon': 'Mon',
          'tue': 'Tue',
          'wed': 'Wed',
          'thu': 'Thu',
          'fri': 'Fri',
          'sat': 'Sat',
          'sun': 'Sun',
          'medicalHistory': 'What is your medical history?',
          'rolesInterested': 'What roles are you interested in?',
          'shoeSize': 'UK Shoe size',
          'safetyBoots': 'Do you require safety boots?',
          'hiVis': 'Do you require hi vis?',
          'ownTransport': 'Do you have your own transport?',
          'enterAMessage': 'Enter a message',
          'profilePicture': 'Profile Picture',
          'validBirthdate': 'Please enter birthdate',
          'validPhone': 'Please enter valid phone',
          'validEmail': 'Please enter valid email',
          'enterText': 'Please enter some text',
          'usePhoto': 'Use Photo',
          'Upload': 'Upload',
          'completed%': 'You have completed',
          'initialInfo': 'Initial Info',
          'setPassword': 'Set Password',
          'enterPassword': 'Enter Password',
          'reEnterPassword': 'Re-Enter Password',
          'pleaseSelectYes': 'Please select Yes',
          'chooseCode': 'Choose passcode',
          'confirmCode': 'Confirm passcode',
          'industrial': 'Industrial',
          'driving': 'Driving',
          'pleaseSelectOption': 'Please select atlease one option first.',
          'loginBio': 'Login with Biomatric',
          'documents': 'Documents',
          'goTosignIn': 'Go to Sign in',
          'resetLogIn': 'Reset login details',
          'password': 'Password',
          'linkAccount': 'Link Account',
          'earnRightAway': "Earn ££££'s right away",
          'checkDocs': 'We check your docs',
          'skypeTeamEtc': 'Skype, team etc',
          '10minutes': '10 minutes',
          'register': 'Register',
          'compliance': 'Compliance',
          'work': 'Work',
          'home': 'Home',
          'forgotPassword': 'Forgot password',
          'noData': 'No data',
          'extractedData': 'Extracted Data',
          'pleaseResend': 'Please resend',
          'notReceived': "I haven't received a code!",
          'hCodeSent': 'verification code device',
          'codeSent': 'Please enter the verification code sent to your device',
          'clickHere': 'Click here',
          'notRegistered': 'Not yet registered?',
          'forgotResetPasscode': 'Forgot/Reset passcode?',
          'enterPasscode': 'Enter Passcode',
          'forgorPassword': 'ForgorPassword',
          'biometricView': 'BiometricView',
          'analysingDocuments': 'We are analysing your documents.',
          'login': 'Login',
          'shortCT': 'We need to ask you to complete a short competency test',
          'partOfRegistrations':
              'As part of our registration process, we need to ask you to complete a short competency test',
          'removeAnswer': 'Remove Answer',
          'doctorAddress': 'Add address of your doctor',
          'nameOfDoctor': 'Add name of your doctor',
          'detailsOfAllIllnesses':
              'Please give details of all illnesses for which you have sought medical advice or which has affected your ability to work during the past year.',
          'takenAnyDrugsMedicines?':
              'Have you taken any drugs or medicines in the last month?',
          'receivingMedicalTreatment?':
              'Are you receiving medical treatment at present or taking any prescribed medication that may affect your fitness to work at night or any of the duties for which you have registered for work?',
          'youSuffer?': 'Do you suffer from any of the following?',
          'medicalPhysicalMental':
              'Have you any medical condition, physical or mental infirmity or any disease or affliction that may impair your ability to perform industrial night work or any of the duties for which you have registered for work?',
          'yourMedicalHistory': 'Your Medical History',
          'add': 'Add',
          'addCompany': 'ADD COMPANY',
          'company': 'Company',
          'history': 'History',
          'employment': 'Employment',
          'touchShortly': 'A consultant will be in touch shortly.',
          'completedRegistration': 'You have completed your registration',
          'congratulations': 'Congratulations',
          'finish': 'Finish',
          'wtcyd': 'What time can you do?',
          'likeInterviewConducted':
              'How would you like the interview be conducted',
          'requireSign': 'We require your signature in the box below',
          'iConfirmAgree':
              'I Joe Bloggs confirm, I have completed this process honestly and accurately and I understand that providing incorrect or false information could lead to any offer of work being withdrawn and/ or any assignment being immediately terminated.',
          'iCompleted': 'I Joe Bloggs confirm, I have completed the',
          'dt': 'Driving test',
          'ct': 'Working With Us',
          'hmrcSC': 'HMRC starter checklist',
          'af': 'application form',
          'pl': 'pension letter',
          'npl': 'now pension letter',
          'tcoc': 'the code of conduct',
          'ps': 'privacy statement',
          'mhg': 'Manual handling guide',
          'iConfirm': 'I Joe Bloggs confirm, I have read and understood',
          'orisq': 'Our registration is super quick',
          'diabetes': 'Diabetes',
          'hcDisorders': 'Heart or circulatory disorders',
          'siDisorders': 'Stomach or intestinal disorders',
          'mcDisorders': 'Medical conditions affecting sleep',
          'ccDisorders': 'Chronic chest disorders',
          'hbp': 'High blood pressure',
          'fb': 'Fits/Blackouts',
          'msp': 'Musculo-skeletal problems',
          'aomc': 'Any other medical conditions',
          'driver': 'Driver',
          'warehouse': 'Warehouse',
          'ableWorkUK': 'Able to work in the U.K?',
          'question': 'Question',
          'here?': 'here?',
          'selectImage': 'Please select image first.',
          'drivinglicence': 'Driving Licence',
          'visaBrp': 'VISA / BRP Card',
          'statement': 'Bank Statement',
          'councilTaxBill': 'Council Tax Bill',
          'hmrcDoc': 'HMRC Documentation',
          'tvLicense': 'TV Licence',
          'utilityBill': 'Utility Bill',
          'hmrcLetter': 'HMRC Letter',
          'jobCenterLetter': 'Job Center Letter',
          'insurance': 'NI Card',
          'p45': 'P45',
          'p60': 'P60',
          'payslip': 'Payslip',
          'homeOfficeDoc': 'Home Office Letter',
          'birthCertificate': 'Birth Certificate',
          'idCard': 'ID Card',
          'passport': 'Passport',
          'visa': 'Visa',
          'error': 'Something went wrong please try again.',
          'es': 'Extrastaff',
          'invalidCode': 'invalid code',
          'dback': 'back',
          'front': 'front',
          'upload': 'You need to upload your',
          'gallery': 'Select From Gallery',
          'useCamera': 'Use camera',
          'endDate': 'End Date',
          'startDate': 'Start Date',
          'reasonForLeaving': 'Reason for Leaving',
          'companyTelephone': 'Company Telephone',
          'companyContactEmail': 'Company Contact Email',
          'companyContact': 'Company Contact',
          'companyName': 'Company Name',
          'save': 'Save',
          'removeReference': 'Remove Reference',
          'h5': 'own bank account?',
          'h4': 'work history and / or an education background?',
          'h3': 'age of 18?',
          'h2': 'reside in the UK?',
          'h1': 'driving or industrial work?',
          'k5':
              'You will be paid by bank transfer, so you must have your own account',
          'k4':
              'Tell us about your previous jobs, school / college attended, etc.',
          'k3': 'Our jobs are for over 18 year olds only',
          'k2': 'You need to be eligible to work in the UK',
          'k1':
              'Opportunities include car, van and LGV driving, picking, packing and forklift operating',
          'q5': 'Do you have your own bank account?',
          'q4':
              'Are you able to provide work history and / or an education background?',
          'q3': 'Are you over the age of 18?',
          'q2': 'Do you reside in the UK?',
          'q1': 'Are you looking for driving or industrial work?',
          'photoOfYou': 'We need a photo of you',
          'interview': 'Interview',
          'agree': 'Agree',
          'agreeToAll': 'Agree to All',
          'select': 'Select',
          'furtherDetails': 'Please give further details',
          'disability': 'Do you have a disability?',
          'civilPartnerhip': 'Are you married or in a civil partnerhip?',
          'religion': 'What is your religion or belief?',
          'gender': 'What is your gender?',
          'ethnicity': 'What is your ethnicity?',
          'nationalID': 'What is your national identity?',
          'bankName': 'Bank name',
          'sortCode': 'Sort code',
          'bankAccountNumber': 'Bank account number',
          'bankHolderName': 'Account holder name',
          'bankReference': 'Bank Reference/Building Society (if applicable)',
          'entitledProof':
              'We need proof that your are entitled to work in the UK',
          'insuranceProof': 'We need proof of your National Insurance number',
          'addressProof': 'We need proof of your home address',
          'licenceProof': 'We need copies of your driving licence',
          'agreements': 'Legal Agreements',
          'lAgreementsC': 'Legal Agreements and Checklist',
          'yourEmploymentHistory': 'Your Employment History',
          'aboutYou': 'About You',
          'registration': 'Registration',
          'resume': 'Resume',
          'dashboard': 'Dashboard',
          'welcome': 'Welcome',
          'lookingForAJob': 'Looking for a job',
          'applyForaJob': 'Apply for a job',
          'alreadySignedUp': 'Already Signed Up',
          'enterCode': 'Enter code',
          'signIn': 'Sign In',
          'signUp': 'Sign Up',
          'howTo': 'How to #',
          'yes': 'Yes',
          'no': 'No',
          'firstName': 'First name',
          'lastName': 'Last name',
          'email': 'Email',
          'emailAddress': 'Email address',
          'driverWorker': 'Are you a driver or warehouse worker?',
          'nearLocation': 'Your nearest location',
          'enterPhone': 'Mobile phone number',
          'proceed': 'Proceed',
          'unlinkAccount': 'Unlink Account?',
          'start': 'Start',
          'back': 'Go Back',
          'salutation': 'Salutation',
          'jobTitle': 'Job Title',
          'dateOfBirth': 'Date of birth',
          'nationalInsurance': 'National insurance',
          'mobileNumber': 'Mobile number',
          'addressLine1': 'Address line 1',
          'addressLine2': 'Address line 2',
          'town': 'Town',
          'county': 'County',
          'postcode': 'Postcode',
          'dayAvailabilityQuestion': 'What days can you work?',
          'workingInNightQuestion': 'Are you interested in working nights?',
          'emergencyContactName': 'Emergency contact name',
          'emergencyContactRelationship': 'Emergency contact relationship',
          'emergencyContactTelephoneNumber':
              'Emergency contact telephone number',
          'hearAboutExtraStaffQuestion':
              'Please select How did you hear about Extrastaff?',
          'loginWithEmail': 'Email',
          'loginWithPasscode': 'Pass code',
          'loginWithBiometric': 'Biometric ID',
          'next': 'Next',
          'done': 'Done',
          'agreement_extra1':
              'I give Extrastaff consent to seek a reference about me, and issue a reference about me if requested',
          'agreement_extra2':
              'I confirm I have read and agree to the Terms of Engagement',
          'signed': 'Signed:',
          'error_internal_user_register': 'Internal users cannot register.'
        },
        'de': {
          'howTo': 'Cómo #',
          'yes': 'Yes',
          'no': 'No',
          'firstName': 'First name',
          'lastName': 'Last name',
          'email': 'Email',
          'driverWorker': 'Are you a driver or warehouse worker?',
          'nearLocation': 'Your nearest location',
          'enterPhone': 'Mobile phone number',
          'proceed': 'Proceed',
          'unlinkAccount': 'Unkink Account?',
          'start': 'Start',
          'back': 'Go back'
        }
      };
}
