import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(
          "Trái tim Changg có 4 ngăn, anh có biết ngăn lớn nhất changg chỉ dành cho một người không? 👉️👈️",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: const Text("Dạ!!"),
        ),
      ],
    );
  }
}
