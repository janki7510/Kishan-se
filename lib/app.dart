import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_se/features/authentication/screens/login/login.dart';
import 'package:kishan_se/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( //starting point
      themeMode: ThemeMode.system, //by-default system theme is white
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home:  const LoginScreen(),
    );
  }
}

