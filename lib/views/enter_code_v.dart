import 'package:extra_staff/controllers/enter_code_c.dart';
import 'package:extra_staff/utils/ab.dart';
import 'package:extra_staff/utils/constants.dart';
import 'package:extra_staff/views/set_password_v.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  final controller = EnterCodeController();
  bool isLoading = false;

  @override
  initState() {
    super.initState();
    controller.data = Get.arguments;
  }

  Widget getPinCodeText() {
    return abPinCodeText(context, 4, onCompleted: (v) async {
      controller.otp = v;
      if (controller.otp == '9999') {
        Get.to(() => SetPassword());
        return;
      }
      setState(() => isLoading = true);
      final result = await controller.getQuickTempVerification();
      setState(() => isLoading = false);
      if (result.errorMessage.isNotEmpty) {
        abShowMessage(result.errorMessage);
        return;
      }
      if (result.errorCode == 0) {
        Get.to(() => SetPassword());
      } else {
        abShowMessage('invalidCode'.tr);
      }
    }, onChanged: (value) {
      setState(() {});
    });
  }

  Widget getContent() {
    return Column(
      children: [
        SizedBox(height: 32),
        isWebApp
            ? abWords(controller.text['text']!, controller.text['highlight']!,
                WrapAlignment.center)
            : abWords(
                controller.text['text']!, controller.text['highlight']!, null),
        SizedBox(height: 32),
        Container(
            height: controller.textFiledWidth,
            width: double.infinity,
            child: getPinCodeText()),
        SizedBox(height: 32),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'notReceived'.tr,
              style: MyFonts.regular(17),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () async {
                setState(() => isLoading = true);
                final message = await controller.resendQuickTempVerification();
                setState(() => isLoading = false);
                if (message.isNotEmpty) abShowMessage(message);
              },
              child: Text(
                'pleaseResend'.tr,
                style: MyFonts.semiBold(20, color: MyColors.darkBlue).merge(
                  TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ],
    );
  }

  PreferredSizeWidget getAppBar() {
    return abHeaderNew(context, 'Verification'.tr, showHome: false);
  }

  @override
  Widget build(BuildContext context) {
    return abMainWidgetWithLoadingOverlayScaffoldScrollView(context, isLoading,
        appBar: getAppBar(), content: getContent());
  }
}
