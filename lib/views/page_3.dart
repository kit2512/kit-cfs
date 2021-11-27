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
        Image.asset("assets/images/mugsy_15.png", fit: BoxFit.cover),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Chắc Em cũng biết người đó là ai rồi nhỉ \n (๑•﹏•)",
          style: TextStyle(fontSize: 20),
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
