import 'package:flutter/material.dart';
import 'package:a_shop/pages/Login/index.dart';
import 'package:a_shop/pages/Main/index.dart';


//返回App根级组件，提供给runApp()
Widget getRouteWidget() {
  return MaterialApp(
    routes:getRoutes(),
  );
}

//这里是路由表，定义了路由名称和路由组件之间的映射关系
Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) => MianPage(),   //首页路由
    "/login": (context) => LoginPage(),    //登录路由
  };
}