// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../assets/design_choices.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 14.0),
        child: Wrap(spacing: 8, children: [
          for (var i = 0; i < 20; i++) infoElement(),
        ]),
      ),
    );
  }

  Wrap infoElement() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: DesignChoice.grayColor,
            child: Icon(
              size: 20,
              Icons.beach_access_rounded,
              color: Colors.black,
            ),
          ),
        ),
        Text(
          "Área Pix",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
