import 'package:dio/dio.dart';
import 'package:FLUTTER_MOBILE_APPLICATION/constant/constant.dart';

class UserProvider {
  final dio = new Dio();
  Future<Response> registerUser(Map body) async {
    try {
      final url = RESTAPI + "/api/v1/auth/signup";
      var res = await dio.post(url, data: body);
      print(res);
      return res;
    } on DioError catch (e) {
      print(e);
      return e.error;
    }
    // return res;
  }
}
