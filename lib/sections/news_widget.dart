import 'package:cobank/custom_widgets/custom_buttons/sectionButton.dart';
import 'package:cobank/custom_widgets/sectionTitle.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_buttons/bigSectionButton.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  static Color grayColor = const Color.fromARGB(255, 211, 211, 211);

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 68),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
              SectionTitle(title: "Acompanhe também"),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: SectionButton(
                    buttonTitle: "Assistente de Pagamentos",
                    icon: Icons.sync,
                  )),
              BigSectionButton(
                headerText:
                    "Se delicie com os cookies dos outros, pegue cookies emprestados.",
                buttonText: "Simular Empréstimo",
              )
            ])),
      ),
    ));
  }
}
