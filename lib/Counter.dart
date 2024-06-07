import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dart/Controller/Counter%20Controller.dart';


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Counter Example'),
        centerTitle: true,
      ),
      body: Center(
        child:Obx(() =>  Text(controller.counter.toString(),style:const  TextStyle(fontSize: 20),),)
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
        controller.incrementCounter();
      }),
    );
  }
}
