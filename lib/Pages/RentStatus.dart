import 'package:flutter/material.dart';

class RentStatus extends StatefulWidget {
  const RentStatus({super.key});

  @override
  State<RentStatus> createState() => _RentStatusState();
}

class _RentStatusState extends State<RentStatus> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.greenAccent,
      title: Text('Rent Status'),
    );
  }
}