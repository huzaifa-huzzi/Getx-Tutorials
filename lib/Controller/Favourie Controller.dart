import 'package:get/get.dart';

class FavouriteController extends GetxController {

  RxList <String> fruitList = ['Orange','Mange','Banana',].obs;
  RxList  tempFruit = [].obs;


  addToFavourite(String value){
    tempFruit.add(value);
  }

  removeToFavourite(String value){
    tempFruit.remove(value);
  }


}