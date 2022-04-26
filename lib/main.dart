import 'package:flutter/material.dart';
import './index.dart';

void main() {
  runApp( ExpenseCostApp());
}

class ExpenseCostApp extends StatelessWidget{


   ExpenseCostApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DashBoard(),
    );
  }
}



