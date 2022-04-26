import 'package:flutter/material.dart';
import './page/index.dart';

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



