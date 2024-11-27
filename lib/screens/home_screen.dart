import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seed_firebase/extentions/context_extenstion.dart';
import 'package:seed_firebase/stream/example.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? random;
  int? randomFuture;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){

          Stream<int> stream=  createStream();
          stream.listen((value){
            setState(() {
              random=value;
            });
          });

          }, icon: Icon(Icons.music_note)),

          IconButton(onPressed: (){
          Future<int> future=  createFuture();
          future.then((value){
            setState(() {
              randomFuture=value;
            });
          });

          }, icon: Icon(Icons.factory)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(random.toString(),style: context.displayLarge,),
            Text(randomFuture.toString(),style: context.displayLarge,),
          ],
        ),
      ),
    );
  }
}
