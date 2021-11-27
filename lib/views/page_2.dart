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
        Image.asset("assets/images/mugsy_02.png", fit: BoxFit.cover),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Trái tim anh có 4 ngăn, em có biết ngăn lớn nhất anh chỉ dành cho một người không? 👉️👈️",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: const Text("Dạ có!!"),
        ),
      ],
    );
  }
}
