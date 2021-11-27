import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page3 extends StatelessWidget {
  const Page3({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(
          "Chắc anh cũng biết người đó là ai rồi nhỉ \n (๑•﹏•)",
          textAlign: TextAlign.center,
        ),
        WrongPressButton(
          correctAnswer: "Có ạ",
          incorrectAnswer: "Không ạ",
          onPassed: onPassed,
        )
      ],
    );
  }
}
