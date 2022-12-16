import 'package:flutter/cupertino.dart';

class CategoryTitle extends StatelessWidget {
  final String title;

  const CategoryTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20),
    );
  }
}
