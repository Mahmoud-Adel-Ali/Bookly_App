//
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorFailure;

  const Failure(this.errorFailure);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorFailure);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioErrorType.receiveTimeout:
        return ServerFailure('SenReceive timeout with ApiServer');
      case DioErrorType.badCertificate:
        return ServerFailure(
            "Opps there was an error , Please try again later");
      case DioErrorType.badResponse:
        return ServerFailure.fromRespons(
            dioError.response!.statusCode!, dioError.response?.data);
      case DioErrorType.cancel:
        return ServerFailure('Requste to ApiServer was canceled');
      case DioErrorType.connectionError:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure('No internet connectioon');
        }
        return ServerFailure('Unexpected error , please try again later');
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure('No internet connectioon');
        }
        return ServerFailure('Unexpected error , please try again later !');
      default:
        return ServerFailure(
            "Opps there was an error , Please try again later");
    }
  }
  factory ServerFailure.fromRespons(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , Please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server failure , Please try again later');
    } else {
      return ServerFailure("Opps there was an error , Please try again later");
    }
  }
}
