import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dart/Controller/Favourie%20Controller.dart';


class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  final controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Favourite app'),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: controller.fruitList.length,
          itemBuilder: (context,index){
        return ListTile(
          onTap: (){
            if(controller.tempFruit.contains(controller.fruitList[index].toString())){
              controller.removeToFavourite(controller.fruitList[index].toString());
            }else{
              controller.addToFavourite(controller.fruitList[index].toString());
            }

          },
          title: Text(controller.fruitList[index].toString()),
          trailing: Obx(() =>  Icon(Icons.favorite,color:controller.tempFruit.contains(controller.fruitList[index].toString()) ? Colors.red :Colors.white  ,),)


        );
      }) ,
    );
  }
}
