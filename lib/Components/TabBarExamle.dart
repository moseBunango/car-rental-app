import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  bool isPressed = true;
  bool isNotPressed = false;
  void NotoggleColor() {
    setState(() {
      isPressed = !isPressed;
      isNotPressed = !isNotPressed;
    });
  }

  void toggleColor() {
    setState(() {
      isNotPressed = !isNotPressed;
      isPressed = !isPressed;
    });
  }

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
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                NotoggleColor();
              },
              child: Text(
                'Same drop point',
                style: TextStyle(color: isPressed ? Colors.black : Colors.grey),
              )),
          SizedBox(
            width: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                toggleColor();
              },
              child: Text(
                'Different drop point',
                style:
                    TextStyle(color: isNotPressed ? Colors.black : Colors.grey),
              ))
        ],
      )),
    );
  }
}
