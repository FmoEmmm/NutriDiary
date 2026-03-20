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
  int _foodCount = 0;

  List<Widget> _getScrollChildern() {
    return [
      SliverToBoxAdapter(child: TopSearch()),
      SliverToBoxAdapter(child: Foodlist(foodCount: _foodCount)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(slivers: _getScrollChildern()),
        Bottombutton(
          onAddFood: () {
            setState(() {
              _foodCount++;
            });
          },
        ),
      ],
    );
  }
}
