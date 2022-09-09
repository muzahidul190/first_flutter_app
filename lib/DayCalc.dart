// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class dayCalc extends StatefulWidget {
  const dayCalc({Key? key}) : super(key: key);

  @override
  State<dayCalc> createState() => _dayCalcState();
}

class _dayCalcState extends State<dayCalc> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Day Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}
