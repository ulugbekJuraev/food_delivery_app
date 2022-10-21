import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //header
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(bottom: Dimensions.height15),
                padding: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Bangladesh",
                          color: AppColors.mainColor,
                        ),
                        Row(
                          children: [
                            SmallText(
                              text: "Narsingdi",
                              color: Colors.black54,
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              size: Dimensions.iconsize24,
                            )
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.width45,
                        height: Dimensions.height45,
                        child: const Icon(Icons.search, color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //body
            Expanded(
                child: SingleChildScrollView(
              child: FoodPageBody(),
            ))
          ],
        ),
      ),
    );
  }
}
