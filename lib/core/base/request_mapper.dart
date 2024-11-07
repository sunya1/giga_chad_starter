
import 'package:giga_chad_starter/core/base/base_request_model.dart';
import 'package:giga_chad_starter/core/base/dto.dart';

abstract class RequestMapper<D extends Dto, R extends BaseRequestModel> {
  const RequestMapper();

  D mapToDto(R request);
}
