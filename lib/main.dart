import 'package:flutter/material.dart';
import 'container_widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(181, 218, 52, 11),
        ), // App Bar ends

        body: ContainerWidgets(),
      ),
    ),
  );
}
