import 'package:flutter/material.dart';

class TextAnswer extends StatefulWidget {
  const TextAnswer({
    Key? key,
    required this.answers,
    required this.buttonText,
    required this.onPassed,
    this.hintText,
  }) : super(key: key);
  final List<String> answers;
  final String buttonText;
  final String? hintText;
  final Function() onPassed;

  @override
  State<TextAnswer> createState() => _TextAnswerState();
}

class _TextAnswerState extends State<TextAnswer> {
  final _controller = TextEditingController();
  late final List<String> _answers;
  int _faults = 0;

  @override
  void initState() {
    _answers = widget.answers.map((e) => e.toLowerCase()).toList();
    super.initState();
  }

  void onPressed() {
    if (!_answers.contains(_controller.text.toLowerCase())) {
      setState(() {
        _faults++;
      });
    } else {
      setState(() {
        _faults = 0;
      });
      widget.onPassed();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _controller,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            errorText: _faults > 0 ? "Em nhập sai $_faults lần rồi đó" : null,
            hintText: widget.hintText,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(widget.buttonText),
        ),
      ],
    );
  }
}
