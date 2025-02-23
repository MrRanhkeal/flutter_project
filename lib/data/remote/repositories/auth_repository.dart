import 'package:flutter_project/data/remote/models/request/Register_request.dart';
import 'package:flutter_project/data/remote/models/response/Base_body_response.dart';

abstract class AuthRepository {
  Future<BaseBodyResponse> register(RegisterRequest req);
}