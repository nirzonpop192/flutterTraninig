import 'package:flutter/cupertino.dart';

import '../../index.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: "1", title: "Dim", amount: 21.3, date: DateTime.now()),
    Transaction(id: "2", title: "Alu", amount: 201.3, date: DateTime.now())
  ];

  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Expense Cost"),
        ),
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
                )),
            Column(
                children: transactions.map((trx) {
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 2)),
                    child: Text("\$: ${trx.amount!}",
                      style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.purple),),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(trx.title!,
                      style: TextStyle(color: Colors.purple,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text(trx.date!.toString(),style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ],
                  )
                ],
              );
            }).toList())
          ],
        ),
      );
}
