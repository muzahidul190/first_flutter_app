// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class masudTest extends StatefulWidget {
  const masudTest({Key? key}) : super(key: key);

  @override
  State<masudTest> createState() => _masudTestState();
}

class _masudTestState extends State<masudTest> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image test by Masud'),
      ),
      body: Center(
        child: Image.asset('assets/images/8.jpg'),
      ),
    );
  }
}
