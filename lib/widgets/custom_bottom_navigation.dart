import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
                size: 28,
              ),
              label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pie_chart_outline,
                size: 28,
              ),
              label: 'Gráfica'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle_outlined,
                size: 28,
              ),
              label: 'Usuarios'),
        ]);
  }
}