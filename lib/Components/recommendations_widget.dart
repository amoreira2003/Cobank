// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
            width: 200,
            height: 60,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
              child: (Text(
                  style: TextStyle(fontSize: 12),
                  "Programa Copo de Leite, O copo no leite e o leite no copo")),
            )),
        Container(
            width: 200,
            height: 60,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
              child: (Text(
                  style: TextStyle(fontSize: 12),
                  "Programa Copo de Leite, O copo no leite e o leite no copo")),
            )),
        Container(
            width: 200,
            height: 60,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
              child: (Text(
                  style: TextStyle(fontSize: 12),
                  "Programa Copo de Leite, O copo no leite e o leite no copo")),
            )),
        Container(
            width: 200,
            height: 60,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(4))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
              child: (Text(
                  style: TextStyle(fontSize: 12),
                  "Programa Copo de Leite, O copo no leite e o leite no copo")),
            )),
      ]),
    );
  }
}
