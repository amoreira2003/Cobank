// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardButtonWidget extends StatelessWidget {
  const CardButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width - 14,
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.credit_card,
              color: Colors.black,
            ),
            Text(
                style: TextStyle(color: Colors.black, fontSize: 14),
                "Meu Cartão"),
          ],
        )),
      ),
    ));
  }
}
