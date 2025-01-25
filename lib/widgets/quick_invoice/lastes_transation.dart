import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/user_info_model.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/utils/app_styles.dart';
import 'package:responive_dashboard/widgets/user_info_list_tile.dart';

class LastesTransation extends StatelessWidget {
  const LastesTransation({super.key});
  final List<UserInfoModel> users = const [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: users
                .map(
                  (e) => IntrinsicWidth(child: UserInfoListTile(userModel: e)),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
