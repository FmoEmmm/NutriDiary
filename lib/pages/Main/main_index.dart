import 'package:flutter/material.dart';
import 'package:nutridiary/pages/all/all_index.dart';
import 'package:nutridiary/pages/home/home_index.dart';
import 'package:nutridiary/pages/label/label_index.dart';
import 'package:nutridiary/pages/my/my_index.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //导航栏元素
  final List<Map<String, String>> _tabList = [
    {
      "icon": "assets/images/home.png",
      "active_icon": "assets/images/home-fill.png",
      "text": "Home",
    },

    {
      "icon": "assets/images/all.png",
      "active_icon": "assets/images/all-fill.png",
      "text": "All",
    },
    {
      "icon": "assets/images/discount.png",
      "active_icon": "assets/images/discount-fill.png",
      "text": "Label",
    },
    {
      "icon": "assets/images/product.png",
      "active_icon": "assets/images/product-fill.png",
      "text": "OwO",
    },
  ];

  //当前页索引
  int _currentIndex = 0;

  //导航栏渲染
  List<BottomNavigationBarItem> _getTabBarWidge() {
    return List.generate(_tabList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabList[index]["active_icon"]!,
          width: 30,
          height: 30,
        ),
        label: _tabList[index]["text"],
      );
    });
  }

  //页面组件
  List<Widget> _getChildren() {
    return [HomeView(), AllView(), LabelView(), MyView()];
  }

  //main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _getChildren()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromRGBO(0, 0, 0, 1),
        unselectedItemColor: const Color.fromARGB(157, 110, 110, 110),
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: _currentIndex,
        items: _getTabBarWidge(),
      ),
    );
  }
}
