import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yum_food_flutter/model/FoodModel.dart';
import 'package:yum_food_flutter/screen/PurchaseMoreScreen.dart';
import 'package:yum_food_flutter/utils/AppWidget.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:yum_food_flutter/utils/FoodDataGenerator.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';

class FoodFavourite extends StatefulWidget {
  static String tag = '/FoodFavourite';

  @override
  FoodFavouriteState createState() => FoodFavouriteState();
}

class FoodFavouriteState extends State<FoodFavourite> {
  late List<FoodDish> mList1;

  @override
  void initState() {
    super.initState();
    mList1 = addFoodDishData();
  }

  @override
  Widget build(BuildContext context) {
    //changeStatusColor(food_app_background);
    return Scaffold(
      backgroundColor: food_app_background,
      appBar: appBar(context, food_lbl_favourite),
      body: PurchaseMoreScreen(false),
    );
  }
}
