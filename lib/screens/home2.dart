import 'package:flutter/material.dart';
import 'package:my_flutter/models/webtoon.dart';
import 'package:my_flutter/services/api_service.dart';
import 'package:my_flutter/widgets/webtoon_widget.dart';

class Home2 extends StatelessWidget {
  Home2({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.amber,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Expanded(child: makeList(snapshot)),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        print(index);
        return Webtoon(
            title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id,);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
