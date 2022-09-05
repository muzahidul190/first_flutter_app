import 'package:first_flutter_app/page_three.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              },
              child: const Text('Go to HomePage'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const pageThree()));
              },
              child: const Text('Page Three'),
            ),
          )
        ],
      ),
    );
  }
}
