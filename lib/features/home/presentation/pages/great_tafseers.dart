import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Constants/PathImageConstants.dart';
import '../../../../core/Constants/SizeConfig/Dimensions.dart';
import '../../../../core/Constants/SizeConfig/FontSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/IconSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../injection_container.dart';
import '../Widgets/buttons_widget.dart';
import '../Widgets/page_view_widget.dart';
import '../Widgets/Positioned Widgets.dart';
import '../bloc/home_bloc.dart';
import '../widgets/buttons_function/DialogFunctionMark.dart';
import '../widgets/buttons_function/DialogFunctionPlay.dart';
import '../widgets/page_view_action.dart';
import '../widgets/page_view_widget.dart';

class GreateTafsserHome extends StatefulWidget {
  const GreateTafsserHome({Key? key}) : super(key: key);

  @override
  State<GreateTafsserHome> createState() => _GreateTafsserHomeState();
}

class _GreateTafsserHomeState extends State<GreateTafsserHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    DimensionsConstants().init(context);
    final PageController controller = PageController(initialPage: 3);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            height: SizeConfig.screenHeight! * 0.13,
            width: SizeConfig.screenWidth,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.defaultSize! * 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buttonWidget(PathConstants.play, () {
                      showDialogFunctionPlay(context);
                    }),
                    buttonWidget(PathConstants.play_all_icon, () {
                      showDialogFunctionPlay(context);
                    }),
                    buttonWidget(PathConstants.ayaList, () {
                      showDialogFunctionPlay(context);
                    }),
                    buttonWidget(PathConstants.settings_icon, () {
                      //  showDialogFunction('Settings ?', context);
                    }),
                    buttonWidget(PathConstants.list_icon, () {
                      //  showDialogFunction('add mark !!', context);
                    }),
                    buttonWidget(PathConstants.bookmark_list_icon, () {
                      showDialogFunctionMarks(context);
                    }),
                    buttonWidget(PathConstants.addBookMark_icon, () {
                      showDialogFunctionMarks(context);
                    }),
                    buttonWidget(PathConstants.search_icon, () {
                      showDialogFunctionMarks(context);
                    }),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        PathConstants.banner,
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight! * 0.1,
            width: SizeConfig.screenWidth,
            child: Image.asset(
              PathConstants.background,
              fit: BoxFit.cover,
              height: SizeConfig.screenHeight,
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight! * 0.12,
            width: SizeConfig.screenWidth,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize! * 1),
              child: Image.asset(
                PathConstants.frame,
                fit: BoxFit.fill,
                height: SizeConfig.screenHeight! * 0.8,
              ),
            ),
          ),
          BlocProvider(
            create: (BuildContext context) => sl<HomeBloc>(),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is ViewPageInitial) {
                  return   pageViewWid(controller);
                } else if (state is ViewPageStateLoaded) {
                  return const Text("message");
                } else {
                  return const Text("message");
                }
              },
            ),
          ),
          positionWidget(
              SizeConfig.screenHeight! * 0.1,
              SizeConfig.screenWidth! * 0.55,
              SizeConfig.screenWidth! * 0.09,
              SizeConfig.defaultSize! * 1,
              PathConstants.Sora020,
              SizeConfig.defaultSize! * 3,
              SizeConfig.defaultSize! * 3),
          positionWidget(
              SizeConfig.screenHeight! * 0.1,
              SizeConfig.screenWidth! * 0.1,
              SizeConfig.screenWidth! * 0.6,
              SizeConfig.defaultSize! * 1,
              PathConstants.p23,
              SizeConfig.defaultSize! * 3,
              SizeConfig.defaultSize! * 3),
        ],
      ),
    );
  }
}
