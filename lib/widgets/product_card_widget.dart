import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final String image_url;
  final String title;
  final String rating;

  const ProductCardWidget({
    super.key,
    required this.image_url,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 176,
      width: 150,
      color: Colors.white,
      padding: EdgeInsets.all(6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 150,
            child: Image.network(
              image_url,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
          Text(
            rating,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("⭐⭐⭐⭐⭐"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
