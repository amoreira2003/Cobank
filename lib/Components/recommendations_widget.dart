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
          recommendationElement("Notícia: ",
              "Fazendas de biscoitos são suspeitas de empregar força de trabalho idosa não declarada!"),
          recommendationElement("Notícia: ",
              "Os teístas do mundo descobrem uma nova religião de biscoitos - Nossa, acho que estávamos errados o tempo todo!"),
          recommendationElement("Notícia: ",
              "Biquínis de brócolis para mães, repugnados pelas crianças e pais indiferentes."),
          recommendationElement("Notícia: ",
              "Fábricas de biscoitos envolvidas em polêmica sobre clima de chocolate!"),
          recommendationElement("Notícia: ",
              "Emoji de biscoito mais popular entre os adolescentes, muito à frente do sinal OK e da homem de bigode, diz estudo."),
        ]),
      ),
    );
  }

  Container recommendationElement(String brownText, String normalText) {
    return Container(
        width: 200,
        height: 100,
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
