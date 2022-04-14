// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uts_flutter/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      title: 'Uts Mobile Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
        accentColor: Color.fromARGB(255, 255, 253, 157),
      ),
      home: HomePage(),
    );
  }
}
