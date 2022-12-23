// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../assets/design_choices.dart';

class CardButtonWidget extends StatelessWidget {
  const CardButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width - 14,
      margin: const EdgeInsets.only(left: 14.0, right: 14, top: 8, bottom: 8),
      decoration: BoxDecoration(
          color: DesignChoice.grayColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14),
        child: Wrap(
          spacing: 14,
          children: [
            Icon(
              Icons.credit_card,
              size: 20,
              color: Colors.black,
            ),
            Text(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
                "Meus Cartões"),
          ],
        ),
      ),
    ));
  }
}
