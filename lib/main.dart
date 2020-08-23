import 'package:flutter/material.dart';
import 'package:flutter_learn/new_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  void increment() {
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              // border: Border.all(width: 2.0),
              image: DecorationImage(
                image: NetworkImage('https://rb.gy/ouccxa'),
              ),
            ),
            // child: Text(
            //   'Hello Flutter',
            //   style: TextStyle(fontSize: 20),
            // ),
            // alignment: Alignment.bottomCenter,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Hello Flutter!',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow,
                border: Border.all(
                  width: 3,
                ),
              ),
              child: Text(
                '$count',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment(0, 0),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPreview(),
                ),
              );
            },
            icon: Icon(
              Icons.navigate_next,
              size: 60,
            ),
          ),
        ],
      ),
    );
  }
}
