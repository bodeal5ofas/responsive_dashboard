import 'dart:developer';

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});
  final WidgetBuilder mobile, tablet, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // log(constraints.maxHeight.toString());
        // log(constraints.minHeight.toString());
        if (constraints.maxWidth < 800) {
          return mobile(context);
        } else if (constraints.maxWidth < 1200) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
