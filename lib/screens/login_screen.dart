
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: height /8,
                ),
                Text(
                  "Sign in\nYour Account",
                  style: Theme.of(context).textTheme.displayLarge,
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

                    }
                  },
                  child: Text("Login",style: Theme.of(context).textTheme.bodyLarge,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
