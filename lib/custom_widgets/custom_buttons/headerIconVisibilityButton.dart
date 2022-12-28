import 'package:flutter/material.dart';

import '../../assets/SensitiveDataManager.dart';

class HeaderIconVisibilityButton extends StatefulWidget {
  const HeaderIconVisibilityButton({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderIconVisibilityButton> createState() =>
      _HeaderIconVisibilityButtonState();
}

class _HeaderIconVisibilityButtonState
    extends State<HeaderIconVisibilityButton> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = InheritedDataWidget.of(context)!.isVisible;

    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(maxWidth: 35),
        onPressed: () {
          InheritedDataWidget.of(context)!.callback();
          setState(
              () => isVisible = InheritedDataWidget.of(context)!.isVisible);
        },
        icon: Icon(
          isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          color: Colors.white,
        ));
  }
}
