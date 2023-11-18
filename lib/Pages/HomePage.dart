import 'package:flutter/material.dart';
import 'package:car_rental_app/Components/TabBarExamle.dart';
import 'package:car_rental_app/Components/FormSection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ClipOval(
        child: Image.asset(
          'lib/assets/b-CARS.png', // Replace with your image asset path
          width: 30, // Adjust the width as needed
          height: 30,),
      ),]
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             TabBarExample(),
             SizedBox(height:30),
            Expanded(
              child: FormSection(),
            ),
          ],
        ),
      ),
    );
  }
}