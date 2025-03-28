import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yum_food_flutter/utils/FoodColors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yum_food_flutter/utils/FoodConstant.dart';

class PurchaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Purchase for more screen',
      color: food_colorPrimary,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launch(purchaseMoreUrl);
      },
    );
  }
}
