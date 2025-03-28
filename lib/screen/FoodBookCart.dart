import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yum_food_flutter/model/FoodModel.dart';
import 'package:yum_food_flutter/utils/AppWidget.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:yum_food_flutter/utils/FoodDataGenerator.dart';
import 'package:yum_food_flutter/utils/FoodString.dart';
import 'package:yum_food_flutter/utils/FoodWidget.dart';

import 'FoodPayment.dart';
import 'PurchaseMoreScreen.dart';

class FoodBookCart extends StatefulWidget {
  static String tag = '/BookCart';

  @override
  FoodBookCartState createState() => FoodBookCartState();
}

class FoodBookCartState extends State<FoodBookCart> {
  late List<FoodDish> mList2;

  @override
  void initState() {
    super.initState();
    mList2 = orderData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(food_white);
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: food_white,
      bottomNavigationBar: Container(
        height: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: food_app_background,
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.location_on, size: 30),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(food_lbl_Sweet_home, style: primaryTextStyle()),
                            GestureDetector(
                              onTap: () {
                                PurchaseMoreScreen(false).launch(context);
                              },
                              child: Text(food_lbl_change, style: primaryTextStyle(color: food_colorPrimary)),
                            ),
                          ],
                        ),
                        Text(food_lbl_address_dashboard, style: primaryTextStyle()),
                        Text(food_lbl_delivery_time_36_min, style: primaryTextStyle(size: 14, color: food_textColorSecondary)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomBillDetail(context, food_color_blue_gradient1, food_color_blue_gradient2, food_lbl_make_payment, onTap: () {
              FoodPayment().launch(context);
            })
          ],
        ),
      ),
      body: PurchaseMoreScreen(true),
    );
  }
}

// ignore: must_be_immutable
class Cart extends StatelessWidget {
  late FoodDish model;

  Cart(FoodDish model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: CachedNetworkImageProvider(
                    model.image,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(model.name, style: primaryTextStyle()),
                      Text(model.price, style: primaryTextStyle()),
                      //text("sd",textColor: food_textColorSecondary),
                    ],
                  ),
                )
              ],
            ),
          ),
          Quantitybtn()
        ],
      ),
    );
  }
}
