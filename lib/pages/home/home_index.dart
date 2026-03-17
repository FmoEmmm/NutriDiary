import 'package:flutter/material.dart';
import 'package:nutridiary/widget/home/bottombutton.dart';
import 'package:nutridiary/widget/home/foodlist.dart';
import 'package:nutridiary/widget/home/topsearch.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildern() {
    return [
      SliverToBoxAdapter(child: TopSearch()),
      SliverToBoxAdapter(child: Foodlist()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(slivers: _getScrollChildern()),
        Bottombutton(),
      ],
    );
  }
}
