// ignore_for_file: camel_case_types

import 'dart:ui';

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
  String _gender = 'No Gender Selected';

  void _genderRadio(String val) {
    setState(() {
      _gender = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Enter Name:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'Select Gender:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Radio(
                        value: 'male',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                      title: GestureDetector(
                        onTap: () {
                          _genderRadio('male');
                        },
                        child: const Text('Male'),
                      ),
                    ),
                    ListTile(
                      leading: Radio(
                        value: 'female',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                      title: GestureDetector(
                        onTap: () {
                          _genderRadio('female');
                        },
                        child: const Text('Female'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'All Output:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                    ),
                  ),
                  Text('TextField: $username'),
                  Text('Radio Button: $_gender'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
