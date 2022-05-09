import 'dart:async';

import 'package:flutter/material.dart';

import 'package:task_design2/core/Constants/Routes.dart' as route;

import '../../../../core/Constants/PathImageConstants.dart';
import '../../../../core/Constants/SizeConfig/Size_Config.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context)
            .pushReplacementNamed(route.greateTafsserHome));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: Image.asset(
          PathConstants.splashScreenPic,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
