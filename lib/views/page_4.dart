import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page4 extends StatelessWidget {
  const Page4({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(
          "Đó là ... ?",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        TextAnswer(
          correctAnswer: "Vũ",
          hintText: "Là..",
          buttonText: "Đây phải không em?",
          onPassed: onPassed,
        ),
      ],
    );
  }
}
