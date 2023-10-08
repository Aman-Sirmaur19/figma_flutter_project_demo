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
          Container(
            width: 400,
            height: 220.8,
            child: Image.asset('assets/images/programmer_v_02.jpg'),
          ),
          Container(
            width: 400,
            height: 70,
          ),
          Container(
            width: 400,
            height: 30,
            child: Center(
                child: Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            )),
          ),
          Container(
            width: 400,
            height: 30,
            child: Center(
                child: Text(
              "Get all the info at your fingertips",
              style: TextStyle(color: Colors.black, fontSize: 15),
            )),
          ),
          Container(
            width: 400,
            height: 100,
          ),
          Container(
              width: 300,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Text("Login"),
                onPressed: () {
                  print("Button pressed!");
                },
              )),
          Container(
            width: 400,
            height: 20,
          ),
          Container(
              width: 300,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                child: Text("Don't have an account?  Sign up !"),
                onPressed: () {
                  print("create Button pressed!");
                },
              ))
        ],
      ),
    );
  }
}
