import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  //https://dummyjson.com/products
  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://dummyjson.com/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    // required Map<String, dynamic> query,
  }) async {
    return await dio.get(
      url,
      // queryParameters: query,
    );
  }
}
