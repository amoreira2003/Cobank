// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DiscoveryWidget extends StatelessWidget {
  const DiscoveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
          child: Text("Descubra mais"),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
                width: 200,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                margin: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      height: 125,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16))),
                    ),
                    Container(
                        width: 200,
                        height: 125,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, left: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: (Text("Nubank 100% Seguro")),
                              ),
                              Text(
                                "100% cobertura, 0% estresse.",
                                style: TextStyle(
                                    color: Colors.grey.shade300, fontSize: 12),
                              ),
                              Text("Simule agora mesmo",
                                  style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontSize: 12)),
                              Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(24))),
                                margin: EdgeInsets.symmetric(vertical: 8),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                        "Simular Agora")),
                              ),
                            ],
                          ),
                        )),
                  ],
                )),
          ]),
        ),
      ],
    );
  }
}
