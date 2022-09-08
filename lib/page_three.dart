// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pageThree extends StatefulWidget {
  const pageThree({Key? key}) : super(key: key);

  @override
  State<pageThree> createState() => _pageThreeState();
}

class _pageThreeState extends State<pageThree> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    a++;
                  });
                },
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  a.toString(),
                  style: const TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.lightGreenAccent,
              ),
              child: TextButton(
                child: const Center(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    a--;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
