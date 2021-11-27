import 'package:flutter/material.dart';

class SwapButton extends StatefulWidget {
  const SwapButton({
    Key? key,
    required this.correctText,
    required this.incorrectText,
    required this.onPassed,
  }) : super(key: key);
  final String correctText;
  final String incorrectText;
  final Function onPassed;

  @override
  _SwapButtonState createState() => _SwapButtonState();
}

class _SwapButtonState extends State<SwapButton> {
  late String text1;
  late String text2;

  @override
  void initState() {
    text1 = widget.correctText;
    text2 = widget.incorrectText;
    super.initState();
  }

  void swap() {
    setState(() {
      final tmp = text1;
      text1 = text2;
      text2 = tmp;
    });
  }

  void onPressed(String text) {
    if (text == widget.correctText) {
      widget.onPassed();
    } else {
      swap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            onPressed(text1);
          },
          child: Text(text1),
        ),
        SizedBox(
          width: 20,
        ),
        ElevatedButton(
          onPressed: () {
            onPressed(text2);
          },
          child: Text(text2),
        ),
      ],
    );
  }
}
