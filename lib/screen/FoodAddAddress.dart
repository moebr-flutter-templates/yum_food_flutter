import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';
import 'package:yum_food_flutter/utils/AppWidget.dart';

import 'PurchaseMoreScreen.dart';

class FoodAddAddress extends StatefulWidget {
  static String tag = '/FoodAddAddress';

  @override
  FoodAddAddressState createState() => FoodAddAddressState();
}

class FoodAddAddressState extends State<FoodAddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: food_white,
      appBar: appBar(context, food_lbl_add_address),
      body: PurchaseMoreScreen(false),
    );
  }
}
