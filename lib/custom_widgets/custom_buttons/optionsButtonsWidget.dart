import 'package:flutter/material.dart';

import '../../assets/design_choices.dart';

class OptionsButtons extends StatelessWidget {
  const OptionsButtons({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: RawMaterialButton(
              enableFeedback: true,
              splashColor: Colors.transparent,
              constraints: const BoxConstraints(minWidth: 66, maxWidth: 66),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              elevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              fillColor: grayColor,
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              shape: const CircleBorder(),
              child: Icon(
                icon,
                size: 22,
              )),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
