import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:leikha_rakhen/app/routes/app_pages.dart';
import 'package:leikha_rakhen/app/styles/app_styles.dart';

import '../controllers/account_create_controller.dart';

class AccountCreateView extends GetView<AccountCreateController> {
  const AccountCreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('AccountCreateView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: AppSize.s100),
        child: Center(
          child: Column(
            children: [
              Text(
                'LIKHE RAKHEN',
                style: TextStyle(color: AppColor.appGreen,
                fontFamily: 'Courier',
                fontSize: AppSize.textXXXLarge),
              ),
              SizedBox(height: AppSize.s32,),

              Text('Create Account',
              style: TextStyle(fontSize:AppSize.s14,
              fontWeight: FontWeight.bold),),
              Text('Enter Your Phone Number To Sign Up'),
              SizedBox(height: AppSize.s16,),
              Padding(
                padding:  EdgeInsets.all(AppSize.s14),
                child: TextFormField(
                  controller: controller.phoneController,
                  keyboardType: TextInputType.phone  ,
                  decoration: InputDecoration(
                    hintText: 'Enter phone number',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s6),
                      borderSide: BorderSide(color: AppColor.grayColor)// Circular border radius
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s6),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s6),
                      borderSide: BorderSide(color: AppColor.appGreen, width: 2),
                    ),

                  ),
                  

                ),
              ),
              SizedBox(height: AppSize.s10,),
              ElevatedButton(onPressed: (){
                Get.toNamed(AppPages.VERIFY);
              }, child: Text('Continue',
              style: TextStyle(color: Colors.white),

              ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.appGreen,
                  minimumSize: Size(Get.width/1.1, AppSize.s36),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s6))
                ),
              ),
              SizedBox(height: AppSize.s20,),
              Padding(
                padding:  EdgeInsets.all(AppSize.s20),
                child: Row(
                  children: [

                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.grayLightColor,
                        endIndent: AppSize.s14,
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(fontSize: AppSize.s10),
                    ),

                    Expanded(

                      child: Divider(
                        thickness: 1,
                        color: AppColor.grayLightColor,
                        indent: AppSize.s14,
                      ),
                    ),
                  ],
                ),
              ),
          SizedBox(height: AppSize.s16,),
          Column(
            children: [
              TextButton(onPressed: (){},
                child: Text('Continue With Google',
                  style: TextStyle(
                      color: AppColor.blackColor,
                    fontWeight: FontWeight.bold
                  ),),
                style: TextButton.styleFrom(
                    side: BorderSide(color: AppColor.appGreen),
                    minimumSize: Size(Get.width/1.1, Get.height/20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s16)
                    )
                ),

              ),
              SizedBox(height: AppSize.s10,),
              TextButton(onPressed: (){},
                child: Text('Continue With Facebook',
                  style: TextStyle(
                      color: AppColor.blackColor,
                    fontWeight: FontWeight.bold
                  ),),
                style: TextButton.styleFrom(
                    side: BorderSide(color: AppColor.appGreen),
                    minimumSize: Size(Get.width/1.1, Get.height/20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s16)
                    )
                ),

              ),
              SizedBox(height: AppSize.s6,),
              Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By clicking continue, you agree with our ',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.blackColor, // Optional: make it look like a link
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Handle click: navigate or show dialog
                              print('Terms of Services clicked');
                              // Example: Get.to(() => TermsPage());
                            },
                        ),
                      ],
                    ),
                  ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'and ',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor, // Optional: make it look like a link
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle click: navigate or show dialog
                    print('Terms of Services clicked');
                    // Example: Get.to(() => TermsPage());
                  },
              ),
            ],
          ),
        ),

                ],
              )


            ],
          ),
        ]
    ),
      ),

      )
    );
  }
}
