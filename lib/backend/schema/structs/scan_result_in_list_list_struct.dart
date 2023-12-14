// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScanResultInListListStruct extends BaseStruct {
  ScanResultInListListStruct({
    String? scanResult,
    bool? inList,
  })  : _scanResult = scanResult,
        _inList = inList;

  // "scanResult" field.
  String? _scanResult;
  String get scanResult => _scanResult ?? '';
  set scanResult(String? val) => _scanResult = val;
  bool hasScanResult() => _scanResult != null;

  // "inList" field.
  bool? _inList;
  bool get inList => _inList ?? false;
  set inList(bool? val) => _inList = val;
  bool hasInList() => _inList != null;

  static ScanResultInListListStruct fromMap(Map<String, dynamic> data) =>
      ScanResultInListListStruct(
        scanResult: data['scanResult'] as String?,
        inList: data['inList'] as bool?,
      );

  static ScanResultInListListStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ScanResultInListListStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'scanResult': _scanResult,
        'inList': _inList,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'scanResult': serializeParam(
          _scanResult,
          ParamType.String,
        ),
        'inList': serializeParam(
          _inList,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ScanResultInListListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ScanResultInListListStruct(
        scanResult: deserializeParam(
          data['scanResult'],
          ParamType.String,
          false,
        ),
        inList: deserializeParam(
          data['inList'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ScanResultInListListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScanResultInListListStruct &&
        scanResult == other.scanResult &&
        inList == other.inList;
  }

  @override
  int get hashCode => const ListEquality().hash([scanResult, inList]);
}

ScanResultInListListStruct createScanResultInListListStruct({
  String? scanResult,
  bool? inList,
}) =>
    ScanResultInListListStruct(
      scanResult: scanResult,
      inList: inList,
    );
