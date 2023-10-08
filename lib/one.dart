import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(width: 400, height: 220.8, color: (Colors.blue)),
          Container(
              width: 400,
              height: 221,
              color: (Colors.blue),
              child: Center(
                child: Text(
                  "CodeForces\n  Visualizer",
                  style: TextStyle(color: (Colors.white), fontSize: 25)
                ),
              )),Container(
              width: 400,
              height: 220.8,
              color: (Colors.blue),
              child: Center(
                child: Text(
                  "\n\n\n\n\n\n\nLOOPR",
                  style: TextStyle(color: (Colors.white), fontSize: 15, fontWeight: FontWeight.w800)
                ),
              ))
        ],
      ),
    );
  }
}
