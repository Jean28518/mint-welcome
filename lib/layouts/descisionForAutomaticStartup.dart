import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/automaticConfiguration.dart';
import 'package:mint_welcome_2/layouts/manualConfiguration.dart';
import 'package:mint_welcome_2/mintY.dart';

class AutomaticSettingsDecision extends StatefulWidget {
  const AutomaticSettingsDecision({Key? key}) : super(key: key);

  @override
  _AutomaticSettingsDecisionState createState() =>
      _AutomaticSettingsDecisionState();
}

class _AutomaticSettingsDecisionState extends State<AutomaticSettingsDecision> {
  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Set up Linux Mint with recommemded settings?",
      contentElements: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MintYButtonBigWithIcon(
              icon: Icon(
                Icons.create_rounded,
                color: MintY.currentColor,
                size: 150,
              ),
              title: "Manual Configuration",
              text: "Keep the full control of every change on your pc.",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManualConfiguration()),
                );
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYButtonBigWithIcon(
              icon: Icon(
                Icons.auto_awesome,
                color: MintY.currentColor,
                size: 150,
              ),
              title: "Automatic Configuration",
              text: "Select the specific automatic actions on the next page.",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AutomaticConfiguration()),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
