import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_dart/HomeScreen.dart';
import 'package:getx_dart/Screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'GetX Practice',
      debugShowCheckedModeBanner: false,
      home:const  HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () =>const  HomeScreen()),
        GetPage(name: '/ScreenOne', page: () =>  ScreenOne())
      ],
    );
  }
}


