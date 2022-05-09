import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/great_tafseers.dart';



const String greateTafsserHome = 'GreateTafsserHome';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case greateTafsserHome:
      return MaterialPageRoute(builder: (context) => const GreateTafsserHome());
    default:
      throw ("This Rout does not exists");
  }
}
