import 'package:cobank/Components/card_button_widget.dart';
import 'package:cobank/Components/card_info.dart';
import 'package:cobank/Components/header_widget.dart';
import 'package:cobank/Components/info_widget.dart';
import 'package:cobank/Components/options_widget.dart';
import 'package:cobank/Components/recommendations_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cookie Bank',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          const HeaderWidget(),
          const InfoWidget(),
          const OptionsWidget(),
          const CardButtonWidget(),
          const RecommendationsWidget(),
          const Divider(
            color: Colors.grey,
          ),
          const CardInfoWidget(),
          const Divider(
            color: Colors.grey,
          ),
        ]));
  }
}
