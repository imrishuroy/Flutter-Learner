import 'package:flutter/material.dart';
import './value_passing.dart';

main() => App();

String firstName;
String lastName;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Field',
      home: TextFieldClass(),
    );
  }
}

class TextFieldClass extends StatefulWidget {
  @override
  _TextFieldClassState createState() => _TextFieldClassState();
}

class _TextFieldClassState extends State<TextFieldClass> {
  final textControler = TextEditingController();
  @override
  void initState() {
    super.initState();
    firstName = '';
    lastName = '';
    textControler.addListener(_printValue);
  }

  _printValue() {
    setState(() {
      lastName = textControler.text;
    });

    print('Last Name is $lastName ');
  }

  @override
  void dispose() {
    textControler.removeListener(_printValue);
    textControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ValuePassing(firstName: firstName, lastName: lastName)));
        },
        child: Icon(Icons.text_fields),
      ),
      appBar: AppBar(
        title: Text('Text Field Class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your FirstName',
                  icon: Icon(Icons.text_fields),
                ),
                onChanged: (text) {
                  setState(() {
                    firstName = text;
                  });
                  print(firstName);
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Last Name',
                    icon: Icon(Icons.text_fields)),
                controller: textControler,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$firstName ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  '$lastName',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
