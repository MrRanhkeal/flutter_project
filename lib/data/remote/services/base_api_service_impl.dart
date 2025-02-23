import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_project/exceptions/app_exception.dart';

import 'base_api_service.dart';
import 'package:http/http.dart' as http;

class BaseApiServiceImpl implements BaseApiService {
  var header = {"Content-Type": "application/json"};
  @override
  Future apiPost(String url, {requsetBody}) async {
    dynamic responseBody;
    if (kDebugMode) {
      //print("Request url ${url}\n");
      print("Response Body $responseBody");
    }
    try {
      var response = await http
          .put(
            headers: header,
            Uri.parse(url),
            body: jsonEncode(requsetBody),
          )
          .timeout(
            const Duration(seconds: 120),
          );
      switch (response.statusCode) {
        case 200:
          responseBody = jsonDecode(response.body);
          break;
        case 401:
          throw UnAuthorization("UnAuthorization");
        case 404:
          throw InvalidUrlException("Not Found");
        case 500:
          throw InternalServerException("Internal Server Error");
      }
    } catch (e) {
      print("InternalServerException {$e}");
      throw InternalServerException(e.toString());
    }
    if (kDebugMode) {
      print("Response Body $responseBody");
    }
    return responseBody;
    // TODO: implement apiPost
    //throw UnimplementedError();
  }

  // @override
  // Future authenticate(String url, {requsetBody}) {
  //   // TODO: implement authenticate
  //   throw UnimplementedError();
  // }

  // @override
  // Future postApiWithToken(String url, {requsetBody}) {
  //   // TODO: implement postApiWithToken
  //   throw UnimplementedError();
  // }
}
