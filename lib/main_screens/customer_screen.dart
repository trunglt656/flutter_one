import 'package:flutter/material.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(unselectedItemColor: Colors.amber, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home Page"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "Stores"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]),
    );
  }
}
