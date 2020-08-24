import 'package:flutter/material.dart';

class ValuePassing extends StatelessWidget {
  final firstName;
  final lastName;

  ValuePassing({this.firstName, this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstName,
              style: TextStyle(fontSize: 30),
            ),
            Text(
              lastName,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
