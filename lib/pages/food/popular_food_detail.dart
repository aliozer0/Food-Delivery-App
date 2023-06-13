import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimension.dart';

class PopularFoodDteail extends StatelessWidget {
  const PopularFoodDteail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("lib/assets/image/food2.jpeg"),
                ),
              ),
            ),
          ),
          Positioned(
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
