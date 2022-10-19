import 'package:asif/custom_slider.dart';
import 'package:asif/intl_phone.dart';
import 'package:asif/phone_number_validation.dart';
import 'package:asif/shared_preferenace_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhoneNumberValidation(),
    );
  }
}
