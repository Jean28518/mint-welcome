import 'package:flutter/material.dart';
import 'package:mint_welcome_2/layouts/descisionForAutomaticStartup.dart';
import 'package:mint_welcome_2/mintY.dart';

class InstallingApplications extends StatefulWidget {
  const InstallingApplications({Key? key}) : super(key: key);

  @override
  _InstallingApplicationsState createState() => _InstallingApplicationsState();
}

class _InstallingApplicationsState extends State<InstallingApplications> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => AutomaticSettingsDecision()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MintYPage(
      title: "Installing Applications...",
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
