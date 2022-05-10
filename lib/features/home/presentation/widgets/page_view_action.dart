
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../core/Constants/StringsAllProject.dart';
import '../bloc/home_bloc.dart';

Widget pageViewWid(PageController controller) {
  return Positioned(
    top: SizeConfig.screenHeight! * 0.19,
    left: SizeConfig.defaultSize! * 5,
    right: SizeConfig.defaultSize! * 5,
    child: SizedBox(
      width: SizeConfig.screenWidth! * .8,
      height: SizeConfig.screenHeight! * 0.7,
      child: PageView.builder(
        itemBuilder: ((context, position) {
          return Image.asset(
            AllStringsConstants.pictures[position],
            fit: BoxFit.fill,
            height: SizeConfig.screenHeight! * 2,
            width: SizeConfig.screenWidth! * 0.6,
          );
        }),
        itemCount: AllStringsConstants.pictures.length,
        controller: controller,
        scrollDirection: Axis.horizontal,
      ),
    ),
  );

}
onChange(int index,BuildContext context){
  BlocProvider.of<HomeBloc>(context).add(GetDataForSwipePageView(index:index));
}