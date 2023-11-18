import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Payment info'),
      ),
      body: Column(
        children:[
          SizedBox(height: 10,),
          Center(
            child: Container(
            decoration: BoxDecoration( 
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green[300]!, Colors.green[700]!],
            ),// Background color of the container
            borderRadius: BorderRadius.circular(12),),
              child: Column(children: [
                Text("TOTAL PRICE"),
                Text("USD 150",
                style:TextStyle(
                fontWeight:FontWeight.bold,
                ))
              ]),
            ),
          ),
          SizedBox(height: 10,),
           Container(
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
                    'Payments Options',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text('1.M-pesa',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                  Text('2.Tigo-Pesa',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                  Text('3.Airtel-Money',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                  Text('We accept these major card types',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset(
                     'lib/assets/NMB.jpeg', // Replace with your image asset path
                      width: 30, // Adjust the width as needed
                      height: 30,),
                      SizedBox(width: 10,),
                      Image.asset(
                     'lib/assets/TemboCard-MasterCard-.png', // Replace with your image asset path
                      width: 30, // Adjust the width as needed
                      height: 30,),
                      SizedBox(width: 10,),
                      Image.asset(
                     'lib/assets/Visa_Inc._logo.svg.webp', // Replace with your image asset path
                      width: 30, // Adjust the width as needed
                      height: 30,),
                      SizedBox(width: 10,),
                      Image.asset(
                     'lib/assets/Mastercard.png', // Replace with your image asset path
                      width: 30, // Adjust the width as needed
                      height: 30,),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Card number',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name on Card',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 10.0), 
                      TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Card Expires*',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    SizedBox(height: 10.0),
                     TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'CVC/CVV*',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement signup logic here
                      Navigator.pushNamed(context, '/RentStatus');
                    },
                    child: Text('PAY NOW'),
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
      ]),
    );
  }
}
