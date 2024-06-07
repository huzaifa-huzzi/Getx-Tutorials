import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_dart/HomeScreen.dart';
import 'package:getx_dart/Languages.dart';
import 'package:getx_dart/Notification_example.dart';
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
      translations: Languages(),
      fallbackLocale:const  Locale('en_US'),
      locale:const  Locale('en_US'),
      home:const NotificationExample() ,
      getPages: [
        GetPage(name: '/', page: () =>const  HomeScreen()),
        GetPage(name: '/ScreenOne', page: () =>  ScreenOne())
      ],
    );
  }
}


