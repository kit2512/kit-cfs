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
        Image.asset(
          "assets/images/mugsy_in_love_07.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Vậy em cũng biết 3 ngăn còn lại anh dành cho ai rồi đúng không",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: onPassed, child: Text("Dạ đúng nà <3"))
      ],
    );
  }
}
