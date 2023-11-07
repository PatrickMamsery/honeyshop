import 'package:dio/dio.dart';

class ApiClient {
  _dio() {
    return Dio(BaseOptions(headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    }));
  }

  String baseUrl = "http://localhost:8000/api";
  void get(
      {required Function() beforeSend,
      required Function(dynamic data) onSuccess,
      required Function(dynamic data) onError,
      required String url}) async {
    beforeSend();
    try {
      print("step 3");
      var res = await _dio().get(baseUrl + url);
      print(res);
      onSuccess(res.data);
    } catch (e) {
      print(e);
      onError(e);
    }
  }

  void post({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic data) onError,
    required String url,
    required dynamic data,
  }) async {
    try {
      var res = await _dio().post(baseUrl + url, data: data);
      print(res);
      onSuccess(res.data);
    } catch (e) {
      print("DIO_POST_ERROR:_" + e.toString());
    }
  }
}
