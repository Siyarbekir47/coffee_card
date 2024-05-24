import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("MyCoffeeShop"),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: const Text("Hello World!!"),
    ),
  ));
}
