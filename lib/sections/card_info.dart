import 'package:cobank/assets/design_choices.dart';
import 'package:cobank/custom_widgets/sectionTitle.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/infoArea.dart';
import '../custom_widgets/custom_buttons/parcelarButton.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SectionTitle(title: "Cartão de Crédito"),
            const InfoDisplayArea(),
            const ParcelarButton(),
          ]),
        ),
      ),
    ));
  }
}
