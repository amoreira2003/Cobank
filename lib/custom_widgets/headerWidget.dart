import 'package:flutter/material.dart';

import 'headeIconsWidget.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.brown,
            radius: 20,
            child: Icon(
              Icons.photo,
              color: Colors.white,
            ),
          ),
          HeaderIcons()
        ],
      ),
    );
  }
}
