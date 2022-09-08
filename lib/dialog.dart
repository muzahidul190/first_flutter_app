// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class dialogPage extends StatefulWidget {
  const dialogPage({Key? key}) : super(key: key);

  @override
  State<dialogPage> createState() => _dialogPageState();
}

class _dialogPageState extends State<dialogPage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            var k = await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Alert Dialog Box"),
                content: const Text("This is the contents of the dialog box"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, const Text('Okay'));
                    },
                    child: Container(
                      color: Colors.teal,
                      padding: const EdgeInsets.all(14),
                      child: const Text("okay",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, const Text('Cancel'));
                    },
                    child: Container(
                      color: Colors.red,
                      padding: const EdgeInsets.all(14),
                      child: const Text("Cancel",style: TextStyle(color: Colors.white,),),
                    ),
                  ),
                ],
              ),
            );
            print(k);
          },
          style: TextButton.styleFrom(backgroundColor: Colors.teal,),
          child: const Text('Show Dialog',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
