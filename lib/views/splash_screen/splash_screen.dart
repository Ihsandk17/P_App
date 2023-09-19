import 'package:flutter/material.dart';
import 'package:p_app/firebase_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> {
  SplashServices splahsServices = SplashServices();

  @override
  void initState() {
    super.initState();
    splahsServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Splash Screen",
        style: TextStyle(fontSize: 16, color: Colors.red),
      ),
    );
  }
}
