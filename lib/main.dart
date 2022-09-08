import 'package:first_flutter_app/page_two.dart';
import 'package:first_flutter_app/page_three.dart';
import 'package:first_flutter_app/dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

List<String> theList = [
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item One',
  'Item Two',
  'Item Three',
  'Item Four',
  'Item Five',
  'Item Six',
  'Item Seven'
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is my homepage'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: const Text('Choose'),
              automaticallyImplyLeading: false,
            ),
            const ListTile(
              leading: Icon(Icons.list),
              title: Text('Item one'),
            ),
            const ListTile(
              leading: Icon(Icons.add),
              title: Text('Add item'),
            ),
            const ListTile(
              leading: Icon(Icons.next_plan),
              title: Text('Page Two'),
            ),
            const ListTile(
              leading: Icon(Icons.abc),
              title: Text('Item new'),
            ),
            const ListTile(
              leading: Icon(Icons.bluetooth),
              title: Text('Bluetooth'),
            ),
            const ListTile(
              leading: Icon(Icons.wifi),
              title: Text('Wifi'),
            ),

          ],
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Page 2'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage2()));
            },
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => Text(theList[index]),
              separatorBuilder: (context, index) => const Divider(
                color: Colors.teal,
              ),
              itemCount: theList.length,
            ),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const pageThree()));
              },
              child: const Text('Page Three')
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const dialogPage()));
              },
              child: const Text('Dialog Page')
          ),
          Container(
            height: 30,
            //padding: Padding(),
            decoration: const BoxDecoration(
              color: Colors.deepOrangeAccent,

            ),
            child: const Center(
              child: Text(
                'This is test text',
              style: TextStyle(
                color: Colors.black,
              ),
            ),),
          ),
        ],
      ),
    );
  }
}
