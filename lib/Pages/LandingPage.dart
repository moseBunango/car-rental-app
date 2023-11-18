import 'package:car_rental_app/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
    return Scaffold(
    body: Container(
      color: Colors.greenAccent,
      child: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset('lib/assets/b-CARS.png',
              width:150,
              height:100,),
            ),
             SizedBox(height: 20), // Add some spacing
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('RENT',
                style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold, 
  ),),
                Text('A CAR WITH US',
                style: TextStyle(
                color: Color.fromARGB(255, 219, 205, 79), // Set the color to gold
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic, // Set fontStyle to italic
  ),)
              ],
             ),
          ],
        ) ),
    ),
   );
  }
}