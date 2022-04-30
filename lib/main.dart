import 'package:commerce/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    Transaction("1", "Honor 9 lite", 2000, DateTime.now()),
    Transaction("2", "Samsung", 92000, DateTime.now()),
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
                    child: Text( '${trans.prix} FCFA',
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple
                    ),
                    ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(trans.titre, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                      Text(
                        DateFormat().format(trans.date),
                        style: TextStyle(
                        color: Colors.grey),),
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
