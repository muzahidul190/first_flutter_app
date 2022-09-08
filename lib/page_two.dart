import 'package:first_flutter_app/page_three.dart';
import 'package:first_flutter_app/main.dart';
import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cheight = 50;
    var cwidth = 70;
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is second Page'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: cheight.toDouble(),
                width: cwidth.toDouble(),
                color: Colors.purple,
              ),
              Container(
                height: cheight.toDouble(),
                width: cwidth.toDouble(),
                color: Colors.white,
                child: const Center(
                  child: Text('Hi'),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: cheight.toDouble(),
                    width: cwidth.toDouble(),
                    color: Colors.indigo,
                  ),
                  Container(
                    height: cheight.toDouble(),
                    width: cwidth.toDouble(),
                    color: Colors.white,
                    child: const Center(
                      child: Text('Hi'),
                    ),
                  ),
                  Container(
                    height: cheight.toDouble(),
                    width: cwidth.toDouble(),
                    color: Colors.teal,
                  ),
                  Container(
                    height: cheight.toDouble(),
                    width: cwidth.toDouble(),
                    color: Colors.amberAccent,
                  ),
                ],
              ),
              Container(
                height: cheight.toDouble(),
                width: cwidth.toDouble(),
                color: Colors.lightGreenAccent,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
            child: const Text('Home Page'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const pageThree()));
            },
            child: const Text('Page Three'),
          ),
        ],
      ),
    );
  }
}
