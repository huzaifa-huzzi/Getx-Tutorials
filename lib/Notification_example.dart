import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dart/Controller/Notification_Controller.dart';


class NotificationExample extends StatefulWidget {
  const NotificationExample({super.key});

  @override
  State<NotificationExample> createState() => _NotificationExampleState();
}

class _NotificationExampleState extends State<NotificationExample> {

  final controller = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Notification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
             const  Text('Notification'),
              Obx(() => Switch(value:controller.notification.value , onChanged: (value){
                controller.setNotification(value);
              }))

            ],
          )
        ],
      ),
    );
  }
}
