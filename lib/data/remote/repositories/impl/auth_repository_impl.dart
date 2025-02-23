import 'package:flutter_project/data/remote/api/api.dart';
import 'package:flutter_project/data/remote/models/request/Register_request.dart';
import 'package:flutter_project/data/remote/models/response/Base_body_response.dart';
import 'package:flutter_project/data/remote/repositories/auth_repository.dart';
import 'package:flutter_project/data/remote/services/base_api_service.dart';
import 'package:flutter_project/data/remote/services/base_api_service_impl.dart';

class AuthRepositoryImpl extends AuthRepository {
  final BaseApiService baseApiService = BaseApiServiceImpl();

  @override
  Future<BaseBodyResponse> register(RegisterRequest req) {
    var response =
        baseApiService.apiPost(Api.registerPath, requsetBody: req.toJson());
        BaseBodyResponse baseBodyResponse = BaseBodyResponse.fromJson(response);

    throw UnimplementedError();
  }
}
