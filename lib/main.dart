import 'package:basic_flutter/pages/home_page.dart';
import 'package:basic_flutter/pages/launcher.dart';
import 'package:basic_flutter/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasicFlutter());
}


class BasicFlutter extends StatelessWidget {

  const BasicFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Launcher(),
    );
  }
}
