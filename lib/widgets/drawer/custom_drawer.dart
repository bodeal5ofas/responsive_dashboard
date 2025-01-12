import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/drawer_iteam_model.dart';
import 'package:responive_dashboard/models/user_info_model.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/widgets/drawer/active_and_inactive_drawer_iteam.dart';
import 'package:responive_dashboard/widgets/drawer/drawer_iteam.dart';
import 'package:responive_dashboard/widgets/drawer/drawer_list_view.dart';
import 'package:responive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                ActiveDrawerIteam(
                  drawerIteamModel: DrawerIteamModel(
                      title: 'Setting system', image: Assets.imagesSettings),
                ),
                ActiveDrawerIteam(
                  drawerIteamModel: DrawerIteamModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
