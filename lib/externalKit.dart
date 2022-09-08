// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class externalKit extends StatefulWidget {
  const externalKit({Key? key}) : super(key: key);

  @override
  State<externalKit> createState() => _externalKitState();
}

class _externalKitState extends State<externalKit> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: const SpinKitHourGlass(
        color: Colors.red,
        size: 50.0,
      ),
    );
  }
}
