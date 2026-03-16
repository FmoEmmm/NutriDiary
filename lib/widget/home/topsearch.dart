import 'package:flutter/material.dart';

class TopSearch extends StatefulWidget {
  const TopSearch({super.key});

  @override
  State<TopSearch> createState() => _TopSearchState();
}

class _TopSearchState extends State<TopSearch> {
  TextEditingController _SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        controller: _SearchController,
        onSubmitted: (value) {
          print(value);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          hintText: "Search...",
          fillColor: const Color.fromRGBO(57, 197, 188, 0.7),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
