import 'package:flutter/material.dart';
import 'package:for_crush/theme.dart';

import 'views/views.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends MaterialApp {
  MyApp({Key? key})
      : super(key: key, home: const Home(), theme: AppTheme.theme());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final List<Widget> pages;

  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      Page1(onPassed: goToNextPage),
      Page2(onPassed: goToNextPage),
      Page3(onPassed: goToNextPage),
      Page4(onPassed: goToNextPage),
      Page42(onPassed: goToNextPage),
      Page5(onPassed: goToNextPage),
      Page6(onPassed: goToNextPage),
      Page7(onPassed: goToNextPage),
      Page8(onPassed: goToNextPage)
    ];
  }

  void goToNextPage() {
    setState(
      () {
        selectedPage += 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
    );
  }
}
