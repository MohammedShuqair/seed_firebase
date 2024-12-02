 import 'dart:math';

Stream<int> createStream()async*{
  while(true){
    await Future.delayed(Duration(seconds: 2));
    yield Random().nextInt(1000);
  }
 }
 
 Future<int> createFuture()async{
  while(true){
    await Future.delayed(Duration(seconds: 2));
    return Random().nextInt(1000);
  }
 }