import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

// Newscat is a customed widget for news

class NewsCat extends StatelessWidget {
  const NewsCat({
    super.key,
    required this.imge,
    required this.htext,
    required this.subtext,
    required this.newsUrl,

    // required this.newsUrl,
  });
  final String imge;
  //head line text
  final String htext;
  //subhead text
  final String? subtext;
  final String newsUrl;
  urlFunc(String newsUrl) => Uri.parse(newsUrl);

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
              child: GestureDetector(
                onTap: () => _launchUrl(),
                child: Image.network(
                  imge,
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return  const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error_outline);
                  },
                ),
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
            subtext ?? ' ',
            maxLines: 2,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl() async {
    await launchUrl(urlFunc(newsUrl));
  }
}
// // Image.network(
//   'https://example.com/image.jpg',
//   loadingBuilder: (context, child, loadingProgress) {
//     if (loadingProgress == null) {
//       return child;
//     }
//     return Center(
//       child: CircularProgressIndicator(),
//     );
//   },
//   errorBuilder: (context, error, stackTrace) {
//     return Icon(Icons.error);
//   },
// );