import 'package:flutter/material.dart';
import 'package:gtthemepark/report.dart';
import 'package:gtthemepark/task.dart';

//import 'app.dart';
import 'list2.dart';

import 'listview.dart';

class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  int _index = 0;

  final pages = [
    task(),
    report(),
    Home(),
    Web(),
  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.cyan[50], // <-- This works for fixed
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        // backgroundColor: Colors.cyanAccent,
        //fixedColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: 'TASK'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'GAMES'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'ORDER'),
        ],
        currentIndex: _index,
        onTap: _tap,
      ),
    );
  }
}
