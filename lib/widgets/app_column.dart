import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(
            text: text,
            size: Dimensions.font26,
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            children: [
              Wrap(
                  children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  size: 20,
                  color: AppColors.mainColor,
                );
              })),
              SizedBox(
                width: Dimensions.width10,
              ),
              SmallText(
                text: "4.5",
                color: AppColors.mainBlackColor,
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              SmallText(
                text: "1287",
                color: AppColors.mainBlackColor,
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              SmallText(
                text: "comments",
                color: AppColors.mainBlackColor,
              )
            ],
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconAndTextWidget(
                  icon: Icons.circle_sharp,
                  colorIcon: AppColors.iconcolor1,
                  text: "Normal"),
              IconAndTextWidget(
                  icon: Icons.location_on,
                  colorIcon: AppColors.mainColor,
                  text: "1.7Km"),
              IconAndTextWidget(
                  icon: Icons.access_time_rounded,
                  colorIcon: AppColors.iconcolor2,
                  text: "32min"),
            ],
          )
        ],
      ),
    );
  }
}
