import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:weather_app/widgets/bottom_navbar.dart';

void main(){
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}