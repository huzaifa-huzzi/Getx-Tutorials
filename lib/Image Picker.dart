import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dart/Controller/ImageController.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  final controller = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Image Picker'),
        centerTitle: true,
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(
               child: CircleAvatar(
                 radius: 40,
                 backgroundImage:controller.imagePath.isNotEmpty ? FileImage(File(controller.imagePath.toString())) : null,
               ),
             ),
            TextButton(onPressed: (){
              controller.getImage();

            }, child:const  Text('Pick Image'))
          ],
        );
      }),
    );
  }
}
