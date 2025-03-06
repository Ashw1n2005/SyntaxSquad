import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final Widget page;
  const NextButton({super.key,required this.page});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 113, 60, 93)),
        ),
        onPressed: (){
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => widget.page),
                      );
      }, 
      child: Text("Next",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),)),
    );
  }
}