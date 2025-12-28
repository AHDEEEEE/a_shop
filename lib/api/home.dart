//封装一个api，目的是返回业务侧需要的数据结构
import 'package:a_shop/constants/index.dart';
import 'package:a_shop/utils/DioRequest.dart';
import 'package:a_shop/viewmodels/Home.dart';

Future<List<BannerItem>> getBannerListAPI() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List).map((
    item,
    ){
      return BannerItem.formJSON(item as Map<String,dynamic>);
      }).toList();
}
