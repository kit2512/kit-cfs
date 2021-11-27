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
        Text("Câu hỏi cuối cùng nà"),
        ElevatedButton(
          onPressed: onPassed,
          child: Text("Dạ anh hỏi điiii!"),
        ),
      ],
    );
  }
}
