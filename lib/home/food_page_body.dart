import 'dart:ffi';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:food_delivery/assets/color/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      color: Colors.redAccent,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven
                ? const Color(0xFF69c5df)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("lib/assets/image/food1.png"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
                  const SizedBox(height: 10),
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
                        width: 10,
                      ),
                      SmallText(
                        text: "4.5",
                        color: AppColors.mainBlackColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: "1287",
                        color: AppColors.mainBlackColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: "comments",
                        color: AppColors.mainBlackColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
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
            ),
          ),
        ),
      ],
    );
  }
}
