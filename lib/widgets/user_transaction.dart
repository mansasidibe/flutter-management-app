import 'package:flutter/material.dart';
import './liste_transaction.dart';
import './nouvelle_transaction.dart';
import 'package:commerce/models/transaction.dart';

class _UserTransaction extends StatefulWidget {
  _UserTransaction({Key? key}) : super(key: key);

  @override
  State<_UserTransaction> createState() => __UserTransactionState();
}

class __UserTransactionState extends State<_UserTransaction> {
    final List<Transaction> _userTransactions = [
    Transaction("1", "Honor 9 lite", 2000, DateTime.now()),
    Transaction("2", "Samsung", 92000, DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NouvTransaction(),
      // AFFICHAGE DES TRANSACTIONS
      TransationList(_userTransactions),
      ],
    );
  }
}
