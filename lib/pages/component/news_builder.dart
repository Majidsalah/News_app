import 'package:flutter/material.dart';
import 'package:news_app/pages/component/news_box.dart';
// NewsBuilder is a builder widget for news card
class NewsBuilder extends StatelessWidget {
  const NewsBuilder({super.key});
  final List<Widget> newsList = const [
    NewsCat(
        imge: 'assets/img/gaza.webp',
        htext:
            'بعد 200 يوم من حرب غزة.. \nالاقتصاد الإسرائيلي يواجه صعوبات وتفاقم العجز',
        subtext:
            'بعد 200 يوم على بدء العدوان الإسرائيلي المدمر على قطاع غزة، تبدو التوقعات متشائمة إلى حد كبير، حيث أصيبت قطاعات اقتصادية كاملة بشبه شلل وخرجت رؤوس أموال أجنبية بل ومحلية بحثا عن ملاذات آمنة لاستثمارها.'),
    NewsCat(
        imge: 'assets/img/gold.webp',
        htext: 'ا الذهب يواصل انخفاضه مع انحسار مخاوف التصعيد في الشرق الأوسط',
        subtext:
            'تراجعت أسعار الذهب إلى أدنى مستوياتها في أكثر من أسبوعين قبل أن تتعافى قليلا لكنها بقيت في المنطقة الحمراء، وذلك مع انحسار مخاوف نشوب صراع أوسع نطاقا في الشرق الأوسط، ما عزز شهية المستثمرين للمخاطرة وخفض الطلب على الذهب باعتباره ملاذا آمنا.'),
    NewsCat(
      imge: 'assets/img/tesla.webp',
      htext: 'سهم تسلا يواجه ضغوطا كبيرة بعد تخفيض أسعار سياراتها',
      subtext:
          ' واجهت أسهم عملاق السيارات الكهربائية الأميركي تسلا انخفاضا حادا خلال تداولات ما قبل السوق، اليوم الاثنين، واستمر نزيف السهم لحين فتح سوق الأسهم للتداول، بعد عطلة نهاية أسبوع مضطربة توجت بتخفيضات كبيرة في أسعار سياراتها، وفقا لما أوردته مجلة فوربس  ',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return newsList[index];
        });
  }
}
