import 'package:flutter/material.dart';

import 'package:horario_de_clases/screens/home_screen.dart';
import 'package:horario_de_clases/screens/subjects_screen.dart';
import 'package:horario_de_clases/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentPage = 0;
  final pageController = PageController( initialPage: 0 );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horario de clases',
      home: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeScreen(),
            SubjectsScreen(),
            SettingScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black87,
          currentIndex: currentPage,
          onTap: (index) {
            currentPage = index;
            pageController.animateToPage(index, curve: Curves.easeInOut, duration: const Duration(milliseconds: 300));
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Horario'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded),
              label: 'Asignaturas'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Opciones'
            )
          ]
        ),
      ),
      
    );
  }
}
