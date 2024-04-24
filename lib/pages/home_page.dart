import 'package:flutter/material.dart';
import 'package:news_app/pages/component/category_builder.dart';
import 'package:news_app/pages/component/news_builder.dart';
// import 'package:news_app/pages/component/categoryBox.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News', style: TextStyle(color: Colors.black)),
              Text('Cloud', style: TextStyle(color: Colors.yellow)),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const Column(
          children: [
            CategoryBuilder(),
            SizedBox(height: 15),
            Expanded(child: NewsBuilder()),
          ],
        ));
  }
}
