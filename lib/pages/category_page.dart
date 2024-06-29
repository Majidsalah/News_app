import 'package:flutter/material.dart';
import 'package:news_app/pages/component/news_builder.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'Business',),
    );
  }
}

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'entertainment',),
    );
  }
}

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'Sports',),
    );
  }
}
class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'Health',),
    );
  }
}
class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'General',),
    );
  }
}

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'Science',),
    );
  }
}


class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: NewsBuilder(cate: 'Technology',),
    );
  }
}