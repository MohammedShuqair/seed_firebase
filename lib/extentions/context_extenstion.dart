 import 'package:flutter/material.dart';

 // TextTheme texTh(BuildContext context){
 //  return Theme.of(context).textTheme;
 // }

 extension TextStyleExtention on BuildContext{
   TextStyle? get displayLarge=>Theme.of(this).textTheme.displayLarge;

   showSnackBar(String message){
     ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
   }

   Future<T?> go<T>(Widget widget)async{
   return await Navigator.of(this).push<T>(MaterialPageRoute(builder: (_){
       return widget;
     }));
   }
 }

