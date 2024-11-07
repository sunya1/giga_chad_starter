import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  final String? errorMsg;
  final String? errorDescription;
  final String? errorCode;
  final Exception? exception;

  const Failure({
    this.errorMsg,
    this.errorDescription,
    this.errorCode,
    this.exception,
  });

  @override
  List<Object?> get props => [errorMsg, errorDescription, errorCode, exception];
}

class ServerResponseFailure extends Failure {
  const ServerResponseFailure({
    super.errorMsg,
    super.errorDescription,
    super.exception,
  });
}

class AuthFailure extends Failure {
  const AuthFailure();
}

class NetworkFailure extends Failure {
  const NetworkFailure()
      : super(
            errorMsg: 'Network Connection Failed',
            errorDescription: 'Check Your Network Connection');
}

class UnexpectedFailure extends Failure {
  const UnexpectedFailure({
    super.exception,
  }) : super(
          errorMsg: 'Something went wrong!!',
        );
}

class RegistrationResponseFailure extends Failure {
  const RegistrationResponseFailure({super.errorMsg});
}

class ModificationResponseFailure extends Failure {
  const ModificationResponseFailure({super.errorMsg});
}

class BiometricsFailure extends Failure {
  const BiometricsFailure({super.errorMsg, super.errorDescription});
}

class ServerUnavailableFailure extends Failure {
  const ServerUnavailableFailure({super.errorMsg});
}

class UnsuccessfulResponseFailure extends Failure {
  const UnsuccessfulResponseFailure({super.errorMsg});
}
