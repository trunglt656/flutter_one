import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  static const List<Tab> _myTabs = <Tab>[
    Tab(
      child: Text('Home page'),
    ),
    Tab(
      child: Text('Category page'),
    ),
    Tab(
      child: Text('Stores page'),
    ),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabs.length,
      child: Scaffold(
        appBar: AppBar(
            title: const CupertinoSearchTextField(),
            bottom: const TabBar(
              tabs: _myTabs,
            )),
      ),
    );
  }
}
