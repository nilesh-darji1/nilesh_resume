import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ModelClass.dart';

class list_card extends StatelessWidget {
   modelClass newModel;
   Function delete;

  list_card(this.newModel, this.delete);


  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
        shadowColor: Colors.grey.shade50,
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        color: Colors.grey.shade600,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                newModel.year,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[900],
                ),
              ),
              Text(
                newModel.companyName,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[900],
                ),
              ),
              Text(
                newModel.position,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[900],
                ),
              ),
              Text(
                newModel.description,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[900],
                ),
              ),
              ElevatedButton.icon(icon: Icon(Icons.delete, semanticLabel: "Delete",),label: Text("Delete"),
                  onPressed: (){delete;}

                  )
            ],
          ),
        ));
  }
}
