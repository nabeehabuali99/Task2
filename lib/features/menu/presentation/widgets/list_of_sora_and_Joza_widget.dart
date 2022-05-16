import 'package:flutter/material.dart';
import 'package:task_design2/core/Constants/Colors.dart';
import 'package:task_design2/core/Constants/SizeConfig/Dimensions.dart';
import 'package:task_design2/core/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:task_design2/core/Constants/SizeConfig/IconSizeConstants.dart';

import '../../../../core/Constants/My Icons.dart';
import '../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../core/Constants/StringsAllProject.dart';

class TabViewWidget extends StatefulWidget {
  const TabViewWidget(
      {Key? key, required this.hintTextField, required this.textContent})
      : super(key: key);
  final String hintTextField;
  final String textContent;

  @override
  State<TabViewWidget> createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> {
  late String inputStr;
  final controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color_Const.grey,
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions11)),
        ),
        Positioned(
          top: SizeConfig.screenHeight! * 0.0035,
          left: SizeConfig.screenWidth! * 0.0028,
          right: SizeConfig.screenWidth! * 0.0028,
          bottom: SizeConfig.screenHeight! * 0.05,
          child: Container(
            decoration: BoxDecoration(
              color: Color_Const.whiteCustom,
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions11),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.screenHeight! * 0.105,
          left: SizeConfig.screenWidth! * 0.015,
          right: SizeConfig.screenWidth! * 0.015,
          bottom: SizeConfig.screenHeight! * 0.095,
          child: Container(
            decoration: BoxDecoration(color: Color_Const.white),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Text("${widget.textContent} ${index + 1}",
                    style: TextStyle(fontSize: FontSizeConstants.fontsize20),
                    textAlign: TextAlign.end);
              },
              itemCount: 50,
              separatorBuilder: (context, index) => Divider(
                  color: Color_Const.grey,
                  thickness: 0.08,
                  indent: DimensionsConstants.dimensions20,
                  endIndent: DimensionsConstants.dimensions20),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.screenHeight! * 0.007,
          left: SizeConfig.screenWidth! * 0.01,
          right: SizeConfig.screenWidth! * 0.01,
          child: Container(
            decoration: BoxDecoration(
              color: Color_Const.white,
              border: Border.all(color: Color_Const.grey, width: 4),
              borderRadius:
                  BorderRadius.circular(DimensionsConstants.dimensions8),
            ),
            child: TextField(
              style: TextStyle(fontSize: FontSizeConstants.fontsize20),
              textAlign: TextAlign.right,
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: controller.text.isNotEmpty
                      ? IconButton(
                          icon: Icon(
                            MyIcons.clear,
                            size: IconSizeConstants.iconSize25,
                            color: Color_Const.grey,
                          ),
                          onPressed: () {
                            controller.clear();
                          },
                        )
                      : null,
                  focusColor: Color_Const.grey,
                  suffixIcon: const Icon(MyIcons.search),
                  suffixIconColor: Color_Const.grey,
                  border: InputBorder.none,
                  fillColor: Color_Const.black,
                  hintStyle: TextStyle(
                      fontSize: FontSizeConstants.fontsize20,
                      color: Color_Const.grey),
                  hintText: widget.hintTextField),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.screenHeight! * 0.34,
          left: SizeConfig.screenWidth! * 0.0027,
          right: SizeConfig.screenWidth! * 0.0027,
          bottom: SizeConfig.screenHeight! * 0.005,
          child: Container(
            decoration: BoxDecoration(
              color: Color_Const.blueCustom,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(DimensionsConstants.dimensions11),
                  bottomRight:
                      Radius.circular(DimensionsConstants.dimensions11)),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: SizeConfig.screenHeight! * 0.055,
                width: SizeConfig.screenWidth! * 0.13,
                decoration: BoxDecoration(color: Color_Const.white),
                child: TextField(
                  style: TextStyle(fontSize: FontSizeConstants.fontsize20),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      // contentPadding:
                      // EdgeInsets.all(DimensionsConstants.dimensions8),
                      hintStyle: TextStyle(
                          color: Color_Const.grey,
                          fontSize: FontSizeConstants.fontsize20),
                      hintText: AllStringsConstants.rangeNumberOfPageHint),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(DimensionsConstants.dimensions11),
                child: Text(AllStringsConstants.goToPage,
                    style: TextStyle(
                        color: Color_Const.black,
                        fontSize: FontSizeConstants.fontsize15,
                        fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
