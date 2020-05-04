import 'package:flutter/material.dart';
import 'package:fule_text/fule_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FuleText'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('正常的Text'),
            Text('The quick brown fox jumps over a lazy dog.'),
            SizedBox(
              height: 20,
            ),
            Text('在Container(width:250)中的Text:'),
            Container(
              width: 250,
              child: Text(
                'The quick brown fox jumps over a lazy dog.',
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('在Container(width:250)中的FuleText:'),
            Container(
              width: 250,
              child: FuleText('The quick brown fox jumps over a lazy dog.'),
            ),
          ],
        ),
      ),
    );
  }
}
