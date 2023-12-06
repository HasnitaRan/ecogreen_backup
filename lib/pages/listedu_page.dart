import 'package:flutter/material.dart';
import 'package:mwd_app/models/list.dart';
import 'package:mwd_app/models/waste.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ListWaste>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //heading
                  const Text(
                    'Halaman Edukasi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            // get individual waste
                            Waste individualWaste = value.getUserCart()[index];

                            // return the cart item
                            return CartItem(waste: individualWaste);
                          }))
                ],
              ),
            ));
  }
}
