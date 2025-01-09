import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responive_dashboard/models/drawer_iteam_model.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/active_and_inactive_drawer_iteam.dart';

class DrawerIteam extends StatelessWidget {
  const DrawerIteam(
      {super.key, required this.drawerIteamModel, required this.isActivate});
  final DrawerIteamModel drawerIteamModel;
  final bool isActivate;
  @override
  Widget build(BuildContext context) {
    return isActivate
        ? InActiveDrawerIteam(drawerIteamModel: drawerIteamModel)
        : ActiveDrawerIteam(drawerIteamModel: drawerIteamModel);
  }
}
