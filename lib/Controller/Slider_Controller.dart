import 'package:get/get.dart';

class SliderController extends GetxController {

  RxDouble slider = .4.obs;

  setOpacity(double value){
    slider.value = value;
  }

}