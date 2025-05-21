import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:leikha_rakhen/app/modules/home/bindings/home_binding.dart';

import 'app/firebase_options.dart';
import 'app/routes/app_pages.dart';
import 'app/styles/app_styles.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //using screenUtil package for adaptive screen size
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    builder: (context, child) => child!,
    child: GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Kuniko",
    initialRoute: AppPages.CREATE,
    initialBinding: HomeBinding(),
    getPages: AppPages.routes,
    theme: ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Nunito',
    textSelectionTheme: TextSelectionThemeData(
    cursorColor: AppColor.accentColor,
    selectionHandleColor: AppColor.primaryAppColor1
    ),
    ),
    )
    );
  }
}
