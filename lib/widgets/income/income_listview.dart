import 'package:flutter/material.dart';
import 'package:responive_dashboard/models/iteam_details_model.dart';
import 'package:responive_dashboard/widgets/income/iteam_details.dart';

class IncomeListview extends StatelessWidget {
  const IncomeListview({super.key});
  final List<IteamDetailsModel> iteams = const [
    IteamDetailsModel(
        title: 'Design service', amount: '40', color: Color(0xff208CC8)),
    IteamDetailsModel(
        title: 'Design product', amount: '25', color: Color(0xff4EB7F2)),
    IteamDetailsModel(
        title: 'Product royalti', amount: '20', color: Color(0xff064061)),
    IteamDetailsModel(title: 'Other', amount: '22', color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: iteams.length,
      itemBuilder: (context, index) =>
          IteamDetails(iteamDetailsModel: iteams[index]),
    );
  }
}
