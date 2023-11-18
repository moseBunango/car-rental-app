import 'package:flutter/material.dart';

class TabCarSelection extends StatefulWidget {
  const TabCarSelection({super.key});

  @override
  State<TabCarSelection> createState() => _TabCarSelectionState();
}

class _TabCarSelectionState extends State<TabCarSelection> {
  int selectedButtonIndex = -1;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child:  SingleChildScrollView(
         scrollDirection: Axis.horizontal,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'Regular',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'Vaccation',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'Tourism',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  'Bus/Truck',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          ],
      )),
    );
  }
}
