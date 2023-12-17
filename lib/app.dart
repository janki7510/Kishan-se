import 'package:flutter/material.dart';
import 'package:kishan_se/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //starting point
      themeMode: ThemeMode.system, //by-default system theme is white
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}

