import 'package:flutter/material.dart';
import 'package:keshvacredit/UI/Login/Otp.dart';

import 'UI/Login/Otp.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SendOtpScreen(),
    );
  }
}
