import 'package:flutter/material.dart';
import 'package:mwd_app/models/waste.dart';

class CartItem extends StatefulWidget {
  Waste waste;
  CartItem({
    super.key,
    required this.waste,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: Image.asset(widget.waste.imagePath),
          title: Text(widget.waste.nama),
          subtitle: Text(widget.waste.jenis),
        ),
      ),
    ]);
  }
}
