import 'package:codelab/MaterialComponentsBasics.dart';
import 'package:codelab/marketPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/MaterialComponentsBasics': (context) => MaterialComponentsBasics(),
      '/homeMarketPage': (context) => homeMarketPage()
    },
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/MaterialComponentsBasics');
        },
        child: const Text('CodeLab: Material Components Basics'),
      ),
    );
  }
}
