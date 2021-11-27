import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page42 extends StatelessWidget {
  const Page42({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  Widget build(BuildContext context) {
    return DialogPage(children: [
      Image.asset("assets/images/mugsy_08.png", fit: BoxFit.cover),
      const SizedBox(
        height: 20,
      ),
      Text(
        "ĐÚNG RỒI!!",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
      ElevatedButton(
        onPressed: onPassed,
        child: Text("HIHIHI!!!!"),
      ),
    ]);
  }
}
