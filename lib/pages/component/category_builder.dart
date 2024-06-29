import 'package:flutter/material.dart';
import 'package:news_app/pages/category_page.dart';
import 'package:news_app/pages/component/category_box.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({super.key});
  final List<Widget> category = const [
    MyBox(img: 'assets/img/business.avif', text: 'business',rout: Business(),),
    MyBox(img: 'assets/img/entertaiment.avif', text: 'entertaiment',rout: Entertainment(),),
    MyBox(img: 'assets/img/general.avif', text: 'general',rout: General()),
    MyBox(img: 'assets/img/health.avif', text: 'health',rout: Health()),
    MyBox(img: 'assets/img/science.avif', text: 'science',rout: Science()),
    MyBox(img: 'assets/img/sports.avif', text: 'sports',rout: Sports()),
    MyBox(img: 'assets/img/technology.jpeg', text: 'technology',rout: Technology()),
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