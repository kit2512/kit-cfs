import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class Page8 extends StatefulWidget {
  const Page8({
    Key? key,
    required this.onPassed,
  }) : super(key: key);
  final Function() onPassed;

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  final List<List<String>> textList = <List<String>>[
    ["Thiệt không vậy Babeee??", "Dạ thiệc ợ!"],
    ["ĐỪNG LÀM Em MỪNG HỤT NHÉEEE", "Dạ anh biết mà"],
    ["Em sẽ cố gắng hết sức để mang lại hạnh phúc cho anh", "Ôi!!!"],
    ["Em cảm ơn ông trời đã cho Em gặp và yêu anh", "Anh cũng thế"],
    ["Em như nước mưa quý giá mà ông trời đã ban xuống", "Dạ!"],
    ["Để cứu rỗi mảnh đất khô cằn trong tâm hồn anh", "Hihi"],
    ["Và điều cuối cùng anh muốn nói với anh là", "Anh đang lắng nghe đây anh"],
    ["em yêu anh nhiều lắm", "Ultr"],
  ];

  int _index = 0;

  void goToNext() {
    setState(() {
      if (_index < textList.length) {
        _index++;
      } else {
        widget.onPassed();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DialogPage(
      children: [
        Text(textList[_index][0],
            textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
        ElevatedButton(
          onPressed: goToNext,
          child: Text(textList[_index][1]),
        ),
      ],
    );
  }
}
