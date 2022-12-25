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
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8.0, right: 8),
        child: Wrap(spacing: 2, children: [
          infoElement(Icons.pix_outlined, "Área Pix"),
          infoElement(Icons.payment_outlined, "Pagar"),
          infoElement(Icons.sports_soccer_outlined, "Receba"),
          infoElement(Icons.handshake_outlined, "Doe"),
          infoElement(Icons.coffee_maker_outlined, "Área Vip"),
          infoElement(Icons.cookie_outlined, "Quem Comeu?"),
          infoElement(Icons.elderly, "Vovós"),
          infoElement(Icons.store_sharp, "Crie seu negócio"),
        ]),
      ),
    );
  }

  Wrap infoElement(IconData icon, String title) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: RawMaterialButton(
              enableFeedback: true,
              splashColor: Colors.transparent,
              constraints: new BoxConstraints(minWidth: 66, maxWidth: 66),
              onPressed: () {},
              elevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              fillColor: DesignChoice.grayColor,
              child: Icon(
                icon,
                size: 22,
              ),
              padding: EdgeInsets.symmetric(vertical: 18.0),
              shape: CircleBorder()),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
