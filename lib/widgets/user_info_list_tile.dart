import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responive_dashboard/models/user_info_model.dart';
//import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.userModel});
  final UserInfoModel userModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userModel.image),
          title: Column(
            children: [
              Text(
                userModel.title,
                style: AppStyles.styleSemiBold16,
              ),
              Text(
                userModel.subtitle,
                style: AppStyles.styleRegular12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
