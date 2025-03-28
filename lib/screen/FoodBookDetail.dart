import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yum_food_flutter/utils/AppWidget.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:yum_food_flutter/utils/FoodImages.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';

import 'PurchaseMoreScreen.dart';

class FoodBookDetail extends StatefulWidget {
  static String tag = '/FoodBookDetail';

  @override
  FoodBookDetailState createState() => FoodBookDetailState();
}

class FoodBookDetailState extends State<FoodBookDetail> {
  var mPeople = 0;
  var mTime = 0;
  var mFood = 0;
  var mPeopleList, mTimeList, mFoodList;
  var now = new DateTime.now();
  var count = 1;
  var formatter = new DateFormat('dd  MMM');
  late String formatted;

  @override
  void initState() {
    super.initState();
    mPeopleList = ["1", "2", "3", "4", "5+"];
    mFoodList = ["Veg", "Non Veg"];
    mTimeList = ["07:00", "07:30", "08:00", "08:30", "09:00", "09:15", "09:30", "10:00", "10:30", "11:00"];
    formatted = formatter.format(now);
  }

  @override
  Widget build(BuildContext context) {
    //changeStatusColor(food_app_background);
    var width = MediaQuery.of(context).size.width;

    final mPeopleInfo = Container(
      height: width * 0.1,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: mPeopleList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                mPeople = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 16, top: 4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: mPeople == index ? food_colorPrimary : food_colorPrimary_light),
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(mPeopleList[index], style: primaryTextStyle(color: mPeople == index ? food_white : food_textColorPrimary)).center(),
            ),
          );
        },
      ),
    );

    final mTimeInfo = GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: mTimeList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              mTime = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: mTime == index ? food_colorPrimary : food_colorPrimary_light),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(mTimeList[index], style: primaryTextStyle(color: mTime == index ? food_white : food_textColorPrimary)).center(),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 16, crossAxisSpacing: 16, childAspectRatio: 2.0),
    );

    final mFoodInfo = Container(
      height: width * 0.1,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: mFoodList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                mFood = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 16, top: 4),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: mFood == index ? food_colorPrimary : food_colorPrimary_light),
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(mFoodList[index], style: primaryTextStyle(color: mFood == index ? food_white : food_textColorPrimary)).center(),
            ),
          );
        },
      ),
    );

    return Scaffold(
      backgroundColor: food_app_background,
      appBar: appBar(context, food_lbl_reserve_table),
      body: PurchaseMoreScreen(false)
    );
  }
}
