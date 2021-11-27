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
        Image.asset("assets/images/mugsy_35.png", fit: BoxFit.cover),
        SizedBox(
          height: 20,
        ),
        const Text(
          "Em à ! 💓️",
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: const Text("Dạ!!!"),
        ),
      ],
    );
  }
}
