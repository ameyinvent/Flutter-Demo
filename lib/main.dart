import 'package:flutter/material.dart';

const img_url = 'https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png';

class firstapp extends StatefulWidget {
  myfirstapp createState() => myfirstapp();
}

class myfirstapp extends State<firstapp> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.fromLTRB(20, 100, 20, 20),
        child:
        Image.network(img_url),
      ),
      TextButton(
        child: Text(
          'Show details',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.blueAccent),
        ),
        onPressed: () => setState(() {
          opacity = 1;
        }),
      ),
      AnimatedOpacity(
        duration: Duration(seconds: 8),
        opacity: opacity,
        child: Column(
          children: <Widget>[
            Text('Flutter'),
            Text('Build responsive Apps'),

          ],
        ),
      )
    ]);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: firstapp(),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MyApp(),
  );
}


