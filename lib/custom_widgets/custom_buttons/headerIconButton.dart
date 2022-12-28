import 'package:flutter/material.dart';

class HeaderIconButton extends StatelessWidget {
  const HeaderIconButton({required this.icon, super.key});

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(maxWidth: 35),
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        icon: Icon(
          icon,
          color: Colors.white,
        ));
  }
}
