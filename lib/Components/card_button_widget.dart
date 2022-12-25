// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../assets/design_choices.dart';

class CardButtonWidget extends StatelessWidget {
  const CardButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14),
      child: RawMaterialButton(
          enableFeedback: true,
          splashColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width - 14,
              maxWidth: MediaQuery.of(context).size.width - 14),
          onPressed: () {},
          elevation: 0,
          highlightElevation: 0,
          focusElevation: 0,
          fillColor: DesignChoice.grayColor,
          padding: EdgeInsets.symmetric(vertical: 18.0),
          child: Row(children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Icon(
                Icons.credit_card,
                size: 20,
                color: Colors.black,
              ),
            ),
            Text(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                "Meus Cookie Cards"),
          ])),
    );
  }
}
