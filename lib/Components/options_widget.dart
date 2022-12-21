// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          margin: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(12),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ]),
    );
  }
}
