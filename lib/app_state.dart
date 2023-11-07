import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  SupabaseRowStruct _userRow = SupabaseRowStruct.fromSerializableMap(jsonDecode(
      '{"id":"","correo":"","nombres":"","apellidos":"","actividad":"","cargo":"","password":"","tipo_usuario":"","imagen":""}'));
  SupabaseRowStruct get userRow => _userRow;
  set userRow(SupabaseRowStruct value) {
    _userRow = value;
  }

  void updateUserRowStruct(Function(SupabaseRowStruct) updateFn) {
    updateFn(_userRow);
  }

  List<String> _orderList = [];
  List<String> get orderList => _orderList;
  set orderList(List<String> value) {
    _orderList = value;
  }

  void addToOrderList(String value) {
    _orderList.add(value);
  }

  void removeFromOrderList(String value) {
    _orderList.remove(value);
  }

  void removeAtIndexFromOrderList(int index) {
    _orderList.removeAt(index);
  }

  void updateOrderListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _orderList[index] = updateFn(_orderList[index]);
  }

  void insertAtIndexInOrderList(int index, String value) {
    _orderList.insert(index, value);
  }

  String _wordInListColor = '#157AE8';
  String get wordInListColor => _wordInListColor;
  set wordInListColor(String value) {
    _wordInListColor = value;
  }

  bool _addCodeBar = false;
  bool get addCodeBar => _addCodeBar;
  set addCodeBar(bool value) {
    _addCodeBar = value;
  }

  String _addCodeBarColor = '#1E2428';
  String get addCodeBarColor => _addCodeBarColor;
  set addCodeBarColor(String value) {
    _addCodeBarColor = value;
  }

  List<String> _multipleBarCodesList = ['No results'];
  List<String> get multipleBarCodesList => _multipleBarCodesList;
  set multipleBarCodesList(List<String> value) {
    _multipleBarCodesList = value;
  }

  void addToMultipleBarCodesList(String value) {
    _multipleBarCodesList.add(value);
  }

  void removeFromMultipleBarCodesList(String value) {
    _multipleBarCodesList.remove(value);
  }

  void removeAtIndexFromMultipleBarCodesList(int index) {
    _multipleBarCodesList.removeAt(index);
  }

  void updateMultipleBarCodesListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _multipleBarCodesList[index] = updateFn(_multipleBarCodesList[index]);
  }

  void insertAtIndexInMultipleBarCodesList(int index, String value) {
    _multipleBarCodesList.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
