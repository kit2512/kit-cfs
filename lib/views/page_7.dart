import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page7 extends StatelessWidget {
  const Page7({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;
  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(
          "Anh có yêu changg không?",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SwapButton(
          correctText: "CÓ!",
          incorrectText: "không",
          onPassed: onPassed,
        ),
      ],
    );
  }
}
