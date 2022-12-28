import 'package:flutter/material.dart';

import '../assets/design_choices.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              style: const TextStyle(
                  fontSize: titleFontSize, fontWeight: titleFontWeight),
              title),
          IconButton(
            splashColor: Colors.transparent,
            constraints: const BoxConstraints(maxWidth: 15, maxHeight: 15),
            onPressed: (() {
              Scaffold.of(context).openEndDrawer();
            }),
            icon: const Icon(Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 107, 107, 107), size: titleIconSize),
          )
        ]);
  }
}
