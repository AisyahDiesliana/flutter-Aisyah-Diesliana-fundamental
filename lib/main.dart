import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              heightFactor: 3,
              widthFactor: 5.5,
              child: Text('Result : 0',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          SizedBox(
            height: 6,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                    labelText: 'Enter first number',
                    filled: true,
                    fillColor: Colors.black12),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: 'Enter second number',
                    filled: true,
                    fillColor: Colors.black12),
              )),
          SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('ADD')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('SUBTRACT')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('MULTIPLY')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('DIVIDE'))
                ],
              ))
        ],
      ),
    ));
  }
}
