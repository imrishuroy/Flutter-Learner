import 'package:flutter/material.dart';
import 'package:flutter_learn/grid_view.dart';

void main() {
  runApp(StateExample());
}

class StateExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: StateApp(),
    );
  }
}

class StateApp extends StatefulWidget {
  @override
  _StateAppState createState() => _StateAppState();
}

class _StateAppState extends State<StateApp> {
  String statement = 'Before SetState';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GridViewClass(),
              ));
        },
        child: Icon(Icons.navigate_next),
      ),
      appBar: AppBar(
        title: Text('State Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(statement),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                _callStateChange();
              },
              color: Colors.deepOrange,
              child: Text('Change'),
            )
          ],
        ),
      ),
    );
  }

  _callStateChange() {
    setState(() {
      statement = 'State Changed';
    });
  }
}
