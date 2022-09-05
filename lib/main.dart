import 'package:flutter/material.dart';
import 'ausper_loginscreen.dart';
import 'otp_screen.dart';
import 'Constant.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constant.homeScreen,
      home: AusperLoginScreen(),
    )
  );
}

