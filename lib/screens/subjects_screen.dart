import 'package:flutter/material.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Administrar asignaturas'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        children: [
          Row(
            children: const [
              Text('Asignatura 1')
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(  
        child: const Icon(Icons.add),  
        backgroundColor: Colors.black87,  
        foregroundColor: Colors.white,  
        onPressed: () => {},  
      )
    );
  }
}