import 'package:flutter/material.dart';

class HeaderUserName extends StatelessWidget {
  const HeaderUserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(left: 14, top: 24),
        child: Text(
            style: TextStyle(fontSize: 18, color: Colors.white),
            "Olá, Usuário"));
  }
}
