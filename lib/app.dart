import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_se/bindings/general_bindings.dart';
import 'package:kishan_se/utils/constants/colors.dart';
import 'package:kishan_se/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //starting point
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, //by-default system theme is white
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      // home: const OnBoardingScreen());
      home: const Scaffold(
          backgroundColor: TColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
