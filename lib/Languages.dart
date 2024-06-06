import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';


class Languages extends Translations{
  @override
  Map<String,Map<String,String>> get keys => {
    'en_US':{
      'message':'What is Your name',
       'name':'Huzaifa khan'
    },
    'ur_PK':{
      'message':'آپ کا نام کیا ہے',
      'name':'حذیفہ خان'
    },


  };

}