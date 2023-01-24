import 'package:flutter/material.dart';
// import 'package:my_flutter/screens/home_screen.dart';
import 'package:my_flutter/screens/home2.dart';

void main() {
  // ApiService().getTodaysToons();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}
