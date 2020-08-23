import 'package:flutter/material.dart';

import 'package:flutter_learn/state.dart';

void main() => runApp(ListPreview());

class ListPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListPreview',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final List<String> names = [
    'Rishu',
    'Nisi',
    'Satyam',
    'Yogi',
    'Nelesh Jee',
    'Vinay',
    'Amit',
    'Yash',
    'Sagar',
    'Varnit',
    'Sonu',
    'Varnit',
    'Rishu',
    'Nisi',
    'Satyam',
    'Yogi',
    'Nelesh Jee',
    'Vinay',
    'Amit',
    'Yash',
    'Sagar',
    'Varnit',
    'Sonu',
    'Varnit'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => StateExample()));
        },
        child: Icon(Icons.navigate_next),
      ),
      appBar: AppBar(
        title: Text('ListPreview'),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              print('Tapped');
            },
            leading: Icon(Icons.sms),
            title: Text(names[index]),
          );
        },
      ),
    );
  }
}
