
import 'package:giga_chad_starter/core/base/dto.dart';

abstract class RemoteMapper<R> {
  const RemoteMapper();
  R mapToData(Object? result);
}

abstract class ListDtoMapper<D extends Dto> extends RemoteMapper<List<D>> {
  const ListDtoMapper();
  @override
  List<D> mapToData(Object? result) {
    if (result is! List<Object?>) {
      throw ArgumentError.value(
        result,
        'result'
        'Expected a List<Object?>, but got ${result.runtimeType}',
      );
    }

    return result.map((e) {
      final notNullE = ArgumentError.checkNotNull(e);
      return mapDtoToData(notNullE as Map<String, Object?>);
    }).toList(growable: false);
  }

  D mapDtoToData(Map<String, Object?> result);
}
