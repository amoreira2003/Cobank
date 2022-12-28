import 'package:flutter/material.dart';
import '../assets/SensitiveDataManager.dart';
import '../assets/design_choices.dart';

class InfoDisplayArea extends StatelessWidget {
  const InfoDisplayArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isVisible = InheritedDataWidget.of(context)!.isVisible;

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    style: TextStyle(color: grayText, fontSize: 12),
                    "Fatura Atual"),
                Text(
                    style: const TextStyle(
                        fontSize: titleFontSize, fontWeight: titleFontWeight),
                    isVisible ? "C\$ 2.234,12" : "C\$ ********"),
                Text(
                    style: const TextStyle(color: grayText, fontSize: 12),
                    "Limite disponível de ${isVisible ? "C\$ 1.123,23" : "C\$ ********"}"),
              ],
            ),
          ),
        ]);
  }
}
