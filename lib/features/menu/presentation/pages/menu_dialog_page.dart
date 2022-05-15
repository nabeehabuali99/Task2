import 'package:flutter/material.dart';

import '../../../../core/Constants/Colors.dart';
import '../../../../core/Constants/FontFamilyConstants.dart';
import '../../../../core/Constants/My Icons.dart';
import '../../../../core/Constants/Shared Widgets/Icon Button Widget.dart';
import '../../../../core/Constants/Shared Widgets/Text Widget.dart';
import '../../../../core/Constants/SizeConfig/Dimensions.dart';
import '../../../../core/Constants/SizeConfig/FontSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/IconSizeConstants.dart';
import '../../../../core/Constants/SizeConfig/Size_Config.dart';
import '../../../../core/Constants/SizeConfig/Space Widgets.dart';
import '../../../../core/Constants/StringsAllProject.dart';
import '../widgets/list_of_sora_and_Joza_widget.dart';

class MenuDialogPage extends StatefulWidget {
  const MenuDialogPage({Key? key}) : super(key: key);

  @override
  State<MenuDialogPage> createState() => _MenuDialogPageState();
}

class _MenuDialogPageState extends State<MenuDialogPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);
    IconSizeConstants().init(context);
    return Dialog(
      child: Stack(
        children: [
          Container(
              height: SizeConfig.screenHeight! * 0.5,
              width: SizeConfig.screenWidth! * 0.78,
              decoration: BoxDecoration(
                color: Color_Const.white,
                borderRadius:
                    BorderRadius.circular(DimensionsConstants.dimensions15),
              )),
          Container(
            height: SizeConfig.screenHeight! * 0.07,
            width: SizeConfig.screenWidth! * 0.78,
            decoration: BoxDecoration(
                color: Colors.white60,
                border: Border(
                    bottom: BorderSide(
                  color: Color_Const.blue,
                  width: 1.0,
                ))),
            child: TabBar(
              controller: tabController,
              labelStyle: TextStyle(
                fontSize: FontSizeConstants.fontsize15,
              ),
              indicatorColor: Color_Const.blue,
              labelColor: Color_Const.black,
              unselectedLabelColor: Color_Const.grey,
              tabs: const [
                Tab(
                  child: Text("قائمة الاجزاء"),
                ),
                Tab(
                  child: Text("قائمة السور"),
                ),
              ],
            ),
          ),
          Positioned(
            top: SizeConfig.screenHeight! * 0.07,
            width: SizeConfig.screenWidth! * 0.78,
            height: SizeConfig.screenHeight! * 0.43,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                TabViewWidget(
                  hintTextField: "ابحث في الاجزاء",
                  textContent: 'الجزء',
                ),
                TabViewWidget(
                  hintTextField: "ابحث في السور",
                  textContent: 'السورة',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
