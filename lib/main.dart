import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          if (isDesktop(context))
            Container(
              width: 200,
              color: Colors.amberAccent,
              child: Center(child: Text('SIDEBAR')),
            ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Center(child: Text('CONTENT')),
            ),
          ),
        ],
      ),
    );
  }
}
