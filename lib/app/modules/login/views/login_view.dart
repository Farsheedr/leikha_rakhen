import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:leikha_rakhen/app/styles/app_styles.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          // title: const Text('LoginView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top: AppSize.s200),
          child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: () {},
                  child: Text('Get Started',
                  style: TextStyle(color: Colors.white,
                  fontSize: AppSize.s18),
                  ),
                style: ElevatedButton.styleFrom(backgroundColor: AppColor.appGreen,
                minimumSize: Size(Get.width/1.8,Get.height/20))
              ),
              SizedBox(height: AppSize.s20,),
              ElevatedButton(onPressed: () {},
                  child: Text('Log In With Mobile',
                    style: TextStyle(color: Colors.white,
                        fontSize: AppSize.s18),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColor.appGreen,
                      minimumSize: Size(Get.width/1.8,Get.height/20))
              ),
              SizedBox(height: AppSize.s10,),

              Padding(
                padding:  EdgeInsets.all(AppSize.s20),
                child: Row(
                  children: [

                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        endIndent: AppSize.s14,
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(fontSize: AppSize.s18),
                    ),

                    Expanded(

                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: AppSize.s14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSize.s20,),
          Column(
            children: [
              TextButton(onPressed: (){},
                  child: Text('Sign In With Google',
                  style: TextStyle(
                    color: AppColor.appGreen
                  ),),
                style: TextButton.styleFrom(
                  side: BorderSide(color: AppColor.appGreen),
                  minimumSize: Size(Get.width/1.5, Get.height/20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16)
                  )
                ),

              ),
              SizedBox(height: AppSize.s10,),
              TextButton(onPressed: (){},
                child: Text('Sign In With Facebook',
                  style: TextStyle(
                      color: AppColor.appGreen
                  ),),
                style: TextButton.styleFrom(
                    side: BorderSide(color: AppColor.appGreen),
                    minimumSize: Size(Get.width/1.5, Get.height/20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s16)
                    )
                ),

              ),
            ],
          )




            ],
          ),
        ),
        // child: Column(
        //   children: [
        //     ElevatedButton(onPressed: () {},
        //         child: Text('Get Started',
        //         style: TextStyle(color: Colors.white,
        //         fontSize: AppSize.s18),
        //         ),
        //       style: ElevatedButton.styleFrom(backgroundColor: AppColor.appGreen,
        //       minimumSize: Size(Get.width/2,Get.height/20))
        //     ),
        //     ElevatedButton(onPressed: () {},
        //         child: Text('Get Started',
        //           style: TextStyle(color: Colors.white,
        //               fontSize: AppSize.s18),
        //         ),
        //         style: ElevatedButton.styleFrom(backgroundColor: AppColor.appGreen,
        //             minimumSize: Size(Get.width/2,Get.height/20))
        //     ),
        //
        //   ],
        // ),
      ),
    );

    
  }
}
