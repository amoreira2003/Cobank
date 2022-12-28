import 'package:cobank/assets/SensitiveDataManager.dart';
import 'package:cobank/sections/card_button_widget.dart';
import 'package:cobank/sections/card_info.dart';
import 'package:cobank/sections/header_widget.dart';
import 'package:cobank/sections/info_widget.dart';
import 'package:cobank/sections/news_widget.dart';
import 'package:cobank/sections/notFound_drawer.dart';
import 'package:cobank/sections/options_widget.dart';
import 'package:cobank/sections/recommendations_widget.dart';
import 'package:cobank/assets/design_choices.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_widgets/custom_buttons/customHomeButtonNavBar.dart';
import 'custom_widgets/custom_buttons/customNavButtonWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then(((value) => runApp(const MyApp())));
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
      extendBody: true,
      key: _key,
      endDrawer: NotFoundDrawer(),
      bottomNavigationBar: Container(
          height: 50,
          decoration:
              const BoxDecoration(color: Color.fromARGB(226, 255, 255, 255)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeNavBarCustomButton(
                customIcon: Icons.house_outlined,
                customColor: Colors.brown,
              ),
              NavBarCustomButton(
                customIcon: Icons.cookie_outlined,
                customColor: navBarNotSelectedColor,
              ),
              NavBarCustomButton(
                customIcon: Icons.shopping_bag_outlined,
                customColor: navBarNotSelectedColor,
              ),
            ],
          )),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(2),
        child: Container(color: Colors.brown),
      ),
      backgroundColor: Colors.white,
      body: DataManager(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            HeaderWidget(),
            InfoWidget(),
            OptionsWidget(),
            CardButtonWidget(),
            RecommendationsWidget(),
            Divider(color: Colors.grey),
            CardInfoWidget(),
            Divider(
              color: Colors.grey,
            ),
            NewsWidget(),
          ]),
        ),
      ),
    );
  }
}
