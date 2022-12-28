import 'package:flutter/material.dart';

class NavBarCustomButton extends StatelessWidget {
  NavBarCustomButton(
      {Key? key,
      @required IconData? this.customIcon,
      @required Color? this.customColor})
      : super(key: key);

  IconData? customIcon;
  Color? customColor;

  @override
  Widget build(
    BuildContext context,
  ) {
    return IconButton(
        splashColor: Colors.transparent,
        enableFeedback: false,
        iconSize: 35,
        onPressed: () {
          Scaffold.of(context).openEndDrawer();
        },
        icon: Icon(customIcon, color: customColor));
  }
}
