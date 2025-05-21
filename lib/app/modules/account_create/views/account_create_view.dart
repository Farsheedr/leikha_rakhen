import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:leikha_rakhen/app/styles/app_styles.dart';

import '../controllers/account_create_controller.dart';

class AccountCreateView extends GetView<AccountCreateController> {
  const AccountCreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountCreateView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Likhe Rakhen',
              style: TextStyle(color: AppColor.appGreen,
              fontSize: AppSize.s32),
            ),
            SizedBox()
          ],
        ),


      ),

    );
  }
}
