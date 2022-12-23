import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: headerBox(),
    );
  }

  DecoratedBox headerBox() {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.brown.shade600,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              headerUserName(),
            ]),
      ),
    );
  }

  Padding headerUserName() {
    return const Padding(
        padding: EdgeInsets.only(left: 14, top: 24),
        child: Text(
            style: TextStyle(fontSize: 18, color: Colors.white),
            "Olá, Alexandre"));
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.brown,
            radius: 20,
            child: const Icon(
              Icons.photo,
              color: Colors.white,
            ),
          ),
          headerIcons()
        ],
      ),
    );
  }

  Padding headerIcons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Wrap(
        spacing: 15,
        children: [
          const Icon(Icons.remove_red_eye_outlined, color: Colors.white),
          const Icon(Icons.help_outline_rounded, color: Colors.white),
          const Icon(Icons.content_paste_search_outlined, color: Colors.white)
        ],
      ),
    );
  }
}
