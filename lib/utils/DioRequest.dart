//基于Dio进行二次封装，用于发送HTTP请求。

import 'package:a_shop/constants/index.dart';
import 'package:dio/dio.dart';

class DioRequest {
  final _dio = Dio(); // dio请求对象
  //基础地址拦截器
  DioRequest() {
    _dio.options
      ..baseUrl = GlobalConstants.BASE_URL                             // 基础地址
      ..connectTimeout =Duration(seconds: GlobalConstants.TIME_OUT)    // 连接超时时间,
      ..sendTimeout =Duration(seconds: GlobalConstants.TIME_OUT)       // 发送超时时间
      ..receiveTimeout = Duration(seconds: GlobalConstants.TIME_OUT);  // 接收超时时间
    //拦截器
    _addInterceptor();
  }

  //添加拦截器
  void _addInterceptor() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handle) {
          handle.next(request);
        },
        onResponse: (response, handle) {
          if(response.statusCode! >= 200 && response.statusCode! < 300){
            handle.next(response);
            return ;
          }
          handle.reject(DioException(requestOptions: response.requestOptions));
        },
        onError: (error, handle) {
          handle.next(error);
        },
      ),
    );
  }
  //GET请求
  Future<dynamic> get(String url, {Map<String, dynamic>? params})async{
    return _handleResponse(_dio.get(url,queryParameters: params));
  }
  //进一步处理返回结果的数据
  Future<dynamic> _handleResponse(Future<Response<dynamic>> task)async{
    try{
    Response<dynamic> res = await task;
    final data = res.data as Map<String,dynamic>;
    if(data['code'] == GlobalConstants.SUCCESS_CODE){
      return data['result'];    // 返回成功数据
    }
    // 其他情况则抛出异常
    throw Exception(data["msg"]??"加载数据异常");
  } catch (e) {
    throw Exception(e);
  }}
}

//单例对象
final dioRequest = DioRequest();    // 单例对象
