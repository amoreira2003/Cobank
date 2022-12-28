// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import '../custom_widgets/customRecomendations.dart';

class RecommendationsWidget extends StatelessWidget {
  const RecommendationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(left: 14, top: 8, bottom: 8),
        child: Wrap(spacing: 8, children: [
          const CustomRecomendations(
              brownText: "Notícia: ",
              normalText:
                  "Fazendas de biscoitos são suspeitas de empregar força de trabalho idosa não declarada!"),
          const CustomRecomendations(
              brownText: "Notícia: ",
              normalText:
                  "Os teístas do mundo descobrem uma nova religião de biscoitos - Nossa, acho que estávamos errados o tempo todo!"),
          const CustomRecomendations(
              brownText: "Notícia: ",
              normalText:
                  "Biquínis de brócolis para mães, repugnados pelas crianças e pais indiferentes."),
          const CustomRecomendations(
              brownText: "Notícia: ",
              normalText:
                  "Fábricas de biscoitos envolvidas em polêmica sobre clima de chocolate!"),
          const CustomRecomendations(
              brownText: "Notícia: ",
              normalText:
                  "Emoji de biscoito mais popular entre os adolescentes, muito à frente do sinal OK e da homem de bigode, diz estudo."),
        ]),
      ),
    );
  }
}
