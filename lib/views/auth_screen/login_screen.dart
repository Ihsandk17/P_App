import 'package:flutter/material.dart';
import 'package:p_app/views/widgets/rounded_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwardController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwardController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle_outlined,
                            color: Colors.grey,
                          ),
                          hintText: "Type your Email",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter Email";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextFormField(
                      controller: passwardController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.grey,
                          ),
                          hintText: "Type your Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  roundedButton(
                    title: "Sign In",
                    color: Colors.blue,
                    onPress: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  roundedButton(
                      title: "Sign Up", color: Colors.amber, onPress: () {}),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
