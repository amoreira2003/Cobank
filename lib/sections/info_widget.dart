import 'package:cobank/assets/design_choices.dart';
import 'package:cobank/assets/SensitiveDataManager.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/sectionTitle.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isVisible = InheritedDataWidget.of(context)!.isVisible;
    return (Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 16, bottom: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              const SectionTitle(
                title: "Conta",
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                          style: const TextStyle(
                              fontSize: titleFontSize,
                              fontWeight: titleFontWeight),
                          isVisible ? "C\$ 0,79" : "C\$ ****"),
                    ),
                  ])
            ])),
      ),
    ));
  }
}
