import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class VerificationController extends GetxController {
  var otpValue = ''.obs;
  TextEditingController otpController = TextEditingController();

  void addDigit(String digit) {
    if (otpValue.value.length < 4) {
      otpValue.value += digit;
      otpController.text = otpValue.value;
    }
  }

  void deleteDigit() {
    if (otpValue.value.isNotEmpty) {
      otpValue.value = otpValue.value.substring(0, otpValue.value.length - 1);
      otpController.text = otpValue.value;
    }
  }

  void clearOTP() {
    otpValue.value = '';
    otpController.clear();
  }
}