import 'package:extra_staff/controllers/login_c.dart';
import 'package:extra_staff/utils/ab.dart';
import 'package:extra_staff/utils/constants.dart';
import 'package:extra_staff/views/login_v.dart';
import 'package:extra_staff/views/registration_progress_v.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:extra_staff/views/legal_agreements/registration_complete_v.dart';
import 'package:extra_staff/utils/services.dart';
import 'package:extra_staff/utils/resume_navigation.dart';

class EnterConfrimCode extends StatefulWidget {
  final bool isFromStart;
  const EnterConfrimCode({Key? key, required this.isFromStart})
      : super(key: key);

  @override
  _EnterConfrimCodeState createState() =>
      _EnterConfrimCodeState(isFromStart: isFromStart);
}

class _EnterConfrimCodeState extends State<EnterConfrimCode> {
  _EnterConfrimCodeState({required this.isFromStart});
  bool isLoading = false;
  bool isFromStart;
  int pinLength = 4;
  String pin = '';
  TextEditingController controller = TextEditingController(text: '');
  final loginController = LoginController();

  @override
  void initState() {
    super.initState();
    if (!isWebApp) {
      authBiometric();
    }
  }

  void authBiometric() async {
    final isBiomatricAvaliable =
        true; //await loginController.isBiometricsAvaliable();
    if (isBiomatricAvaliable) {
      final isAuth = await loginController.checkAuth();
      if (isAuth) {
        final message3 = await Services.shared.getTempProgressInfo();
        await Resume.shared.completedProgress(message3.result['screen_id']);
        await localStorage?.setString(
            'completed', message3.result['completed']);
        await Services.shared.setData();
        if (Services.shared.completed == "Yes") {
          Get.offAll(() => RegistrationComplete());
          return;
        }
        Get.to(() => RegistrationProgress());
      }
    }
  }

  Widget getPinCodeText() {
    bool readOnly = true;
    if (isWebApp) readOnly = false;

    return abPinCodeText(context, 4, controller: controller, readOnly: readOnly,
        onCompleted: (v) async {
      final code = localStorage?.getString('passcode') ?? '';
      if (code == v) {
        final message3 = await Services.shared.getTempProgressInfo();
        await Resume.shared.completedProgress(message3.result['screen_id']);
        await localStorage?.setString(
            'completed', message3.result['completed']);
        await Services.shared.setData();
        if (Services.shared.completed == "Yes") {
          Get.offAll(() => RegistrationComplete());
          return;
        }
        Get.to(() => RegistrationProgress());
      } else {
        controller.text = '';
        abShowMessage('passcodeNotMathcing'.tr);
      }
    }, onChanged: (value) {});
  }

  Widget getContent() {
    if (isWebApp) {
      return Column(children: [
        SizedBox(height: 64),
        Container(height: 60, width: 300, child: getPinCodeText()),
        Container(
          padding: gHPadding,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              textStyle: MyFonts.semiBold(17),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {
              Get.to(() => LoginView(), arguments: true);
            },
            child: Text('Forgot Password'.toUpperCase()),
          ),
        )
      ]);
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: gHPadding,
                    child: Center(
                      child: getPinCodeText(),
                    ),
                  ),
                  Container(
                    padding: gHPadding,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        textStyle: MyFonts.semiBold(17),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        Get.to(() => LoginView(), arguments: true);
                      },
                      child: Text('Forgot Password'.toUpperCase()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: Get.height / 2,
            padding: EdgeInsets.all(16),
            color: MyColors.lightGrey.withAlpha(80),
            child: GridView.count(
              childAspectRatio: 1.5,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: loginController.allItems
                  .map(
                    (item) => GridTile(
                      child: Container(
                        color: MyColors.white,
                        child: create(item),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
    }
  }

  PreferredSizeWidget getAppBar() {
    return abHeaderNew(context, 'enterCode'.tr,
        showHome: false, showBack: !isFromStart);
  }

  @override
  Widget build(BuildContext context) {
    return abMainWidgetWithLoadingOverlayScaffoldContainer(context, isLoading,
        appBar: getAppBar(), content: getContent());
  }

  Widget create(item) {
    if (item == '-1') {
      return IconButton(
        onPressed: () {
          setState(() {
            if (pin.isNotEmpty) {
              pin = pin.substring(0, pin.length - 1);
            }
            controller.text = pin;
          });
        },
        icon: Icon(
          Icons.backspace_outlined,
          size: 35,
          color: MyColors.black,
        ),
      );
    } else if (item == '+1') {
      return IconButton(
        onPressed: () async {
          final isBiomatricAvaliable =
              true; //await loginController.isBiometricsAvaliable();
          if (isBiomatricAvaliable) {
            final isAuth = await loginController.checkAuth();
            if (isAuth) {
              if (Services.shared.completed == "Yes") {
                Get.offAll(() => RegistrationComplete());
                return;
              }
              Get.to(() => RegistrationProgress());
            } else {
              abShowMessage('passcodeNotMathcing'.tr);
            }
          } else {
            abShowMessage('error'.tr);
          }
        },
        icon: Image.asset('lib/images/face.png'),
      );
    } else {
      return TextButton(
        onPressed: () {
          setState(() {
            pin += item;
            controller.text = pin;
          });
        },
        child: Text(
          item,
          textAlign: TextAlign.center,
          style: MyFonts.medium(40, color: MyColors.black),
        ),
      );
    }
  }
}
