import '../../index.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget{
  final  List<Transaction> transactions=[
    Transaction(
        id: "1",
        title: "Dim",
        amount: 21.3,
        date: DateTime.now()
    )
  ];

     DashBoard ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) =>  Scaffold(
    appBar: AppBar(title: const Text("Expense Cost"),),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: double.infinity,
          child: Card(
            color: Colors.blue,
            elevation: 5,
            child: Text("Chart"),
          )
        ),
        Card(
          child: Text("list of transection"),
        )
      ],
    ),
  );

}