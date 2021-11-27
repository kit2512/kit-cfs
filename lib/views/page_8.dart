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
    [
      "Thiệt không vậy Babeee??",
      "Dạ thiệc ợ!",
      "assets/images/mugsy_in_love_15.png"
    ],
    [
      "ĐỪNG LÀM ANH MỪNG HỤT NHÉEEE",
      "Dạ em biết mà",
      "assets/images/mugsy_27.png"
    ],
    ["Anh cũng rất yêu em <3", "Hihi!", "assets/images/mugsy_35.png"],
    [
      "Anh sẽ cố gắng hết sức để mang lại hạnh phúc cho em",
      "Ôi!!!",
      "assets/images/mugsy_in_love_13.png"
    ],
    [
      "Anh cảm ơn ông trời đã cho anh gặp và yêu em",
      "em cũng thế",
      "assets/images/mugsy_33.png"
    ],
    [
      "Em như nước mưa quý giá mà ông trời đã ban xuống",
      "Dạ!",
      "assets/images/mugsy_20.png",
    ],
    [
      "Để cứu rỗi mảnh đất khô cằn trong tâm hồn anh",
      "Hihi",
      "assets/images/mugsy_03.png"
    ],
    [
      "Và điều cuối cùng anh muốn nói với em là",
      "Em đang lắng nghe đây anh",
      "assets/images/mugsy_in_love_08.png"
    ],
    ["anh yêu Em nhiều lắm", "Ultr", "assets/images/mugsy_in_love_01.png"],
  ];

  int _index = 0;

  void goToNext() {
    setState(() {
      if (_index < textList.length - 1) {
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
        Text(
          textList[_index][0],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Image.asset(textList[_index][2]),
        ElevatedButton(
          onPressed: goToNext,
          child: Text(textList[_index][1]),
        ),
      ],
    );
  }
}
