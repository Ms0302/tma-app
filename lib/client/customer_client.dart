import 'package:uchka_ah/client/user_client.dart';
import 'package:uchka_ah/client/user_response.dart';

class CustomerClient extends UserClient{
  
  Future<UserResponse> ymarhuseltshaah() {
    final url = '$domain/news/list/page';
    return sendGetRequest(url: url, );
  }

  Future<UserResponse> postLoginHuseltShaah( String username,  String password) {
    final data = {
      'username': username,
      'password': password,
    };
    final url = '$domain/login';
    return sendPostRequest(url: url,data: data );
  }
}