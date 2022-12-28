import 'package:flutter/material.dart';
import '../custom_widgets/headerBox.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: const HeaderBox(),
    );
  }
}
