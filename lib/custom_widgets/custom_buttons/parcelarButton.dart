import 'package:flutter/material.dart';

import '../../assets/design_choices.dart';

class ParcelarButton extends StatelessWidget {
  const ParcelarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 35,
      decoration: const BoxDecoration(
          color: grayColor,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: TextButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: const Text(
              style: TextStyle(fontSize: 12, color: Colors.black),
              "Parcelar Compras")),
    );
  }
}
