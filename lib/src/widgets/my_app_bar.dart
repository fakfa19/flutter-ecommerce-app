import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(
      {Key? key, required this.title, required this.subTitle, this.action})
      : super(key: key);

  final String title;
  final String subTitle;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text.rich(
        TextSpan(
          text: '$title ',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
              text: subTitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: action,
    );
  }
}
