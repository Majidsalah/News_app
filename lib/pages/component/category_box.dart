import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBox extends StatelessWidget {
  const MyBox({super.key, required this.img, this.text});
  final String img;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 90,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(img),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(text!,
            style: const TextStyle(color: Colors.white, fontSize: 18)
        )),
      ),
    );
  }
}
