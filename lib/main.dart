import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "POKEDEX MYAPPALDAIRTUNQUIPA",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
