import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  void _incrementCounter() {
  setState(() {
    _counter++;
  });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const Text('You have pushed the button this many times:'),
              // Text showing the counter value 
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 40),
              ),
              // Button to increment the counter
              ElevatedButton(onPressed:(){
                 // When pressed, call the method that updates the state
                _incrementCounter();
              },
              child: const Text('Increment Counter'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
  


