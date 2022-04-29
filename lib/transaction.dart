import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class Transaction {
  final String id;
  final String titre;
  final double prix;
  final DateTime date;
 
  Transaction({
    @required this.id, 
    @required this.titre, 
    @required this.prix, 
    @required this.date});
}
