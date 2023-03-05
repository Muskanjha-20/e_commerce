import 'package:flutter/material.dart';

class SocialCircle extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  const SocialCircle({
    super.key,
    required this.text,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                image,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(text),
        ],
      ),
    );
  }
}
