// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class inputFields extends StatefulWidget {
  const inputFields({Key? key}) : super(key: key);

  @override
  State<inputFields> createState() => _inputFieldsState();
}

class _inputFieldsState extends State<inputFields> {
  String username = 'no name';

  List<String> dept = ['CSE', 'EEE', 'Civil', 'NAME'];
  String? currentItem = 'CSE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: Column(
        children: [
          Center(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
          ),
          Container(
            child: Text(username),
          ),
        ],
      ),
    );
  }
}
