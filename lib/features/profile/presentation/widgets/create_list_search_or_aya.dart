import 'package:flutter/material.dart';

import '../../../../core/Constants/SizeConfig/Dimensions.dart';
import '../../../../core/Constants/SizeConfig/FontSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/IconSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/Size_Config.dart';

class CreateListOfSearchOrAya extends StatelessWidget {
  const CreateListOfSearchOrAya({Key? key, required this.titleText})
      : super(key: key);
  final String titleText;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    return Dialog(
        child: Stack(children: [
      Container(
        height: SizeConfig.screenHeight! * 0.38,
        width: SizeConfig.screenWidth! * 0.6,
        color: Colors.white,
      ),
      Container(
        height: SizeConfig.screenHeight! * 0.1,
        width: SizeConfig.screenWidth! * 0.6,
        color: const Color(0xffccf5ff),
        child: Center(child: Text(titleText)),
      ),
      Positioned(
        top: SizeConfig.screenHeight! * 0.12,
        right: SizeConfig.screenWidth! * 0.2,
        left: SizeConfig.screenWidth! * 0.2,
        bottom: SizeConfig.screenHeight! * 0.05,
        child: Column(
          children: const [
            Center(
              child: Text("اسم القائمة", style: TextStyle(fontSize: 18)),
            ),
            Center(
              child: TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: SizeConfig.screenHeight! * 0.2,
        bottom: SizeConfig.screenHeight! * 0,
        right: SizeConfig.screenWidth! * 0.1,
        left: SizeConfig.screenWidth! * 0.1,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "الغاء",
                style: TextStyle(fontSize: 18),
              )),
          TextButton(
              onPressed: () {},
              child: const Text("حفظ", style: TextStyle(fontSize: 18)))
        ]),
      ),
    ]));
  }
}
