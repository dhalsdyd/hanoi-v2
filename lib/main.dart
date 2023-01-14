import 'package:hanoi_v2/app/data/initalize.dart';
import 'package:hanoi_v2/app/routes/pages.dart';
import 'package:hanoi_v2/app/routes/route.dart';
import 'package:hanoi_v2/app/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // loading
  // FlutterNativeSplash.remove(widgetsBinding: widgetsBinding);

  // Do Firebase Initial Settings With Firebase CLI
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppInitalizer().init();
  //Get.config();
  runApp(
    GetMaterialApp(
      //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: Routes.home,
      getPages: AppPages.pages,
      theme: ThemeData(fontFamily: "Pretendard"),
      locale: GetCurrentLocale.currentDeviceLocale,
      fallbackLocale: GetCurrentLocale.fallBackLocale,
      //routingCallback
      //GetObserver
    ),
  );
}
