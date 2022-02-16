import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  static final TimeOfDay now = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Opciones'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        children: [
          const Text(
            'Configure su jornada escolar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                DateTimePicker(
                  type: DateTimePickerType.time,
                  initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  timeLabelText: 'Hora de entrada',
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
              ]
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 25, bottom: 30),
            child: Column(
              children: [
                DateTimePicker(
                  type: DateTimePickerType.time,
                  initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  timeLabelText: 'Hora de salida',
                  onChanged: (val) => print(val),
                  validator: (val) {
                    print(val);
                    return null;
                  },
                  onSaved: (val) => print(val),
                ),
              ]
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 15, bottom: 70),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black87),
                padding: MaterialStateProperty.all(const EdgeInsets.all(15))
              ),
              onPressed: () => {},
              child: const Text(
                'Guardar',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
                )
              ),
            ),
          ),
          const Center(
            child: Text('© Codify Agency'),
          ),
        ],
      )
    );
  }
}