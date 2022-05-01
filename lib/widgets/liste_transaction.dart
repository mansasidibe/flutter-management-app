import 'package:commerce/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:http/http.dart' as http;


class TransationList extends StatelessWidget {
  final List<Transaction> transactions;

  TransationList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index){
          return Card(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: EdgeInsets.all(100),
                child: Text(
                  '${transactions[index].prix} FCFA',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index].titre,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd().format(transactions[index].date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          );
        },
        itemCount: transactions.length,

      ),
    );
  }
}
