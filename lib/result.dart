import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;

   Result( this.q);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "Done",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            onPressed: q,
            child: Text(
              "Restart The App",
              style: TextStyle(fontSize: 45,color: Colors.blue),

            ))
      ],
    ));
  }
}
