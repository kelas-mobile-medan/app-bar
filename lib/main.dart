import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void submitLogin(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh AppBar'),
          actions: [
            IconButton(
                onPressed: () {
                  submitLogin('search');
                },
                icon: Icon(Icons.search_rounded)),
            IconButton(
                onPressed: () {
                  submitLogin('notification');
                },
                icon: Icon(Icons.notifications)),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('Container 1'),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('Container 2'),
                  ),
                )
              ],
            ),
            Container(
              child: Text(
                'Container 3',
                style: TextStyle(
                    fontFamily: 'jaro',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: double.infinity,
            ),
            ElevatedButton(
                onPressed: () {
                  submitLogin('submit');
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
