import 'package:flutter/material.dart';

class LabelView extends StatefulWidget {
  const LabelView({super.key});

  @override
  State<LabelView> createState() => _LabelViewState();
}

class _LabelViewState extends State<LabelView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Label"));
  }
}
