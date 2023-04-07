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

  double result = 0, angka1 = 0, angka2 = 0;

  add() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 + angka2;
    });
  }

  subs() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 - angka2;
    });
  }

  multiplay() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 * angka2;
    });
  }

  devide() {
    setState(() {
      angka1 = double.parse(controller1.text);
      angka2 = double.parse(controller2.text);
      result = angka1 / angka2;
    });
  }

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
              child: Text('Result : $result',
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
                  ElevatedButton(
                      onPressed: () {
                        add();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('ADD')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        subs();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('SUBTRACT')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        multiplay();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('MULTIPLY')),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        devide();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: Text('DIVIDE'))
                ],
              ))
        ],
      ),
    ));
  }
}
