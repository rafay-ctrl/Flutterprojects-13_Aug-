import 'package:flutter/material.dart';
import 'package:newpractise_app/counterview.dart';
import 'package:newpractise_app/todo.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoView(),
    );
  }
}
