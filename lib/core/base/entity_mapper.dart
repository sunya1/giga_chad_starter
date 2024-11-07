// ignore_for_file: always_use_package_imports


import 'package:giga_chad_starter/core/base/entity.dart';

abstract class EntityMapper<DTO, E extends Entity> {
  const EntityMapper();

  E mapToEntity(DTO dto);
}

// List of DTOs to List of Entities Mapper
abstract class ListEntityMapper<DTO, E extends Entity>
    extends EntityMapper<DTO, E> {
  const ListEntityMapper();

  List<E> mapDtoListToEntityList(List<DTO> dtos) {
    return dtos.map((dto) => mapToEntity(dto)).toList(growable: false);
  }
}
