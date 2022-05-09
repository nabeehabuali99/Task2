
import 'package:flutter/material.dart';


import '../../../../core/Constants/SizeConfig/Size_Config.dart';


Widget buttonWidget(String imagePath, onTap) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      height: SizeConfig.defaultSize! * 3,
      width: SizeConfig.defaultSize! * 3,
      child: Image.asset(imagePath,fit:  BoxFit.fill,),
    ),
  );
}
