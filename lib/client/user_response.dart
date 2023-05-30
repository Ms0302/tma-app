import 'package:g_json/g_json.dart';

class UserResponse {
  String code = '0';
  String status = '0';
  String message = '';
  late JSON data;
  late JSON json;

  bool get isSuccess {
    if (code.isNotEmpty) {
      return code.substring(0, 1) == '0';
    }
    return status.isEmpty;
  }

  void fromJSON(JSON json) {
    code = json['code'].stringValue;
    status = json['status'].stringValue;
    message = json['msg'].stringValue;
    data = json['data'];
    this.json = json;
  }

  void withError(String text) {
    code = "999";
    message = text;
    data = JSON.nil;
    json = JSON.nil;
  }
}
