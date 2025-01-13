import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/iteam_details_model.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class IteamDetails extends StatelessWidget {
  const IteamDetails({super.key, required this.iteamDetailsModel});
  final IteamDetailsModel iteamDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iteamDetailsModel.color,
        radius: 10,
      ),
      title: Text(
        iteamDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text('${iteamDetailsModel.amount}%',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xff208CC8))),
    );
  }
}
