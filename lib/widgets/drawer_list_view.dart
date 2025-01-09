import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/drawer_iteam_model.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/widgets/drawer_iteam.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  List<DrawerIteamModel> iteams = const [
    DrawerIteamModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerIteamModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerIteamModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerIteamModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerIteamModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: iteams.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: DrawerIteam(
              drawerIteamModel: iteams[index],
              isActivate: activeIndex == index,
            )),
      ),
    );
  }
}
