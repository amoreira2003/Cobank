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
      body: Row(children: [
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
                            child: Icon(
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
                                const Icon(Icons.access_time_filled_sharp,
                                    color: Colors.white),
                                const Icon(
                                  Icons.ac_unit,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 10, top: 24),
                        child: Text(
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            "Olá, Alexandre")),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
