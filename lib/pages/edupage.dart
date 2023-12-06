import 'package:flutter/material.dart';

import 'product_detail.dart';

void main() {
  runApp(EduPage());
}

class Product {
  final String name;
  final String description;
  final double price;
  String imagePath;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

class EduPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Botol Plastik',
      description: 'Powerful laptop for work and entertainment.',
      price: 1200.0,
      imagePath: 'lib/images/water-bottle.png',
    ),
    Product(
      name: 'Kardus Bekas',
      description: 'High-end smartphone with amazing features.',
      price: 800.0,
      imagePath: 'lib/images/water-bottle.png',
    ),
    Product(
      name: 'Cup Gelas',
      description: 'Wireless headphones with noise cancellation.',
      price: 150.0,
      imagePath: 'lib/images/star.png',
    ),
    Product(
      name: 'Galon',
      description: 'Wireless headphones with noise cancellation.',
      price: 150.0,
      imagePath: 'lib/images/star.png',
    ),
    Product(
      name: 'Kaca',
      description: 'Wireless headphones with noise cancellation.',
      price: 150.0,
      imagePath: 'lib/images/star.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 185, 142, 1),
          title: Text('Product List'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(product: products[index]);
          },
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            product.description,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 5),
          Image.asset(
            product.imagePath,
            width: 100, // Sesuaikan dengan kebutuhan Anda
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman detail produk saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: product),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(0, 185, 142, 1),
                ),
                child: Text('Read Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
