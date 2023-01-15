import 'package:flutter/material.dart';
// import 'package:my_flutter/screens/home_screen.dart';
import 'package:my_flutter/screens/home2.dart';
import 'package:my_flutter/services/api_service.dart';

void main() {
  // ApiService().getTodaysToons();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home2(),
    );
  }
}
