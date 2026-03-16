import 'package:flutter/material.dart';

class Bottombutton extends StatefulWidget {
  const Bottombutton({super.key});

  @override
  State<Bottombutton> createState() => _BottombuttonState();
}

class _BottombuttonState extends State<Bottombutton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(title: Text("ADD"), content: TextField());
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color.fromRGBO(102, 204, 255, 0.7),
          ),
          width: 50,
          height: 50,
          alignment: Alignment.center,
          child: Text('+', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
