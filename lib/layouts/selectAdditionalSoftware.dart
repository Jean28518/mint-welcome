import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/descisionForAutomaticStartup.dart';
import 'package:mint_welcome_2/layouts/installingApplications.dart';
import 'package:mint_welcome_2/layouts/selectBrowser.dart';
import 'package:mint_welcome_2/layouts/selectDesktopTheme.dart';
import 'package:mint_welcome_2/mintY.dart';

class AdditionalSoftwareSelector extends StatefulWidget {
  const AdditionalSoftwareSelector({Key? key}) : super(key: key);

  @override
  _AdditionalSoftwareSelectorState createState() =>
      _AdditionalSoftwareSelectorState();
}

class _AdditionalSoftwareSelectorState
    extends State<AdditionalSoftwareSelector> {
  bool jitsiSelected = false;
  bool spotifySelected = false;
  bool discordSelected = false;
  bool zoomSelected = false;
  bool teamsSelected = false;

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Select additional software to be installed",
      contentElements: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/jitsi_logo.png",
                width: 150,
              ),
              title: "Jitsi Meet",
              text: "Open Source video conference tool.",
              selected: jitsiSelected,
              onPressed: () {
                jitsiSelected = !jitsiSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/spotify_logo.png",
                width: 150,
              ),
              title: "Spotify",
              text: "Proprietary music streaming service.",
              selected: spotifySelected,
              onPressed: () {
                spotifySelected = !spotifySelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/discord_logo.png",
                width: 150,
              ),
              title: "Discord",
              text: "Proprietary communication software.",
              selected: discordSelected,
              onPressed: () {
                discordSelected = !discordSelected;
                setState(() {});
              },
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/zoom_logo.png",
                width: 150,
              ),
              title: "Zoom",
              text: "Proprietary conference software.",
              selected: zoomSelected,
              onPressed: () {
                zoomSelected = !zoomSelected;
                setState(() {});
              },
            ),
            SizedBox(
              width: 10,
            ),
            MintYSelectableCardWithIcon(
              icon: Image.asset(
                "assets/images/teams_logo.png",
                width: 150,
              ),
              title: "Microsoft Teams",
              text: "Proprietary conference software.",
              selected: teamsSelected,
              onPressed: () {
                teamsSelected = !teamsSelected;
                setState(() {});
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
      bottom: MintYButtonNext(route: InstallingApplications()),
    );
  }
}
