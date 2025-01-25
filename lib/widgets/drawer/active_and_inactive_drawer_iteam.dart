import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responive_dashboard/models/drawer_iteam_model.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class ActiveDrawerIteam extends StatelessWidget {
  const ActiveDrawerIteam({super.key, required this.drawerIteamModel});
  final DrawerIteamModel drawerIteamModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerIteamModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          drawerIteamModel.title,
          style: AppStyles.styleRegular16(context),
        ),
      ),
    );
  }
}

class InActiveDrawerIteam extends StatelessWidget {
  const InActiveDrawerIteam({super.key, required this.drawerIteamModel});
  final DrawerIteamModel drawerIteamModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerIteamModel.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          // textAlign: TextAlign.left,
          drawerIteamModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
      trailing: Container(
        width: 4,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
