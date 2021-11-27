import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page6 extends StatelessWidget {
  const Page6({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;
  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Image.asset(
          "assets/images/mugsy_21.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Câu hỏi cuối cùng nà",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: Text("Dạ anh hỏi điiii!"),
        ),
      ],
    );
  }
}
