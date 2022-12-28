import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../assets/design_choices.dart';

class SectionButton extends StatelessWidget {
  const SectionButton({Key? key, required this.buttonTitle, required this.icon})
      : super(key: key);

  final String buttonTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      enableFeedback: true,
      splashColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width - 14,
          maxWidth: MediaQuery.of(context).size.width - 14),
      onPressed: (() => Scaffold.of(context).openEndDrawer()),
      elevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      fillColor: DesignChoice.grayColor,
      padding: EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
          ),
          Text(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
              buttonTitle),
        ],
      ),
    );
  }
}
