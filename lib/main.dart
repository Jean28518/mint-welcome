import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/welcome.dart';
import 'package:mint_welcome_2/mintY.dart';
import 'package:mint_welcome_2/runLinuxCommand.dart';
import 'mintY.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: MintY.theme(),
      darkTheme: MintY.themeDark(),
      home: SplashScreen(),
    );
  }
}
