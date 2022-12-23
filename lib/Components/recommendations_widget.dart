// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cobank/assets/design_choices.dart';
import 'package:flutter/material.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(left: 14, top: 8, bottom: 8),
        child: Wrap(spacing: 8, children: [
          for (var i = 0; i < 10; i++)
            recommendationElement("Programa Copo de Leite,",
                " O Copo no leite e o leite no copo"),
        ]),
      ),
    );
  }

  Container recommendationElement(String brownText, String normalText) {
    return Container(
        width: 200,
        height: 60,
        decoration: BoxDecoration(
            color: DesignChoice.grayColor,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
            child: RichText(
                text: TextSpan(
                    text: brownText,
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                    children: <TextSpan>[
                  TextSpan(
                      text: normalText,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400))
                ]))));
  }
}
