import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seed_firebase/screens/home_screen.dart';
import 'package:seed_firebase/screens/login_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isLoggedIn=false;

  @override
  void initState() {
    listenToUser();
    super.initState();
  }

  void listenToUser(){
    Stream<User?> stream=FirebaseAuth.instance.authStateChanges();
    stream.listen((User? user){
      print("user ${user.toString()}");
      if(user==null){
        isLoggedIn=false;
      }else{
        isLoggedIn=true;
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {

    if(isLoggedIn){
      return HomeScreen();
    }else{
      return LoginScreen();
    }

  }
}
