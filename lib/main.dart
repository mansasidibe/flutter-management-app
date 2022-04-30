import 'package:commerce/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'm Commerce',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: "t1", titre: "Honor 9 lite", prix: 19000, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JenGu')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Panier'),
                elevation: 5,
              ),
            ),
            // AFFICHAGE DES TRANSACTIONS
            Column(
              children: transactions.map((trans) {
                return Card(
                  child: Row(children: [
                    Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple, 
                          width: 2),
                          ),
                          padding: EdgeInsets.all(100),  
                    child: Text(trans.prix.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple
                    ),
                    ),
                    ),
                    Column(children: [
                      Text(trans.titre),
                      Text(trans.date.toString()),
                    ],),
                  ],)
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
