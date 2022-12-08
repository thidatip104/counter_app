import 'package:flutter/material.dart';

void main() {
  runApp(MyCounterApp());
}

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter=0;

  // สร้าง method 
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void _refreshCounter(){
    setState(() {
      if(_counter>0){
        _counter = _counter-_counter;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('Counter App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('pressed');
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'กดปุ่มเพิ่ม',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.orange,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _refreshCounter,
              child: Icon(Icons.refresh),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}