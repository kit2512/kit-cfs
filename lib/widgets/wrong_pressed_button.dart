import 'package:flutter/material.dart';

class WrongPressButton extends StatefulWidget {
  const WrongPressButton({
    Key? key,
    required this.correctAnswer,
    required this.incorrectAnswer,
    required this.onPassed,
  }) : super(key: key);

  final String correctAnswer;
  final String incorrectAnswer;
  final Function()? onPassed;

  @override
  State<WrongPressButton> createState() => _WrongPressButtonState();
}

class _WrongPressButtonState extends State<WrongPressButton> {
  int _faults = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        if (_faults > 0)
          Text(
            "Anh bấm nhầm nút ${_faults} lần rồi đó",
            style: TextStyle(fontSize: 12, color: Colors.red),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: widget.onPassed,
              child: Text(widget.correctAnswer),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _faults++;
                });
              },
              child: Text(widget.incorrectAnswer),
            ),
          ],
        )
      ],
    );
  }
}
