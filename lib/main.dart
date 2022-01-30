import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/app.dart';
import 'package:flutter_ecommerce_app/src/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-Commerce App',
      theme: ThemeData(
        primarySwatch: darkblack,
      ),
      debugShowCheckedModeBanner: false,
      home: const App(),
    );
  }
}
