import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mint_welcome_2/mintY.dart';

class Finished extends StatelessWidget {
  const Finished({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Your configured workspace is waiting for you!",
      contentElements: [
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/mintinstall_logo.png",
            height: 96,
          ),
          title: "Install additional software",
          text: "There are about 60,000 applications available.",
          buttonText: "Open Software Manager",
        ),
        MintYCardWithIconAndAction(
          icon: Image.asset(
            "assets/images/firewall.png",
            height: 96,
          ),
          title: "Firewall",
          text:
              "Control and monitor network traffic by enabling the firewall. If your machine is always connected to trusted networks, you don't have to configure it explicitly.",
          buttonText: "Configure Firewall",
        ),
        MintYCardWithIconAndAction(
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
            size: 96,
          ),
          title: "Contribute",
          text:
              "Linux Mint is a great project and is open to anyone who wants to participate. There are many ways to help. Click the button below to see how you can get involved.",
          buttonText: "Contribute",
        )
      ],
      bottom: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MintYButton(
            text: Text(
              "Open Help Center",
              style: MintY.heading2White,
            ),
            color: MintY.currentColor,
          ),
          SizedBox(width: 8),
          MintYButton(
            text: Text(
              "Finish",
              style: MintY.heading2White,
            ),
            color: MintY.currentColor,
            onPressed: () {
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
