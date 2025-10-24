// lib/screens/main_wrapper.dart
import 'package:flutter/material.dart';
import 'package:hami_minimarket/models/product.dart';
import 'package:hami_minimarket/screens/cart_screen.dart';
import 'package:hami_minimarket/screens/home_screen.dart';
import 'package:hami_minimarket/screens/product_list_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;
  final List<Product> _cartItems = [];

  // This function will be passed to other screens
  void _addItemToCart(Product product) {
    setState(() {
      _cartItems.add(product);
    });
    // Show a confirmation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product.name} added to cart!'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  // This function is just to remove items (optional but good)
  void _removeItemFromCart(Product product) {
    setState(() {
      _cartItems.remove(product);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This list holds the screens
    final List<Widget> screens = [
      const HomeScreen(),
      ProductListScreen(
        // Pass the cart function to the product list
        onAddToCart: _addItemToCart,
      ),
      CartScreen(
        // Pass the current cart list to the cart screen
        cartItems: _cartItems,
        onRemoveItem: _removeItemFromCart,
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}