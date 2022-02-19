import 'package:flutter/material.dart';
import 'package:mint_welcome_2/alignedGrid.dart';
import 'package:mint_welcome_2/layouts/configuringLinuxMint.dart';
import 'package:mint_welcome_2/layouts/installingApplications.dart';
import 'package:mint_welcome_2/layouts/welcome.dart';
import 'package:mint_welcome_2/mintY.dart';

class AutomaticConfiguration extends StatefulWidget {
  late bool codecsInstalled;

  AutomaticConfiguration({Key? key, bool codecsInstalled = false})
      : super(key: key) {
    this.codecsInstalled = codecsInstalled;
  }

  @override
  State<AutomaticConfiguration> createState() => _AutomaticConfigurationState();
}

class _AutomaticConfigurationState extends State<AutomaticConfiguration> {
  bool installCodecs = true;

  bool initializeTimeshift = true;

  bool automaticDriverInstallation = true;

  bool configureMintUpdate = true;

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Automatic Configuration",
      contentElements: [
        MintYSelectableEntryWithIconHorizontal(
          icon: Image.asset("assets/images/multimedia_codecs.png", height: 128),
          selected: installCodecs,
          onPressed: () {
            installCodecs = !installCodecs;
            setState(() {});
          },
          title: "Multimedia Codecs Installation",
          text:
              "Additional proprietary multimedia codes for playing videos and music.",
        ),
        MintYSelectableEntryWithIconHorizontal(
          icon: Image.asset("assets/images/timeshift_logo.png", height: 128),
          selected: initializeTimeshift,
          onPressed: () {
            initializeTimeshift = !initializeTimeshift;
            setState(() {});
          },
          title: "Automatic Snapshots",
          text:
              "Configure automatic snapshots with timeshift. Timeshift will be configured to 2 monthly automatic snapshots on your root partition.",
        ),
        MintYSelectableEntryWithIconHorizontal(
          icon: Image.asset("assets/images/drivers.png", height: 128),
          selected: automaticDriverInstallation,
          onPressed: () {
            automaticDriverInstallation = !automaticDriverInstallation;
            setState(() {});
          },
          title: "Automatic Driver Installation",
          text: "All recommended drivers will be installed.",
        ),
        MintYSelectableEntryWithIconHorizontal(
          icon: Image.asset("assets/images/update_logo.png", height: 128),
          selected: configureMintUpdate,
          onPressed: () {
            configureMintUpdate = !configureMintUpdate;
            setState(() {});
          },
          title: "Automatic Update Manager Configuration",
          text:
              "Automatic updates and maintainance will be configured. Also the fastest mirror server will be choosen for faster downloads.",
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
                "(After the automatic setup all settings are revertible and editible after)",
                style: Theme.of(context).textTheme.bodyText1),
          ),
        ),
      ],
      bottom: Column(
        children: [
          MintYButtonNext(
            route: ConfiguringLinuxMint(),
          ),
        ],
      ),
    );
  }
}
