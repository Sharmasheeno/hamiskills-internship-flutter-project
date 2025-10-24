// lib/screens/product_list_screen.dart
import 'package:flutter/material.dart';
import 'package:hami_minimarket/models/product.dart';
import 'package:hami_minimarket/screens/product_details_screen.dart';

class ProductListScreen extends StatelessWidget {
  final Function(Product) onAddToCart; // Receives the function

  const ProductListScreen({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product.name),
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Navigate to details screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsScreen(
                      product: product,
                      onAddToCart: onAddToCart, // Pass the function along
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}