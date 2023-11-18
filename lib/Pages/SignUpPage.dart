import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:car_rental_app/Components/api.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Create New Account'),
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
                Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  controller: fullNameController,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  controller: emailController,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  controller: passwordController,
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: isLoading ? null : handleSignUp,
                  child: Text(isLoading ? 'creating....' : 'Sign Up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green[900],
                    padding: EdgeInsets.all(15.0),
                  ),
                ),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: () {
                    // Implement navigation to a login page here
                    Navigator.pushNamed(context, '/LogInPage');
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleSignUp() async {
    setState(() {
      isLoading = true;
    });

    var data = {
      'fullName': fullNameController.text,
      'email': emailController.text,
      'password': passwordController.text,
    };

    var res = await Api().postData(data, 'register');
    var body = jsonDecode(res.body);

    if (body['success']) {
      // Registration successful
      // You can navigate to the next screen or show a success message
      Navigator.pushNamed(context, '/DriverDetailsPage');
    } else {
      // Registration failed
      // Handle errors or show an error message
      print("fuck you");
    }
    setState(() {
      isLoading = false;
    });
  }
}
