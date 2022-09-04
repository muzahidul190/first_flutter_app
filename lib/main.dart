import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is homepage'),
      ),
      body: ListView(
        children: [
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
          Text('0'),
          Text('1'),
          Container(
            height: 100,
            width: 50,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
