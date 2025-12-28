import 'package:a_shop/api/home.dart';
import 'package:a_shop/components/Home/AdCategory.dart';
import 'package:a_shop/components/Home/AdHot.dart';
import 'package:a_shop/components/Home/AdMoreList.dart';
import 'package:a_shop/components/Home/Adslider.dart';
import 'package:a_shop/viewmodels/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../components/Home/AdSuggestion.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<BannerItem> _bannerList = [
    // BannerItem(
    //   id: "1",
    //   imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg",
    // ),
    // BannerItem(
    //   id: "2",
    //   imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/2.png",
    // ),
    // BannerItem(
    //   id: "3",
    //   imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/3.jpg",
    // ),
  ];
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/2.png
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/3.jpg

  List<Widget> _getScrollChildern() {
    return [
      SliverToBoxAdapter(child: AdSlider(bannerList: _bannerList)),
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
  void initState() { 
    super.initState();
    _getBannerList();
    
  }

  void _getBannerList() async {
    _bannerList = await getBannerListAPI();
    setState(() {});
    }
  

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChildern());
  }
}


