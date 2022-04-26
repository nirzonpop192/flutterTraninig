import 'package:flutter/material.dart';

void main() {
  runApp(const ExpenseCostApp());
}

class ExpenseCostApp extends StatelessWidget{
  const ExpenseCostApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget{
  const DashBoard ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) =>  Scaffold(
    appBar: AppBar(title: const Text("Expense Cost"),),
    body: Column(
      children: [],
    ),
  );

}

