
import 'package:get/get.dart';

class NotificationController extends GetxController{

  RxBool notification = false.obs;

  setNotification(bool value){
    notification.value = value;
  }


}