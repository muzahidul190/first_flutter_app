import 'package:first_flutter_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/page_two.dart';

class pageThree extends StatelessWidget {
  const pageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 70,
                color: Colors.purple,
              ),
              const Text('data')
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              }, child: const Text('Home Page'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage2()));
              },
              child: const Text('Page Two'),
            ),
          )
        ],
      ),
    );
  }
}
