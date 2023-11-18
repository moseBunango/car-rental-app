import 'package:flutter/material.dart';
import 'package:car_rental_app/Components/TabCarSelection.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CarSelection extends StatefulWidget {
  const CarSelection({super.key});

  @override
  State<CarSelection> createState() => _CarSelectionState();
}

class _CarSelectionState extends State<CarSelection> {
  final List<Car> cars = [
    Car(name: 'Car 1', price: 'Price 1', imageUrl: 'lib/assets/Hyundai.jpg'),
    Car(name: 'Car 2', price: 'Price 2', imageUrl: 'lib/assets/BMW.jpeg'),
    Car(name: 'Car 3', price: 'Price 3', imageUrl: 'lib/assets/download.jpeg'),
    // Add more car data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Column(children: [
            Text('Dar-es-salaam'),
            Text('30 Aug 12AM-31 Aug 12AM')
          ])),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TabCarSelection(),
          SizedBox(height: 10),
          for (final car in cars)
            // Inside the loop for cars
            GestureDetector(
              onTap: () {
                // Navigate to the next page when the container is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CarDetailsPage(car: car)),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius of the shadow
                      blurRadius: 5, // Blur radius of the shadow
                      offset: Offset(0, 3), // Offset of the shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // Rounded corners for the image
                      child: Image.asset(
                        car.imageUrl,
                        width: 280,
                        height: 100,
                        fit: BoxFit
                            .cover, // Ensure the image covers the entire container
                      ),
                    ),
                    SizedBox(height: 10), // Space between image and text
                    Text(
                      car.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Bold text
                        fontSize: 16, // Custom font size
                      ),
                    ),
                    Text(
                      car.price,
                      style: TextStyle(
                        color: Colors.green, // Custom text color
                        fontSize: 14, // Custom font size
                      ),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}

class CarDetailsPage extends StatelessWidget {
  final Car car;

  CarDetailsPage({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
          title: Column(children: [
            Text('30 Aug 12AM-31 Aug 12AM'),
            Text(car.name),
          ]) 
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            ClipRRect(
                      borderRadius: BorderRadius.circular(
                          12), // Rounded corners for the image
                      child: Image.asset(
                        car.imageUrl,
                        width: 280,
                        height: 100,
                        fit: BoxFit
                            .cover, // Ensure the image covers the entire container
                      ),
                    ),
            SizedBox(height: 10),

            ElevatedButton(
        style: ElevatedButton.styleFrom(
         primary: Colors.greenAccent,
         //minimumSize: const Size.fromHeight(40),
         minimumSize: Size(350, 40),
         shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)), ),
        onPressed: () {
           Navigator.pushNamed(context, '/SignUpPage');
        },
        child: Text('Pay \$ 150',
        style: TextStyle(fontSize: 20),),
      ),
           SizedBox(height: 20,),
            Container(
              height: 100,
              width: 200,
               margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 2, // Spread radius of the shadow
                      blurRadius: 5, // Blur radius of the shadow
                      offset: Offset(0, 3), // Offset of the shadow
                    ),
                  ],
                ),
              child: Column(children: [
                Text("CAR DETAILS"),
                SizedBox(height: 10,),
                 Text(
              car.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ),
            Text(
              car.price,
              style: TextStyle(
                color: Colors.green,
                fontSize: 10,
              ),
            ),
            Text("4 doors",
            style: TextStyle(
                color: Colors.green,
                fontSize: 10,
              ),),
            Text("Automatic transmition",
            style: TextStyle(
                color: Colors.green,
                fontSize: 10,
              ),),
              ]),
            ),
            SizedBox(height: 20,),
            Flexible(
              child:FlutterMap(
              options: MapOptions(
                center: LatLng(-6.776012,39.178326),
                zoom: 8
              ),
              children: [
                 TileLayer(
                 urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                 userAgentPackageName: 'com.example.app',
               ),
               MarkerLayer(markers:
               [Marker(
                width: 30,
                height: 30,
                point:LatLng(-6.776012, 39.178326),
                child: Icon(
                Icons.location_on,
                color: Colors.red,
                size: 40.0,
              ),)])
              ],
            ) )
          ],
        ),
      ),
    );
  }
}

class Car {
  final String name;
  final String price;
  final String imageUrl;

  Car({required this.name, required this.price, required this.imageUrl});
}
