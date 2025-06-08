import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz App')),
        body: Center(child: Text('Welcome to the Quiz App!')),
      ),
    ),
  );
}
