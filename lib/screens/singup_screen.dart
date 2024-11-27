
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:seed_firebase/extentions/context_extenstion.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUp()async{

    try {
      UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text
      );
      print("userCredential ${userCredential.toString()}");
    }  catch (e,s) {
      context.showSnackBar(e.toString());
      print("error ${e}");
      print("stack ${s}");
    }

  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    print("rebuild");
    var inputDecoration = InputDecoration(
      hintText: "Email",
      filled: true,
      fillColor: Colors.grey[200],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: height /10,
                ),
                Text(
                  "Sign up\nYour Account",
                  style: context.displayLarge,
                ),
                SizedBox(
                  height: height /8,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (String? name) {
                    if (name?.isEmpty ?? true) {
                      return "please enter name";
                    }
                    return null;
                  },
                  decoration: inputDecoration,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: (String? password) {
                    if (password?.isEmpty ?? true) {
                      return "please enter password";
                    }
                    return null;
                  },
                  decoration: inputDecoration.copyWith(
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: height / 12,
                ),
                MaterialButton(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () async {
                    if (formKey.currentState?.validate() ?? false) {
                      signUp();
                    }
                  },
                  child: Text("SignUp",style: Theme.of(context).textTheme.bodyLarge,),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
