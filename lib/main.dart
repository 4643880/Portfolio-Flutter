import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/config/routes.dart';
import 'package:portfolio_app/firebase_options.dart';
import 'package:portfolio_app/get_di.dart' as di;

Future<void> main() async {
  di.init();
  // Firebase Initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          GetPlatform.isMobile ? const Size(375, 771) : const Size(1920, 1080),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        final easyLoading = EasyLoading.init();
        return GetMaterialApp(
          builder: (context, child) {
            EasyLoading.init();
            child = easyLoading(context, child);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(),
              child: child,
            );
          },
          title: 'Aizaz',
          debugShowCheckedModeBanner: false,
          initialRoute: RouteHelper.routeHomeScreen,
          getPages: RouteHelper.routes,
          defaultTransition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 400),
        );
      },
    );
  }
}
