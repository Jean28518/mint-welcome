import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/selectDesktopTheme.dart';
import 'package:mint_welcome_2/layouts/selectOfficeSuite.dart';
import 'package:mint_welcome_2/mintY.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MintY.colorfulBackground,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/linuxmint_logo.png",
            height: 256,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome to Linux Mint!",
            style: MintY.heading1White,
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            "Please take a few minutes to complete the setup of your computer.",
            style: MintY.paragraphWhite,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintYButton(
                  text: Text(
                    "Later",
                    style: MintY.heading2White,
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    exit(0);
                  }),
              SizedBox(
                width: 50,
              ),
              MintYButtonNext(route: DesktopThemeSelector())
            ],
          )
        ],
      )),
    );
  }
}
