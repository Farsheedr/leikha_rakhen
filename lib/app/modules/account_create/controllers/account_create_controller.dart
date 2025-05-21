import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AccountCreateController extends GetxController {
  final phoneController = TextEditingController();
  // final FirebaseAuth auth = FirebaseAuth.instance;

  var verificationId= ''.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

}

// void sendOtp(String phone)async{
//   await auth.verifyPhoneNumber(
//     phoneNumber : phone,
//
//   )

