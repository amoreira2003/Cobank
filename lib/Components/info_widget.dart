import 'package:cobank/assets/design_choices.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.only(left: 14, right: 14, top: 16, bottom: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        style: TextStyle(
                            fontSize: DesignChoice.titleFontSize,
                            fontWeight: DesignChoice.titleFontWeight),
                        "Conta"),
                    IconButton(
                      splashColor: Colors.transparent,
                      constraints: BoxConstraints(maxWidth: 15, maxHeight: 15),
                      onPressed: (() {
                        Scaffold.of(context).openEndDrawer();
                      }),
                      icon: Icon(Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 107, 107, 107),
                          size: DesignChoice.titleIconSize),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                          style: TextStyle(
                              fontSize: DesignChoice.titleFontSize,
                              fontWeight: DesignChoice.titleFontWeight),
                          "C\$ 0,79"),
                    ),
                  ])
            ])),
      ),
    ));
  }
}
