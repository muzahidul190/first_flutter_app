import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is second Page'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
              const Text('Hi'),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              )
            ],
          ),
          Column(
            children: [
              const Text('Hi'),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                ),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go to HomePage'),
            ),
          ),
        ],
      ),
    );
  }
}
