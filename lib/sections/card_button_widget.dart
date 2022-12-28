// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../custom_widgets/custom_buttons/sectionButton.dart';

class CardButtonWidget extends StatelessWidget {
  const CardButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14),
      child: const SectionButton(
          buttonTitle: "Meus Cookie Cards", icon: Icons.credit_card),
    );
  }
}
