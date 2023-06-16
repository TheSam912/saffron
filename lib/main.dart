import 'package:flutter/material.dart';
import 'package:saffron_project/contant/color.dart';
import 'components/mainDesign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saffron',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: mainDesign(context),
      ),
    );
  }
}
