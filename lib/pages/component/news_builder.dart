import 'package:flutter/material.dart';

import 'package:news_app/pages/component/request_api.dart';

// NewsBuilder is a builder widget for news card
class NewsBuilder extends StatelessWidget {
  const NewsBuilder({super.key, required this.cate});
final String cate;
  // List<Widget> newsList = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsRequest().getNews(cate),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
              return snapshot.data![index];
            });
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('OPPS THERE ARE AN ERRROR..'),
            );
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            ));
          }
        });
  }
}

