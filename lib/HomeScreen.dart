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
             Card(
               child: ListTile(
                 title:const  Text('Getx Dialog Alert'),
                 subtitle:const  Text('Practicing Dialog Alert'),
                 onTap: (){
                   Get.defaultDialog(
                     title: 'Delete Chat',
                     middleText: 'Are You Sure you want to Delete chat',
                     contentPadding:const  EdgeInsets.all(20),
                     titlePadding:const EdgeInsets.only(top: 20),
                     confirm: TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child:const  Text('Yes')),
                     cancel: TextButton(onPressed: (){}, child:const  Text('No'))

                   );
                 },
               ),
             )
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
