import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leikha_rakhen/app/styles/app_styles.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s18),
        child: Column(
          children: [
            Center(
              child: Text(
                'Verification',
                style: TextStyle(
                    fontSize: AppSize.s36, color: AppColor.appGreen),
              ),
            ),
            SizedBox(height: AppSize.s10),
            Text('Enter the One Time Password sent to'),
            Text('0191819422'),
            SizedBox(height: AppSize.s10),

            // OTP FIELD
            PinCodeTextField(
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.none, // Disable native keyboard
              controller: controller.otpController,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(AppSize.s10),
                fieldHeight: 60,
                fieldWidth: 60,
                activeFillColor: AppColor.colorWhite,
                selectedFillColor: AppColor.colorWhite,
                inactiveFillColor: AppColor.colorWhite,
                activeColor: Colors.black,
                selectedColor: AppColor.grayLightColor,
                inactiveColor: AppColor.grayLightColor,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              onChanged: (value) => controller.otpValue.value = value,
              onCompleted: (value) {
                print("Completed: $value");
              },
            ),
            SizedBox(height: AppSize.s10),

            // RESEND TEXT
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Didn't Receive OTP? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Resend OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Resend OTP tapped');
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSize.s32),

            // CUSTOM NUMPAD
            buildNumpad(controller),
            SizedBox(
              height: AppSize.s10,
            ),
            Text('Resend OTP : ')
          ],
        ),
      ),
    );
  }

  Widget buildNumpad(VerificationController controller) {
    List<List<String>> keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['←', '0', 'C'],
    ];

    return Column(
      children: keys.map((row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: row.map((key) {
            return Padding(
              padding:  EdgeInsets.all(AppSize.s12), // spacing between buttons
              child: TextButton(
                onPressed: () {
                  if (key == '←') {
                    controller.deleteDigit();
                  } else if (key == 'C') {
                    controller.clearOTP();
                  } else {
                    controller.addDigit(key);
                  }
                },
                style: TextButton.styleFrom(
                  foregroundColor: AppColor.appGreen, // text color
                  padding: EdgeInsets.all(AppSize.s16), // circle size
                  shape: CircleBorder(
                    side: BorderSide(color: AppColor.appGreen, width: 1), // circle border
                  ),
                  backgroundColor: Colors.white, // background color
                ),
                child: Text(
                  key,
                  style: TextStyle(fontSize: 24, color: AppColor.appGreen),
                ),
              ),
            );
          }).toList(),
        );
      }).toList(),

    );


  }

}
