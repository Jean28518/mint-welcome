import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/selectBrowser.dart';
import 'package:mint_welcome_2/layouts/selectDesktopTheme.dart';
import 'package:mint_welcome_2/mintY.dart';

class OfficeSuiteSelector extends StatefulWidget {
  const OfficeSuiteSelector({Key? key}) : super(key: key);

  @override
  _OfficeSuiteSelectorState createState() => _OfficeSuiteSelectorState();
}

class _OfficeSuiteSelectorState extends State<OfficeSuiteSelector> {
  bool libreofficeSelected = true;
  bool onlyofficeSelected = false;
  bool wpsofficeSelected = false;

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Which office software do you want to use?",
      contentElements: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/libreoffice_logo.png",
                width: 150,
              ),
              title: "Libre Office",
              text:
                  "Open Source Office Suite from The Document Foundation.\nGreat for the Open Document Format (.odt, .ods, .odp)",
              selected: libreofficeSelected,
              onPressed: () {
                libreofficeSelected = !libreofficeSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/onlyoffice_logo.png",
                width: 150,
              ),
              title: "Only Office",
              text:
                  "Open Source Office Suite.\nGreat for the Microsoft Document Format (.docx, .xls, .ppt)",
              selected: onlyofficeSelected,
              onPressed: () {
                onlyofficeSelected = !onlyofficeSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/wpsoffice_logo.png",
                width: 150,
              ),
              title: "WPS Office",
              text:
                  "Proprietary Office Suite.\nGreat for the Microsoft Document Format (.docx, .xls, .ppt)",
              selected: wpsofficeSelected,
              onPressed: () {
                wpsofficeSelected = !wpsofficeSelected;
                setState(() {});
              },
            ),
          ],
        )
      ],
      bottom: MintYButtonNext(route: BrowserSelector()),
    );
  }
}
