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
  
  final List<Transaction> transaction = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JenGu')
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color:Colors.blue,
                child: Text('Panier'),
                elevation: 5,
              ),
            ),
            Card( child: Text('Liste des transaction')),
          ],
        ),  
      ),
    );
  }
}