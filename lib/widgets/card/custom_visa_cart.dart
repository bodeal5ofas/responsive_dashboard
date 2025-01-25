import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responive_dashboard/utils/app_image.dart';
import 'package:responive_dashboard/utils/app_styles.dart';

class CustomVisaCart extends StatelessWidget {
  const CustomVisaCart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / (215 - 27),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff4EB7F2),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
              ),
              subtitle:  Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style:
                        AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
