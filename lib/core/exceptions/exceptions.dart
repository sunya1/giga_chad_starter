import 'package:giga_chad_starter/core/exceptions/failures.dart';

sealed class RemoteException extends Failure {
  final Object? errorData;

  const RemoteException({
    super.errorMsg,
    super.errorDescription,
    super.errorCode,
    super.exception,
    required this.errorData,
  });
}

class MultipleBusinessExceptions extends RemoteException {
  final Iterable<CustomBackendException>? exceptions;

  const MultipleBusinessExceptions({this.exceptions, super.errorData});
}

class ServerResponseException extends RemoteException {
  const ServerResponseException({
    super.errorMsg,
    super.errorDescription,
    super.errorCode,
    super.exception,
    super.errorData,
  });
}

class NegativeStatusCode extends RemoteException {
  const NegativeStatusCode({required super.errorData});
}

class ClientResponseException extends RemoteException {
  const ClientResponseException({
    super.errorMsg,
    super.errorDescription,
    super.errorCode,
    super.exception,
    super.errorData,
  });
}

final class ConnectionException extends RemoteException {
  const ConnectionException({
    super.errorData,
    super.errorCode,
    super.exception,
  });
}

class CacheException extends Failure {}

class NetworkConnectionException extends RemoteException {
  const NetworkConnectionException({super.errorData});
}

class AuthException extends RemoteException {
  const AuthException({super.errorData});
}

class InconsistentParametersException extends RemoteException {
  const InconsistentParametersException({super.errorData});
}

class ServerUnavailableException extends RemoteException {
  const ServerUnavailableException({super.exception, super.errorData});
}

class LocalCacheException extends Failure {
  final StackTrace? stackTrace;

  const LocalCacheException({
    super.errorMsg,
    this.stackTrace,
  });
}

class LocalCacheNotFoundException extends LocalCacheException {
  const LocalCacheNotFoundException({
    super.errorMsg,
    super.stackTrace,
  });
}

class NotFoundServerException extends RemoteException {
  const NotFoundServerException({
    super.errorMsg,
    super.errorData,
  });
}

/// [CustomBackendException] custom new backend exceptions
class CustomBackendException extends RemoteException {
  const CustomBackendException({
    super.errorData,
    super.errorMsg,
    super.errorDescription,
  });
}

final class InternalException extends CustomBackendException {
  const InternalException({
    super.errorData,
    super.errorMsg,
    super.errorDescription,
  });
}

final class ForbiddenException extends CustomBackendException {
  const ForbiddenException({
    super.errorData,
    super.errorMsg,
    super.errorDescription,
  });
}

final class BusinessException extends CustomBackendException {
  const BusinessException({
    super.errorData,
    super.errorMsg,
    super.errorDescription,
  });
}

final class RevokeTokenException extends RemoteException {
  const RevokeTokenException({
     super.errorData,
    super.errorMsg,
  });
}
