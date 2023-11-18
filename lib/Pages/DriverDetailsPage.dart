import 'package:flutter/material.dart';

class DriverDetailsPage extends StatefulWidget {
  const DriverDetailsPage({super.key});

  @override
  State<DriverDetailsPage> createState() => _DriverDetailsPageState();
}

class _DriverDetailsPageState extends State<DriverDetailsPage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.greenAccent,
        title: Text('Driver Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green[300]!, Colors.green[700]!],
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: ' Driver\'s Full Name',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Driver\'s Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Driver\'s PhoneNo.',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Driving Licence',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Country of residence',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Implement signup logic here
                     Navigator.pushNamed(context, '/PaymentPage');
                  },
                  child: Text('Procced to payments'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[900],
                    padding: EdgeInsets.all(15.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}