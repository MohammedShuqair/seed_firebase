 import 'package:flutter/material.dart';

 // TextTheme texTh(BuildContext context){
 //  return Theme.of(context).textTheme;
 // }

 extension TextStyleExtention on BuildContext{
   TextStyle? get displayLarge=>Theme.of(this).textTheme.displayLarge;

   showSnackBar(String message){
     ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
   }
 }

