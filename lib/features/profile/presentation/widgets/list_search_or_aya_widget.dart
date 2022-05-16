import 'package:flutter/material.dart';
import 'package:task_design2/core/Constants/SizeConfig/FontSizeConstants.dart';
import 'package:task_design2/core/Constants/StringsAllProject.dart';

import '../../../../core/Constants/Colors.dart';
import '../../../../core/Constants/SizeConfig/Dimensions.dart';
import 'create_list_search_or_aya.dart';

class ListSearchOrAya extends StatefulWidget {
  const ListSearchOrAya({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListSearchOrAya> createState() => _ListSearchOrState();
}

class _ListSearchOrState extends State<ListSearchOrAya> {
  @override
  Widget build(BuildContext context) {
    DimensionsConstants().init(context);
    FontSizeConstants().init(context);

    return Column(
      children: [
        Padding(
          padding:   EdgeInsets.all(DimensionsConstants.dimensions20),
          child: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => CreateListOfSearchOrAya(
                        titleText: widget.title,
                      ));
            },
            child:   Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AllStringsConstants.createList,
                style: TextStyle(fontSize:FontSizeConstants.fontsize20, color: Color_Const.blue),
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: []),
        ),
      ],
    );
  }
}
