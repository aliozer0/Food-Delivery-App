import 'package:flutter/material.dart';
import 'package:food_delivery/assets/color/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';

class MainfoodPage extends StatefulWidget {
  const MainfoodPage({super.key});

  @override
  State<MainfoodPage> createState() => _MainfoodPageState();
}

class _MainfoodPageState extends State<MainfoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 45),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Bangladesh",
                      color: AppColors.mainColor,
                      size: 30,
                    ),
                    Text('City'),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
