import 'package:flutter/material.dart';

class Bottombutton extends StatefulWidget {
  //const Bottombutton({super.key});
  final VoidCallback onAddFood;
  const Bottombutton({super.key, required this.onAddFood});

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
              return AlertDialog(
                title: Text("今天吃了什么:"),
                content: TextField(),
                actions: [
                  TextButton(
                    onPressed: () {
                      widget.onAddFood();
                      Navigator.pop(context);
                    },
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No"),
                  ),
                ],
              );
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
