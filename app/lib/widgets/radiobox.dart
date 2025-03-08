import 'package:flutter/material.dart';

class RadioBox extends StatefulWidget {
  final Map<String, bool> answers;

  const RadioBox({super.key, required this.answers});

  @override
  _RadioBoxState createState() => _RadioBoxState();
}

class _RadioBoxState extends State<RadioBox> {
  String? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ...widget.answers.keys.map((String key) {
          return RadioListTile<String>(
            activeColor: Colors.black,
            title: Text(
              key,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            value: key,
            groupValue: selectedAnswer,
            onChanged: (String? value) {
              setState(() {
                selectedAnswer = value;
              });
            },
          );
        }),
      ],
    );
    
  }
}


