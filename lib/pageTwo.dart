import 'package:flutter/material.dart';

class pageTwo extends StatelessWidget {
  final String name;
  const pageTwo(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
              color: Colors.white, onPressed: () => Navigator.pop(context)),
          title: const Text(
            'Home Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal),
      body: Center(child: Text('Ini adalah page kedua, welcome $name')),
    );
  }
}
