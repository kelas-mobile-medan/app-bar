import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Widget Dasar'),
          actions: [
            IconButton(
                onPressed: () {
                  print('saya di klik');
                },
                icon: Icon(Icons.search_rounded))
          ],
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
