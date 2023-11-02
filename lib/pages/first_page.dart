// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/profile_page.dart';
import 'package:todo/pages/settings_page.dart';

class FristPage extends StatefulWidget {
  FristPage({super.key});

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  final List _pages = [
    // home
    Home(),

    // settings
    Profile(),

    // profile
    Settings(),
  ];

  int _selectedPage = 0;

  void _navigatePage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
      ),

      body: _pages[_selectedPage],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _navigatePage,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}