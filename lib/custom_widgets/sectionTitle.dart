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
              style: TextStyle(
                  fontSize: DesignChoice.titleFontSize,
                  fontWeight: DesignChoice.titleFontWeight),
              title),
          IconButton(
            splashColor: Colors.transparent,
            constraints: BoxConstraints(maxWidth: 15, maxHeight: 15),
            onPressed: (() {
              Scaffold.of(context).openEndDrawer();
            }),
            icon: Icon(Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 107, 107, 107),
                size: DesignChoice.titleIconSize),
          )
        ]);
  }
}
