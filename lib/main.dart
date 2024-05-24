import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sandbox"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.red,
            child: const Text("One"),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text("Two"),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text("Three"),
          ),
        ],
      ),
    );
  }
}
