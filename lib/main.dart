import 'package:cobank/Components/card_button_widget.dart';
import 'package:cobank/Components/card_info.dart';
import 'package:cobank/Components/header_widget.dart';
import 'package:cobank/Components/info_widget.dart';
import 'package:cobank/Components/news_widget.dart';
import 'package:cobank/Components/notFound_drawer.dart';
import 'package:cobank/Components/options_widget.dart';
import 'package:cobank/Components/recommendations_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then(((value) => runApp(MyApp())));
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        endDrawer: NotFoundDrawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Container(color: Colors.brown.shade600),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const HeaderWidget(),
            const InfoWidget(),
            const OptionsWidget(),
            const CardButtonWidget(),
            const RecommendationsWidget(),
            const Divider(color: Colors.grey),
            const CardInfoWidget(),
            const Divider(
              color: Colors.grey,
            ),
            const NewsWidget(),
          ]),
        ));
  }
}
