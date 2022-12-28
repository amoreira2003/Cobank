import 'package:flutter/material.dart';
import '../assets/design_choices.dart';

class NotFoundDrawer extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      elevation: 0,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 100),
            width: MediaQuery.of(context).size.width - 14,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 35),
                child: Row(
                  children: [
                    IconButton(
                      splashColor: Colors.transparent,
                      constraints: const BoxConstraints(maxWidth: 25, maxHeight: 25),
                      onPressed: (() {
                        Navigator.of(context).pop();
                      }),
                      icon: const Icon(Icons.close,
                          color: Color.fromARGB(255, 107, 107, 107),
                          size: titleIconSize * 2),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Não encontramos essa página.",
                    style: TextStyle(fontSize: 28),
                  ),
                  Text(
                    "Vai um Cookie?",
                    style: TextStyle(color: grayText, fontSize: 20),
                  ),
                ],
              ),
            ]),
          ),
          const Center(
            child: SizedBox(
                width: 300,
                child: Image(image: AssetImage('./images/perfectCookie.png'))),
          ),
        ],
      ),
    );
  }
}
