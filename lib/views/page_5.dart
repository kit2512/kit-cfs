import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page5 extends StatelessWidget {
  const Page5({
    Key? key,
    required this.onPassed,
  }) : super(key: key);

  final Function() onPassed;
  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(
          "Vậy anh cũng biết 3 ngăn còn lại changg dành cho ai rồi đúng không",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: onPassed, child: Text("Dạ đúng nà <3"))
      ],
    );
  }
}
