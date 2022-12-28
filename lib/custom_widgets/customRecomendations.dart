import 'package:flutter/material.dart';

import '../assets/design_choices.dart';

class CustomRecomendations extends StatelessWidget {
  const CustomRecomendations({
    required this.brownText,
    required this.normalText,
    Key? key,
  }) : super(key: key);

  final String brownText, normalText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: const BoxDecoration(
          color: grayColor, borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
        child: RichText(
          text: TextSpan(
              text: brownText,
              style: const TextStyle(
                  color: Colors.brown,
                  fontSize: 11,
                  fontWeight: FontWeight.w600),
              children: <TextSpan>[
                TextSpan(
                    text: normalText,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400))
              ]),
        ),
      ),
    );
  }
}
