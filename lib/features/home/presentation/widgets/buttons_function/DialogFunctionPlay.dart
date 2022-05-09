import 'package:flutter/material.dart';

import '../../../../../core/Constants/Colors.dart';
import '../../../../../core/Constants/FontFamilyConstants.dart';
import '../../../../../core/Constants/Shared Widgets/Text Widget.dart';
import '../../../../../core/Constants/SizeConfig/Dimensions.dart';
import '../../../../../core/Constants/SizeConfig/FontSizeConstants.dart';
import '../../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../../core/Constants/SizeConfig/Space Widgets.dart';
import '../../../../../core/Constants/StringsAllProject.dart';



Future showDialogFunctionPlay(BuildContext context) {
  return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions20)),
          child: SizedBox(
            height: SizeConfig.screenHeight! * 0.3,
            width: SizeConfig.screenWidth! * 0.5,
            child: ListView(
              children: <Widget>[
                const VerticalSpace(2),
                Center(
                  child: textWidget(
                      AllStringsConstants.aleartWord,
                      FontFamilyConstants.montserrat,
                      Color_Const.black,
                      FontSizeConstants.fontsize20,
                      FontWeight.bold),
                ),
                const VerticalSpace(2),
                Center(
                  child: textWidget(
                      AllStringsConstants.descText,
                      FontFamilyConstants.montserrat,
                      Color_Const.black,
                      FontSizeConstants.fontsize15,
                      FontWeight.normal),
                ),
                Divider(
                    color: Color_Const.grey,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: SizeConfig.defaultSize! * 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: textWidget(
                            AllStringsConstants.noWord,
                            FontFamilyConstants.montserrat,
                            Color_Const.black,
                            FontSizeConstants.fontsize15,
                            FontWeight.normal),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: SizeConfig.defaultSize! * 2),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: textWidget(
                            AllStringsConstants.yesWord,
                            FontFamilyConstants.montserrat,
                            Color_Const.black,
                            FontSizeConstants.fontsize15,
                            FontWeight.normal),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      });
}
