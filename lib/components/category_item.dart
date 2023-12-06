import 'package:flutter/material.dart';

class CategoryListItem extends StatelessWidget {
  final String imagePath;
  final String imageName;
  const CategoryListItem(
      {super.key, required this.imagePath, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(children: [
        Image.asset(
          imagePath,
          width: 32,
        ),
        const SizedBox(width: 8),
        Text(
          imageName,
          style: const TextStyle(fontSize: 14),
        )
      ]),
    );
  }
}
