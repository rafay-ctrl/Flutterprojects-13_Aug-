import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int Counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practising stateful app"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Text(
            "Counter $Counter",
            style: TextStyle(fontSize: 110),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Counter++;
                });
              },
              child: const Text("Add value"))
        ],
      ),
    );
  }
}
