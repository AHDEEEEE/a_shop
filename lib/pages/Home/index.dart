import 'package:a_shop/components/Home/AdCategory.dart';
import 'package:a_shop/components/Home/AdHot.dart';
import 'package:a_shop/components/Home/AdMoreList.dart';
import 'package:a_shop/components/Home/Adslider.dart';
import 'package:flutter/widgets.dart';

import '../../components/Home/AdSuggestion.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildern() {
    return [
      SliverToBoxAdapter(child: AdSlider()),
      //添加间距组件
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      //添加热门商品组件
      SliverToBoxAdapter(child: AdCategory()),
      // SliverToBoxAdapter(child: SizedBox(height: 10)),
      //添加推荐商品组件
      SliverToBoxAdapter(child: AdSuggestion()),
      //添加间距组件
      // SliverToBoxAdapter(child: SizedBox(height: 10)),
      //添加热门商品组件
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: AdHot()),
              SizedBox(width: 10),
              Expanded(child: AdHot()),
            ],
          ),
        ),
      ),
      //添加更多商品组件
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      AdMoreList(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChildern());
  }
}
