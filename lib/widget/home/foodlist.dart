import 'package:flutter/material.dart';

class Foodlist extends StatefulWidget {
  const Foodlist({super.key});

  @override
  State<Foodlist> createState() => _FoodlistState();
}

class _FoodlistState extends State<Foodlist> {
  int foodCount = 39;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: foodCount,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 223, 223),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'food ${index + 1}',
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            );
          },
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: GestureDetector(
            onTap: () {},
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
        ),
      ],
    );
  }
}
