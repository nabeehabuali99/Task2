import 'package:flutter/material.dart';

import 'features/home/presentation/pages/spash_Screen.dart';
import 'package:task_design2/core/Constants/Routes.dart' as route;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: route.controller,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
