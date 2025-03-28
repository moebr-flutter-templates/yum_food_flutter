import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yum_food_flutter/screen/FoodWalkThrough.dart';
import 'package:yum_food_flutter/utils/FoodImages.dart';
import 'package:nb_utils/nb_utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await 3.seconds.delay;
    FoodWalkThrough().launch(context, isNewTask: true);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        food_logo,
        width: 120,
        height: 120,
        alignment: Alignment.center,
      ).cornerRadiusWithClipRRect(60).center(),
    );
  }
}
