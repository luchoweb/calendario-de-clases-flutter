import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final DateTime now = DateTime.now();
  static const startHour = 7;
  static const endHour = 13;
  static final titleCalendar = endHour < now.hour ? 'Mañana' : 'Hoy';

  @override
  Widget build(BuildContext context) {
    print(now.hour);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Horario de clases'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        children: [
          Text(
            titleCalendar,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
        ],
      ),
    );
  }
}