import 'package:flutter/material.dart';

// Newscat is a customed widget for news

class NewsCat extends StatelessWidget {
  const NewsCat(
      {super.key,
      required this.imge,
      required this.htext,
      required this.subtext});
  final String imge;
  //head line text
  final String htext;
  //subhead text
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: 330,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imge,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            htext,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
          Text(
            
            subtext,
            maxLines: 2,
            style: const TextStyle(
              
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textDirection: TextDirection.rtl,
          )
        ],
      ),
    );
  }
}
