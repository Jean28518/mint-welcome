import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/finished.dart';
import 'package:mint_welcome_2/layouts/welcome.dart';
import 'package:mint_welcome_2/mintY.dart';

class ManualConfiguration extends StatelessWidget {
  const ManualConfiguration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Manual system configuration",
      contentElements: [
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/multimedia_codecs.png",
            height: 96,
          ),
          title: "Multimedia Codecs",
          text:
              "Install additional proprietary multimedia codes for playing videos and music.",
          buttonText: "Install",
        ),
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/timeshift_logo.png",
            height: 96,
          ),
          title: "System Snapshots",
          text:
              "Next, let's set automatic systemsnapshots. If anything breaks, yeou can then restore your computer to its previous working state.",
          buttonText: "Launch",
        ),
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/drivers.png",
            height: 96,
          ),
          title: "Driver Manager",
          text:
              "Check the Driver Manager to see if it recommends any additional drivers for your computer. Most harware components are recogised by the Linux Kernel and work automatically without the need to install drivers. Some however requite proprietary drivers to be recognised or to work better.",
          buttonText: "Launch",
        ),
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/update_logo.png",
            height: 96,
          ),
          title: "Update Manager",
          text:
              "The little shield icon in your system tray is your Update Manager. It provides software updates, security updates and kernel updates to fix bugs, keeop your computer safe and support newer hardware components.",
          buttonText: "Launch",
        ),
      ],
      bottom: MintYButtonNext(route: Finished()),
    );
  }
}
