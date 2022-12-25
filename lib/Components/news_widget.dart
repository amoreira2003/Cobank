import 'package:cobank/assets/design_choices.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  static Color grayColor = const Color.fromARGB(255, 211, 211, 211);

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Acompanhe também",
                style: TextStyle(
                    fontSize: DesignChoice.titleFontSize,
                    fontWeight: DesignChoice.titleFontWeight),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: RawMaterialButton(
                    enableFeedback: true,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width - 14,
                        maxWidth: MediaQuery.of(context).size.width - 14),
                    onPressed: () {},
                    elevation: 0,
                    highlightElevation: 0,
                    focusElevation: 0,
                    fillColor: DesignChoice.grayColor,
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Row(children: [
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Icon(
                          Icons.sync_disabled,
                          size: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                          "Assistente de Pagamentos"),
                    ])),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 14,
                margin: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 16),
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          "Se delicie com os cookies dos outros, pegue cookies emprestado."),
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.brown.shade800,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        margin: EdgeInsets.symmetric(vertical: 12),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                                "Simular Emprestimo")),
                      ),
                    ],
                  )),
                ),
              )
            ])),
      ),
    ));
  }
}
