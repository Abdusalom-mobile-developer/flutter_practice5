import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewApp(),
    );
  }
}

class NewApp extends StatefulWidget {
  const NewApp({
    super.key,
  });

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Practice"),
          bottom: TabBar(tabs: [
            Tab(
              text: "First",
              icon: Icon(Icons.first_page),
            ),
            Tab(
              text: "Second",
              icon: Icon(Icons.headphones),
            ),
            Tab(
              text: "Third",
              icon: Icon(Icons.skip_next),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.black,
            child: Center(
              child: Text("First Page",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "Second Page",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Third Page",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            ),
          )
        ]),
      ),
    );
  }
}
