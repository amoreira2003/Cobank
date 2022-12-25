import 'package:cobank/assets/design_choices.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

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
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                      style: TextStyle(
                          fontSize: DesignChoice.titleFontSize,
                          fontWeight: DesignChoice.titleFontWeight),
                      "Cartão de Crédito"),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: DesignChoice.titleIconSize,
                  )
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            style: TextStyle(
                                color: DesignChoice.grayText, fontSize: 12),
                            "Fatura Atual"),
                        Text(
                            style: TextStyle(
                                fontSize: DesignChoice.titleFontSize,
                                fontWeight: DesignChoice.titleFontWeight),
                            "C\$ 2.234,12"),
                        Text(
                            style: TextStyle(
                                color: DesignChoice.grayText, fontSize: 12),
                            "Limite disponível de C\$ 1.123,23"),
                      ],
                    ),
                  ),
                ]),
            Container(
              width: 115,
              height: 35,
              decoration: BoxDecoration(
                  color: DesignChoice.grayColor,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              margin: EdgeInsets.symmetric(vertical: 12),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      "Parcelar Compras")),
            ),
          ]),
        ),
      ),
    ));
  }
}
