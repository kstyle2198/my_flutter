import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter = counter + 1;
    });
  }

  void reSet() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          //내용이 화면을 넘칠때 스크롤 다운 가능하게
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Kstyle",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Create My_Flutter project",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const Text(
                      "Click Count",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$counter',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: onClicked,
                          icon: const Icon(Icons.add_box_outlined),
                          color: Colors.amberAccent,
                          iconSize: 30,
                        ),
                        IconButton(
                          onPressed: reSet,
                          icon: const Icon(Icons.restore_page),
                          color: Colors.green,
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Button1(
                        text: "한글",
                        bgColor: Colors.white,
                        textColor: Colors.black),
                    Button1(
                        text: "ENG",
                        bgColor: Colors.yellow,
                        textColor: Colors.red)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "sentence1",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      "sentence2",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const MyCard(
                  title: "Weather",
                  numbers: "-20",
                  unit: "Celcius",
                  icon: Icons.ac_unit_rounded,
                  bgcolor: Colors.deepOrange,
                ),
                Transform.translate(
                  offset: const Offset(3, -15),
                  child: const MyCard(
                    title: "Currency",
                    numbers: "20,000",
                    unit: "dollar",
                    icon: Icons.currency_exchange,
                    bgcolor: Colors.orangeAccent,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(6, -30),
                  child: const MyCard(
                    title: "Data",
                    numbers: "18,000",
                    unit: "Bytes",
                    icon: Icons.adb,
                    bgcolor: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String title, numbers, unit;
  final Color bgcolor;
  final IconData icon;

  const MyCard(
      {super.key,
      required this.title,
      required this.numbers,
      required this.unit,
      required this.bgcolor,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge, // overflowed 아이콘 부분 잘라내기
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      numbers,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      unit,
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                //X, Y 좌표 이동
                offset: const Offset(-2, 5),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button1(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
