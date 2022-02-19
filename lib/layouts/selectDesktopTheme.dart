import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mint_welcome_2/layouts/selectOfficeSuite.dart';
import 'package:mint_welcome_2/mintY.dart';

class DesktopThemeSelector extends StatefulWidget {
  const DesktopThemeSelector({Key? key}) : super(key: key);

  @override
  _DesktopThemeSelectorState createState() => _DesktopThemeSelectorState();
}

class _DesktopThemeSelectorState extends State<DesktopThemeSelector> {
  bool darkSelected = true;
  Color selectedColor = MintY.green;
  bool taskModern = true;

  @override
  Widget build(BuildContext context) => MintYPage(
        title: "Please configure your Desktop Theme",
        contentElements: [
          Center(
            child: Text(
              "Base Theme",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintYButton(
                  text: Text(
                    "Dark",
                    style: MintY.heading2White,
                  ),
                  color: Colors.black,
                  onPressed: () {
                    themeSelected(true);
                  }),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  text: Text(
                    "Bright",
                    style: MintY.heading2,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    themeSelected(false);
                  })
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Color Theme",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintYButton(
                  color: MintY.colors("Green"),
                  onPressed: () {
                    colorSelected("Green");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xff6cabcd),
                  onPressed: () {
                    colorSelected("Aqua");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xff5b73c4),
                  onPressed: () {
                    colorSelected("Blue");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xffaa876a),
                  onPressed: () {
                    colorSelected("Brown");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xff9d9d9d),
                  onPressed: () {
                    colorSelected("Grey");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xffdb9d61),
                  onPressed: () {
                    colorSelected("Orange");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xffc76199),
                  onPressed: () {
                    colorSelected("Pink");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xff8c6ec9),
                  onPressed: () {
                    colorSelected("Purple");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xffc15b58),
                  onPressed: () {
                    colorSelected("Red");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xffc8ac69),
                  onPressed: () {
                    colorSelected("Sand");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  color: Color(0xff5aaa9a),
                  onPressed: () {
                    colorSelected("Teal");
                  },
                  width: 60),
              SizedBox(
                width: 24,
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Task Bar Layout",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            key: UniqueKey(),
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MintYButton(
                  text: Text(
                    "Classic",
                    style: MintY.heading2White,
                  ),
                  width: 180,
                  color: taskModern ? Colors.grey : selectedColor,
                  onPressed: () {
                    taskSelected(false);
                  }),
              SizedBox(
                width: 24,
              ),
              MintYButton(
                  text: Text(
                    "Modern",
                    style: MintY.heading2White,
                  ),
                  color: taskModern ? selectedColor : Colors.grey,
                  onPressed: () {
                    taskSelected(true);
                  }),
            ],
          ),
          SizedBox(
            height: 50,
          ),
        ],
        bottom: MintYButtonNext(route: OfficeSuiteSelector()),
      );

  void themeSelected(bool dark) {
    darkSelected = dark;
    setState(() {});
  }

  void colorSelected(String color) {
    selectedColor = MintY.colors(color);
    MintY.currentColor = MintY.colors(color);
    setState(() {});
  }

  void taskSelected(bool modern) {
    taskModern = modern;
    setState(() {});
  }
}
