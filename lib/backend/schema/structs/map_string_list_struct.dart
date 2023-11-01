// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapStringListStruct extends BaseStruct {
  MapStringListStruct({
    String? file,
    List<String>? order,
  })  : _file = file,
        _order = order;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  set file(String? val) => _file = val;
  bool hasFile() => _file != null;

  // "order" field.
  List<String>? _order;
  List<String> get order => _order ?? const [];
  set order(List<String>? val) => _order = val;
  void updateOrder(Function(List<String>) updateFn) => updateFn(_order ??= []);
  bool hasOrder() => _order != null;

  static MapStringListStruct fromMap(Map<String, dynamic> data) =>
      MapStringListStruct(
        file: data['file'] as String?,
        order: getDataList(data['order']),
      );

  static MapStringListStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MapStringListStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'file': _file,
        'order': _order,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'file': serializeParam(
          _file,
          ParamType.String,
        ),
        'order': serializeParam(
          _order,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static MapStringListStruct fromSerializableMap(Map<String, dynamic> data) =>
      MapStringListStruct(
        file: deserializeParam(
          data['file'],
          ParamType.String,
          false,
        ),
        order: deserializeParam<String>(
          data['order'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MapStringListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MapStringListStruct &&
        file == other.file &&
        listEquality.equals(order, other.order);
  }

  @override
  int get hashCode => const ListEquality().hash([file, order]);
}

MapStringListStruct createMapStringListStruct({
  String? file,
}) =>
    MapStringListStruct(
      file: file,
    );
