

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {

  RxString imagePath =''.obs;


  Future getImage()async{
    final  _picker = ImagePicker();
    final image = await _picker.pickImage(source:ImageSource.gallery);

    if(image != null){
      imagePath.value = image.path.toString();
    }


  }


}