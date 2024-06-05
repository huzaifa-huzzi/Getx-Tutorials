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
                 title:const  Text('Getx Alert Dialog'),
                 subtitle:const  Text('Practicing Alert  Dialog'),
                 onTap: (){
                  Get.defaultDialog(
                    title: 'Delete chat',
                    middleText: 'Are You sure you want to Delete',
                    confirm: TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child:const  Text('Yes')),
                    cancel: TextButton(onPressed: (){}, child:const  Text('NO'))
                  );
                 },
               ),
             ),
          Card(
            child: ListTile(
              title:const  Text('Getx Bottom Sheet'),
              subtitle:const  Text('Practicing Bottom sheet'),
              onTap: (){
                Get.bottomSheet(
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading:const  Icon(Icons.light_mode),
                              title:const  Text('Light Mode'),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text('Light Mode'),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            )
                          ],
                        )
                    )
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
