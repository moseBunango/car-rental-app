import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left:34 ),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    child: Image.asset('lib/icons/location.png'),
                  ),
                  SizedBox(width: 10),
                  Text('Pick-up',
                  style: TextStyle(fontSize: 15), ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 40,
              width: 350,
              child: TextField(
                     decoration: InputDecoration(
                     border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.green), // Green border color
                     borderRadius: BorderRadius.all(Radius.circular(12.0)), // Rounded corners
                ),
                   filled: true, // Fill with color
                   fillColor: Colors.green[50], // Fill color
                   contentPadding: EdgeInsets.all(10.0), // Padding around the text
              ),
            ),
            ),
            SizedBox(height:20),
            Container(
              padding: EdgeInsets.only(left:24 ),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    child: Image.asset('lib/icons/location.png'),
                  ),
                  SizedBox(width: 10),
                  Text('Dropp-off',
                  style: TextStyle(fontSize: 15), ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 40,
              width: 350,
              child: TextField(
                     decoration: InputDecoration(
                     border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.green), // Green border color
                     borderRadius: BorderRadius.all(Radius.circular(12.0)), // Rounded corners
                ),
                   filled: true, // Fill with color
                   fillColor: Colors.green[50], // Fill color
                   contentPadding: EdgeInsets.all(10.0), // Padding around the text
              ),
            ),
            ),
             SizedBox(height:20),
            Container(
              padding: EdgeInsets.only(left:24 ),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    child: Image.asset('lib/icons/calendar.png'),
                  ),
                  SizedBox(width: 10),
                  Text('From',
                  style: TextStyle(fontSize: 15), ),
                ],
              ),
            ),
            SizedBox(height: 8),
           Container(
              height: 40,
              width: 350,
              child: TextField(
                     decoration: InputDecoration(
                     border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.green), // Green border color
                     borderRadius: BorderRadius.all(Radius.circular(12.0)), // Rounded corners
                ),
                   filled: true, // Fill with color
                   fillColor: Colors.green[50], // Fill color
                   contentPadding: EdgeInsets.all(10.0), // Padding around the text
              ),
            ),
            ),
             SizedBox(height:20),
            Container(
              padding: EdgeInsets.only(left:24 ),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    child: Image.asset('lib/icons/calendar.png'),
                  ),
                  SizedBox(width: 10),
                  Text('To',
                  style: TextStyle(fontSize: 15), ),
                ],
              ),
            ),
            SizedBox(height: 8),
           Container(
              height: 40,
              width: 350,
              child: TextField(
                     decoration: InputDecoration(
                     border: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.green), // Green border color
                     borderRadius: BorderRadius.all(Radius.circular(12.0)), // Rounded corners
                ),
                   filled: true, // Fill with color
                   fillColor: Colors.green[50], // Fill color
                   contentPadding: EdgeInsets.all(10.0), // Padding around the text
              ),
            ),
            ),
            SizedBox(height: 16),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
         primary: Colors.greenAccent,
         //minimumSize: const Size.fromHeight(40),
         minimumSize: Size(350, 40),
         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)), ),
        onPressed: () {
           Navigator.pushNamed(context, '/CarSelection');
        },
        child: Text('Find a Car',
        style: TextStyle(fontSize: 20),),
      ),
          ],
        ),
      ),
    );
  }
}
