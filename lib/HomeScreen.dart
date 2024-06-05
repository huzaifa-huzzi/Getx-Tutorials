import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('GetX Practice'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        Get.snackbar('Huzaifa Khan', 'Iam Learning Getx',
          backgroundColor: Colors.red,
          icon:const  Icon(Icons.drive_file_rename_outline),
          snackPosition: SnackPosition.BOTTOM,
          mainButton: TextButton(onPressed: (){}, child:const  Text('Click')),

        );
      }),
    );
  }
}
