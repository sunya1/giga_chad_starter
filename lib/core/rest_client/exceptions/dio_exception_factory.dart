import 'dart:io';

import 'package:giga_chad_starter/core/exceptions/exceptions.dart';
import 'package:giga_chad_starter/core/rest_client/exceptions/http_status_code_type.dart';
import 'package:giga_chad_starter/core/rest_client/hcb_rest_client.dart';

class DioExceptionFactory {
  RemoteException fromDioException(DioException exception) {
    if (exception.type == DioExceptionType.connectionError ||
        exception.type == DioExceptionType.sendTimeout ||
        exception.type == DioExceptionType.receiveTimeout) {
      return ConnectionException(
        exception: exception,
        errorCode: exception.response?.statusCode.toString(),
      );
    }

    if (exception.response?.statusCode != null) {
      final statusCode = exception.response?.statusCode;
      return fromStatusCode(statusCode!, exception: exception);
    }

    return ServerResponseException(
      errorMsg:'Server Connection Error',
      exception: exception,
    );
  }

  RemoteException fromStatusCode(int statusCode, {Exception? exception}) {
    final statusType = HttpStatusCode.fromCode(statusCode).type;

    if(statusCode == -1) {
      return NegativeStatusCode(errorData: exception);
    }

    if (statusCode == HttpStatus.unauthorized) {
      return const AuthException();
    }

    if (statusCode == 404) {
      return NotFoundServerException(
        errorMsg: 'Something went wrong',
        errorData: exception,
      );
    }

    if (statusType == HttpStatusCodeType.serverError) {
      return const InternalException();
    }

    return ServerResponseException(
      errorMsg: 'Something went wrong',
      errorData: exception,
    );
  }
}
