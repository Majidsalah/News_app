import 'package:flutter/material.dart';
import 'package:news_app/pages/component/category_box.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});
  final List<Widget> category = const [
    MyBox(img: 'assets/img/business.avif', text: 'business'),
    MyBox(img: 'assets/img/entertaiment.avif', text: 'entertaiment'),
    MyBox(img: 'assets/img/general.avif', text: 'general'),
    MyBox(img: 'assets/img/health.avif', text: 'health'),
    MyBox(img: 'assets/img/science.avif', text: 'science'),
    MyBox(img: 'assets/img/sports.avif', text: 'sports'),
    MyBox(img: 'assets/img/technology.jpeg', text: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return category[index];
                    }));
  }
}