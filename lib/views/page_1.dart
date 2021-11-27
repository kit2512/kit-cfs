import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        const Text(
          "Anh à ! 💓️",
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: const Text("Dạ!!!"),
        ),
      ],
    );
  }
}
