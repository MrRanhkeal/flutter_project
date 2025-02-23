//dynamic api
abstract class BaseApiService {
  Future<dynamic> apiPost(String url, {dynamic requsetBody});
  // Future<dynamic> authenticate(String url, {dynamic requsetBody});
  // Future<dynamic> postApiWithToken(String url, {dynamic requsetBody});
}
