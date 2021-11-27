import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  final List<Widget> children;
  const DialogPage({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          child: Container(
            color: Colors.red[100],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeOut,
            padding: EdgeInsets.all(20),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: children,
            ),
          ),
        )
      ],
    );
  }
}
