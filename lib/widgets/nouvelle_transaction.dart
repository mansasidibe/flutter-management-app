import 'package:flutter/material.dart';

class NouvTransaction extends StatelessWidget {
  // const NouvTransaction({Key? key}) : super(key: key);
  final titreController = TextEditingController();
  final prixController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Titre'),
              controller: titreController,
              // onChanged: (val) {
              //   champsTitre = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Prix'),
              controller: prixController,
              // onChanged: (val) {
              //   champsPrix = val;
              // },
            ),
            FlatButton(
                onPressed: () {
                  // print(champsTitre);
                  // print(champsPrix);
                  print(titreController.text);
                },
                textColor: Colors.purple,
                child: Text("Ajouter"))
          ],
        ),
      ),
    );
  }
}
