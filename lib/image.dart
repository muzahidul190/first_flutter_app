// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class imagePage extends StatefulWidget {
  const imagePage({Key? key}) : super(key: key);

  @override
  State<imagePage> createState() => _imagePageState();
}

class _imagePageState extends State<imagePage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Image.asset('assets/images/1.jpg'),
    );
  }
}
