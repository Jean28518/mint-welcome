import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/finished.dart';
import '../mintY.dart';
import 'descisionForAutomaticStartup.dart';

class ConfiguringLinuxMint extends StatefulWidget {
  const ConfiguringLinuxMint({Key? key}) : super(key: key);

  @override
  _ConfiguringLinuxMintState createState() => _ConfiguringLinuxMintState();
}

class _ConfiguringLinuxMintState extends State<ConfiguringLinuxMint> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Finished()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Configuring Linux Mint...",
      contentElements: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [MintYProgressIndicatorCircle()],
        ),
        SizedBox(height: 16),
        Center(
          child: Text("This progress could take a few minutes...",
              style: Theme.of(context).textTheme.bodyText1),
        )
      ],
    );
  }
}
