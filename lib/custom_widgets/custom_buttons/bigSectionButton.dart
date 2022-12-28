import 'package:flutter/material.dart';

class BigSectionButton extends StatelessWidget {
  const BigSectionButton(
      {Key? key, required this.buttonText, required this.headerText})
      : super(key: key);

  final String buttonText;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 7),
      decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                style: TextStyle(fontSize: 18, color: Colors.white),
                headerText),
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.brown.shade800,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              margin: EdgeInsets.symmetric(vertical: 12),
              child: TextButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Text(
                      style: TextStyle(fontSize: 11, color: Colors.white),
                      buttonText)),
            ),
          ],
        )),
      ),
    );
  }
}
