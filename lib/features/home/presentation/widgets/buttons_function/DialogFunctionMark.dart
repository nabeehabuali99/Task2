import 'package:flutter/material.dart';

import '../../../../../core/Constants/Colors.dart';
import '../../../../../core/Constants/FontFamilyConstants.dart';
import '../../../../../core/Constants/My Icons.dart';
import '../../../../../core/Constants/Shared Widgets/Icon Button Widget.dart';
import '../../../../../core/Constants/Shared Widgets/Text Widget.dart';
import '../../../../../core/Constants/SizeConfig/Dimensions.dart';
import '../../../../../core/Constants/SizeConfig/FontSizeConstants.dart';
import '../../../../../core/Constants/SizeConfig/IconSizeConstants.dart';
import '../../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../../core/Constants/SizeConfig/Space Widgets.dart';
import '../../../../../core/Constants/StringsAllProject.dart';


Future showDialogFunctionMarks(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions7)),
          child: SizedBox(
            height: SizeConfig.screenHeight! * 0.3,
            width: SizeConfig.screenWidth! * 0.5,
            child: ListView(
              children: <Widget>[
                Stack(
                  children: [
                    const VerticalSpace(0.5),
                    Container(
                      height: SizeConfig.screenHeight! * 0.31,
                      width: SizeConfig.screenWidth! * 1,
                      color: Color_Const.grey.withOpacity(0.5),
                    ),
                    Center(
                      child: textWidget(
                          AllStringsConstants.markWord,
                          FontFamilyConstants.montserrat,
                          Color_Const.black,
                          FontSizeConstants.fontsize20,
                          FontWeight.bold),
                    ),
                    const VerticalSpace(2),
                    Positioned(
                      top: SizeConfig.screenHeight! * 0.05,
                      child: Container(
                        padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
                        height: SizeConfig.screenHeight! * 0.15,
                        width: SizeConfig.screenWidth! * 0.9,
                        color: Color_Const.white,
                      ),
                    ),
                    Positioned(
                      top: SizeConfig.screenHeight! * 0.22,
                      child: iconButtonWidget(MyIcons.close, Color_Const.black,
                          IconSizeConstants.iconSize30, () {
                        Navigator.of(context).pop();
                      }),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
