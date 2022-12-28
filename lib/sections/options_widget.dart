// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../custom_widgets/custom_buttons/optionsButtonsWidget.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8.0, right: 8),
        child: Wrap(spacing: 2, children: [
          const OptionsButtons(icon: Icons.pix_outlined, title: "Área Pix"),
          const OptionsButtons(icon: Icons.payment_outlined, title: "Pagar"),
          const OptionsButtons(icon: Icons.sports_soccer_outlined, title: "Receba"),
          const OptionsButtons(icon: Icons.handshake_outlined, title: "Doe"),
          const OptionsButtons(icon: Icons.coffee_maker_outlined, title: "Área Vip"),
          const OptionsButtons(icon: Icons.cookie_outlined, title: "Quem Comeu?"),
          const OptionsButtons(icon: Icons.elderly, title: "Vovós"),
          const OptionsButtons(icon: Icons.store_sharp, title: "Crie seu negócio"),
        ]),
      ),
    );
  }
}
