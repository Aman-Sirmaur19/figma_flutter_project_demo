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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.phone_android_outlined),
              ),
              Tab(
                icon: Icon(Icons.email_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
                child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Next");
                    },
                    child: Text("Next"),
                  ),
                ),
              ],
            )),
            Container(
                child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      print("Next");
                    },
                    child: Text("Next"),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
