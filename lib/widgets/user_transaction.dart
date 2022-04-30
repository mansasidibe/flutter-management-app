import 'package:flutter/material.dart';
import './liste_transaction.dart';
import './nouvelle_transaction.dart';
import 'package:commerce/models/transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => UserTransactionState();
}

class UserTransactionState extends State<UserTransaction> {
    final List<Transaction> _userTransactions = [
    Transaction("1", "Honor 9 lite", 2000, DateTime.now()),
    Transaction("2", "Samsung", 92000, DateTime.now()),
  ];

  void _ajoutTransaction(String transTitre, double transPrix) {
    final nouvTrans = Transaction(DateTime.now().toString(), transTitre, transPrix,  DateTime.now());
    setState(() {
      _userTransactions.add(nouvTrans);
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NouvTransaction(_ajoutTransaction),
      // AFFICHAGE DES TRANSACTIONS
      TransationList(_userTransactions),
      ],
    );
  }
}
