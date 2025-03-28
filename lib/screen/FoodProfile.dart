import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yum_food_flutter/screen/PurchaseMoreScreen.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';
import  'package:yum_food_flutter/utils/AppWidget.dart';


class FoodProfile extends StatefulWidget {
  static String tag = '/FoodProfile';

  @override
  FoodProfileState createState() => FoodProfileState();
}

class FoodProfileState extends State<FoodProfile> {
  @override
  Widget build(BuildContext context) {
    String? _selectedLocation = 'Female';
    return Scaffold(
      backgroundColor: food_white,
      appBar: appBar(context, food_lbl_profile),
      body:PurchaseMoreScreen(false),
    );
  }
}
