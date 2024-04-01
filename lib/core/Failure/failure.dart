import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessege;

  Failure({required this.errorMessege});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessege});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessege: 'Connection time  with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessege: 'Send time  with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessege: 'Receive time  with api server');

      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessege: 'Bad certificate with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessege: 'Request to api server was cancelled');

      case DioExceptionType.connectionError:
        ServerFailure(errorMessege: 'Connection Error to api server');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(errorMessege: 'No Internet Connection');
        }
      default:
        return ServerFailure(errorMessege: 'Unexpected Error');
    }
    return ServerFailure(errorMessege: 'Oops There was an Error');
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessege: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessege: "your request not found  ,please try again later");
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessege: "internal  server error ,please try again later");
    } else {
      return ServerFailure(errorMessege: 'Oops There was an error , try later');
    }
  }
}
