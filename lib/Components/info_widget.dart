import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(style: TextStyle(fontSize: 20), "Conta"),
                    Icon(Icons.arrow_forward_ios)
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(style: TextStyle(fontSize: 15), "RS 0,79"),
                    ),
                  ])
            ])),
      ),
    ));
  }
}
