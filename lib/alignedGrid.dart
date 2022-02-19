import 'package:flutter/material.dart';

class AlignedGrid extends StatelessWidget {
  late double runSpacing;
  late double spacing;
  late List<Widget> children;

  AlignedGrid({
    double runSpacing = 4,
    double spacing = 4,
    List<Widget> children = const [],
  }) {
    this.runSpacing = runSpacing;
    this.spacing = spacing;
    this.children = children;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            child: Wrap(
              runSpacing: runSpacing,
              spacing: spacing,
              alignment: WrapAlignment.center,
              children: children,
            ),
          )),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return LayoutBuilder(
  //     builder: (context, constraint) {
  //       return SingleChildScrollView(
  //         child: ConstrainedBox(
  //           constraints: BoxConstraints(minHeight: constraint.maxHeight),
  //           child: IntrinsicHeight(
  //             child: Column(
  //               children: <Widget>[
  //                 Text("Header"),
  //                 Expanded(
  //                   child: Container(
  //                     color: Colors.red,
  //                   ),
  //                 ),
  //                 Text("Footer"),
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
