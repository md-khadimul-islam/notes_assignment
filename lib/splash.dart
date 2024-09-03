import 'package:care_tutors_assignment/core/utils/text_font_style.dart';
import 'package:flutter/material.dart';

import 'presentation/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();
    super.initState();
  }

  loadInitialData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(
        child: Text("Welcome!", style: TextFontStyle.headline24Poppins),
      );
    } else {
      return const LoginScreen();
    }
  }
}
