import 'package:flutter/material.dart';

class TopSearch extends StatefulWidget {
  const TopSearch({super.key});

  @override
  State<TopSearch> createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 3,
      right: 3,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(57, 197, 188, 0.7),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "Search",
            style: TextStyle(
              color: const Color.fromRGBO(0, 0, 0, 0.7),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
