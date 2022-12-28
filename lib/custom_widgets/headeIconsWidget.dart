import 'package:flutter/material.dart';

import 'custom_buttons/headerIconButton.dart';
import 'custom_buttons/headerIconVisibilityButton.dart';

class HeaderIcons extends StatelessWidget {
  const HeaderIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Wrap(
        spacing: 15,
        children: [
          const HeaderIconVisibilityButton(),
          const HeaderIconButton(icon: Icons.help_outline_rounded),
          const HeaderIconButton(icon: Icons.content_paste_search_outlined),
        ],
      ),
    );
  }
}
