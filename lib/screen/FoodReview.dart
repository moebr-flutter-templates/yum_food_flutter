import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yum_food_flutter/model/FoodModel.dart';
import 'package:yum_food_flutter/screen/PurchaseMoreScreen.dart';
import 'package:yum_food_flutter/utils/FoodDataGenerator.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';
import  'package:yum_food_flutter/utils/AppWidget.dart';


import '../utils/FoodColors.dart';
import 'FoodRestaurantsDescription.dart';

class FoodReview extends StatefulWidget {
  static String tag = '/FoodReview';

  @override
  FoodReviewState createState() => FoodReviewState();
}

class FoodReviewState extends State<FoodReview> {
  late List<ReviewModel> mReviewList;

  @override
  void initState() {
    super.initState();
    mReviewList = addReviewData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(food_white);
    return Scaffold(
      backgroundColor: food_white,
      appBar: appBar(context, food_lbl_reviews),
      body: PurchaseMoreScreen(false),
    );
  }
}
