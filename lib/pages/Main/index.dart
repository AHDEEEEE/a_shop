import 'package:a_shop/pages/Cart/index.dart';
import 'package:a_shop/pages/Category/index.dart';
import 'package:a_shop/pages/Home/index.dart';
import 'package:a_shop/pages/Mine/index.dart';
import 'package:flutter/material.dart';

//为什么导航图标不显示？
//因为BottomNavigationBarItem的icon和activeIcon属性需要接收Widget类型的参数，而不是Image类型的参数。
//所以，我们需要将Image.asset()包裹在一个Container()中，以确保它被正确渲染。
class MianPage extends StatefulWidget {
  MianPage({Key? key}) : super(key: key);

  @override
  _MianPageState createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  //
  final List<Map<String, String>> _tapList = [
    {
      "icon": "lib/assets/home2.png",
      "active_icon": "lib/assets/home.png",
      "label": "首页",
    },
    {
      "icon": "lib/assets/list2.png",
      "active_icon": "lib/assets/list.png",
      "label": "分类",
    },
    {
      "icon": "lib/assets/cart2.png",
      "active_icon": "lib/assets/cart.png",
      "label": "购物车",
    },
    {
      "icon": "lib/assets/profile.png",
      "active_icon": "lib/assets/profile2.png",
      "label": "我的",
    },
  ];
  //当前选中的索引
  int _currentIndex = 0;
  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tapList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tapList[index]["icon"]!, width: 24, height: 24),
        activeIcon: Image.asset(
          _tapList[index]["active_icon"]!,
          width: 24,
          height: 24,
        ),
        label: _tapList[index]["label"]!,
      );
    });
  }

List<Widget>_getChilden(){
  return[
    HomeView(),
    CategoryView(),
    CartView(),
    MineView(),
  ];
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getChilden(),
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _getTabBarWidget(),
        currentIndex: _currentIndex,
      ),
    );
  }
}
