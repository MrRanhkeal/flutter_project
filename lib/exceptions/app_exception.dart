class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class NoInternetConnectionException  extends AppException {
  NoInternetConnectionException ([String? message]) : super(message, "No Internetion: ");
}

class InternalServerException  extends AppException {
  InternalServerException ([String? message]) : super(message, "Internal Server Error: ");
}

class RequestTimeOutException  extends AppException {
  RequestTimeOutException ([String? message]) : super(message, "Connection to server timeout: ");
}

class InvalidUrlException  extends AppException {
  InvalidUrlException ([String? message]) : super(message, "Invalid url: ");
}

class UnAuthorization  extends AppException {
  UnAuthorization ([String? message]) : super(message, "UnAuthorization: ");
}