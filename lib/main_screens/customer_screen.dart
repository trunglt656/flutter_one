import 'package:flutter/material.dart';

import 'home.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue);

  // CÁCH 1 ==> ĐỂ KHAI BÁO 1 LIST CONTEXT
  // final List<Widget> _tab = [
  //   const Center(
  //     child: Text("This is Home page", style: optionStyle),
  //   ),
  //   const Center(
  //     child: Text("This is Category page", style: optionStyle),
  //   ),
  //   const Center(
  //     child: Text("This is Stores page ", style: optionStyle),
  //   ),
  //   const Center(
  //     child: Text("This is Cart page", style: optionStyle),
  //   ),
  //   const Center(
  //     child: Text("This is Profile page", style: optionStyle),
  //   ),
  // ];

  final List<Widget> _tab = const [
    HomeScreen(),
    Text(
      'This is category page',
      style: optionStyle,
    ),
    Text(
      'This is stores page',
      style: optionStyle,
    ),
    Text(
      'This is cart page',
      style: optionStyle,
    ),
    Text(
      'This is profile page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Cach 1 ==> body: _tab[_selectedIndex],
        body: Center(child: _tab.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            // khi co fixed thi se khong thay doi dc backgroundColor
            // type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Category",
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: "Stores",
                backgroundColor: Colors.purple,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
                backgroundColor: Colors.pink,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.yellow,
              ),
            ],
            onTap: _onItemTapped));
  }
}
