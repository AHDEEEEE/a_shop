/*
    1. 定义全局常量类GlobalConstants，用于存放全局常量数据。
    2. 包含基础地址、超时时间、业务状态成功码等常量。
*/
class GlobalConstants{
  static const String BASE_URL = "https://meikou-api.itheima.net";   // 基础地址
  static const int TIME_OUT = 10;    // 超时时间
  static const String SUCCESS_CODE = "1";
}
/*
    1. 定义HTTP常量类HttpConstants，用于存放HTTP请求相关的常量。
    2. 包含广告轮播图接口路径等常量。
 */
class HttpConstants{
  static const String BANNER_LIST = "/home/banner";
}