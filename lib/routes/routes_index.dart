import 'package:flutter/material.dart';
import 'package:nutridiary/pages/Main/main_index.dart';
import 'package:nutridiary/pages/login/login_index.dart';

// 返回App根组件
Widget getRootWidget() {
  return MaterialApp(initialRoute: "/", routes: getRootRoutes());
}

//返回路由配置
Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    "/Login": (context) => LoginPage(),
    "/": (context) => MainPage(), //主页
  };
}
