import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.brown,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade900,
                          radius: 20,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.white),
                              const Icon(Icons.help_outline_rounded,
                                  color: Colors.white),
                              const Icon(
                                Icons.content_paste_search_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 14, top: 24),
                      child: Text(
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          "Olá, Alexandre")),
                ]),
          ),
        ),
      ),
    ]);
  }
}
