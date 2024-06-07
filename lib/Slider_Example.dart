import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dart/Controller/Slider_Controller.dart';



class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {

  final controller= Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Slider Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() =>Container(
            height: 400,
            width: 400,
            color: Colors.red.withOpacity(controller.slider.value),
          ), ),
          Obx(() => Slider(value: controller.slider.value, onChanged: (value){
            controller.setOpacity(value);
          }) ),


        ],
      ),
    );
  }
}
