import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/selectAdditionalSoftware.dart';
import 'package:mint_welcome_2/layouts/selectDesktopTheme.dart';
import 'package:mint_welcome_2/mintY.dart';

class BrowserSelector extends StatefulWidget {
  const BrowserSelector({Key? key}) : super(key: key);

  @override
  _BrowserSelectorState createState() => _BrowserSelectorState();
}

class _BrowserSelectorState extends State<BrowserSelector> {
  bool firefoxSelected = true;
  bool chromiumSelected = false;
  bool chromeSelected = false;

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Select your favorite browser(s)",
      contentElements: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/firefox_logo.png",
                width: 150,
              ),
              title: "Firefox",
              text: "Open Source browser with focus on privacy by Mozilla.",
              selected: firefoxSelected,
              onPressed: () {
                firefoxSelected = !firefoxSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/chromium_logo.png",
                width: 150,
              ),
              title: "Chromium",
              text: "Open Source browser. Free base of Google Chrom.e",
              selected: chromiumSelected,
              onPressed: () {
                chromiumSelected = !chromiumSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/chrome_logo.png",
                width: 150,
              ),
              title: "Google Chrome",
              text: "Proprietary browser from Google.",
              selected: chromeSelected,
              onPressed: () {
                chromeSelected = !chromeSelected;
                setState(() {});
              },
            ),
          ],
        ),
      ],
      bottom: MintYButtonNext(route: AdditionalSoftwareSelector()),
    );
  }
}
