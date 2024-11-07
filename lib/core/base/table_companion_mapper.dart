
import 'package:giga_chad_starter/core/base/dto.dart';

abstract class TableCompanionMapper<DTO extends Dto, T> {
  const TableCompanionMapper();

  T mapToCompanion(DTO dto);
}

// List of DTOs to List of Table Companion Mapper
abstract class ListTableCompanionMapper<DTO extends Dto, T>
    extends TableCompanionMapper<DTO, T> {
  const ListTableCompanionMapper();

  List<T> mapDtoListToCompanionList(List<DTO> dtos) {
    return dtos.map((dto) => mapToCompanion(dto)).toList(growable: false);
  }
}
