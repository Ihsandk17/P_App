import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Sign in"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
