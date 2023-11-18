import 'package:car_rental_app/Pages/CarSelection.dart';
import 'package:car_rental_app/Pages/DriverDetailsPage.dart';
import 'package:car_rental_app/Pages/HomePage.dart';
import 'package:car_rental_app/Pages/LandingPage.dart';
import 'package:car_rental_app/Pages/LogInPage.dart';
import 'package:car_rental_app/Pages/PaymentPage.dart';
import 'package:car_rental_app/Pages/RentStatus.dart';
import 'package:car_rental_app/Pages/SignUpPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: Colors.transparent,
));;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        '/HomePage': (context) => HomePage(),
        '/CarSelection': (context) => CarSelection(),
        '/SignUpPage': (context) => SignUpPage(),
        '/LogInPage': (context) => LogInPage(),
        '/DriverDetailsPage': (context) => DriverDetailsPage(),
        '/PaymentPage': (context) =>PaymentPage(),
        '/RentStatus': (context) => RentStatus(),
      },
    );
  }
}
