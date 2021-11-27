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
        Image.asset("assets/images/mugsy_in_love_02.png",
            fit: BoxFit.cover, width: 200),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Đó là ... ?",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        TextAnswer(
          answers: ["em", "Em", "nt Em", "nguyễn thị Em"],
          hintText: "Là..",
          buttonText: "Đúng không anh?",
          onPassed: onPassed,
        ),
      ],
    );
  }
}
