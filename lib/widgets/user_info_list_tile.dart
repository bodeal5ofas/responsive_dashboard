import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Column(
          children: [
            Text(
              title,
              style: AppStyles.styleSemiBold16,
            ),
            Text(
              subtitle,
              style: AppStyles.styleRegular12,
            ),
          ],
        ),
      ),
    );
  }
}
