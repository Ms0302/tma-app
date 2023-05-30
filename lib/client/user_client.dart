import 'package:dio/dio.dart';
import 'package:g_json/g_json.dart';

import 'user_response.dart';

class UserClient {
  final domain = 'domainaa shaagaarai';

  Future<UserResponse> sendGetRequest({
    required String url,
  }) async {
    try {
      final dio = Dio();
      Response response = await dio.get(url);
      return getResponse(response);
    } on DioError catch (error) {
      return getErrorResponse(error);
    }
  }

  Future<UserResponse> sendPostRequest({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      Response response = await Dio().post(url, data: data);
      return getResponse(response);
    } on DioError catch (error) {
      return getErrorResponse(error);
    }
  }

  UserResponse getResponse(Response serverResponse) {
    print("********** ");
    print("********** ");
    print(
        "********** request url ----------> ${serverResponse.requestOptions.uri}");
    print(
        "********** request headers ----------> ${serverResponse.requestOptions.headers}");
    print(
        "********** request data ----------> ${serverResponse.requestOptions.data}");
    print(
        "********** response status ----------> ${serverResponse.statusCode}");
    print("********** response data ----------> ${serverResponse.data}");

    final _value = UserResponse();
    _value.fromJSON(JSON(serverResponse.data));
    return _value;
  }

  UserResponse getErrorResponse(DioError error) {
    final response = error.response;
    if (response != null) {
      print("********** ");
      print("********** ");
      print("********** ");
      print(
          "********** request url ----------> ${response.requestOptions.uri}");
      print(
          "********** request headers ----------> ${response.requestOptions.headers}");
      print(
          "********** request data ----------> ${response.requestOptions.data}");
      print("********** response status ----------> ${response.statusCode}");
      print("********** response data ----------> ${response.data}");
    }

    final _value = UserResponse();

    switch (error.type) {
      case DioErrorType.connectionTimeout:
        _value.withError('Сервертэй холбогдоход алдаа гарлаа');
        break;
      case DioErrorType.connectionError:
        _value.withError('Сервертэй холбогдоход алдаа гарлаа');
        break;
      case DioErrorType.receiveTimeout:
        _value.withError('Хүсэл хүлээж авахад алдаа гарлаа');
        break;
      case DioErrorType.sendTimeout:
        _value.withError('Хүсэлт илгээхэд алдаа гарлаа');
        break;
      case DioErrorType.badResponse:
        final data = error.response?.data;
        if (data is Map<String, dynamic>) {
          _value.code = error.response!.statusCode.toString();
          _value.message = JSON(data)['message'].stringValue;
        } else if (data is String) {
          _value.message = data;
        }
        _value.json = JSON.nil;
        _value.data = JSON.nil;
        break;
      case DioErrorType.cancel:
        _value.withError('Хүсэлт цуцлагдлаа');
        break;
      case DioErrorType.unknown:
        _value.withError('Интернэт холболтоо шалгана уу');
        break;
      case DioErrorType.badCertificate:
        _value.withError('Интернэт холболтоо шалгана уу');
        break;
    }

    return _value;
  }
}
