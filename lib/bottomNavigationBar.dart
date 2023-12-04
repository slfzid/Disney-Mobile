import 'package:flutter/material.dart';
import 'package:pab_055/moveHomeScreen.dart';
import 'package:pab_055/DetailMovieScreen.dart';
import 'package:pab_055/profil.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectIndex = 0;
  List<Widget> _screenList = [
    MoveHomeScreen(),
    DetailMovieScreen(),
    profil(),
  ];

  void gantiLayar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: gantiLayar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded), label: 'Profile'),
          ]),
    );
  }
}
