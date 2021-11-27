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
    return DialogPage(
      children: [
        Text(
          "ĐÚNG RỒI!!",
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: onPassed,
          child: Text("HIHIHI!!!!"),
        ),
      ],
    );
  }
}
