import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      '{\"id\":\"\",\"correo\":\"\",\"nombres\":\"\",\"apellidos\":\"\",\"actividad\":\"\",\"cargo\":\"\",\"password\":\"\",\"tipo_usuario\":\"\",\"imagen\":\"\"}'));
  SupabaseRowStruct get userRow => _userRow;
  set userRow(SupabaseRowStruct _value) {
    _userRow = _value;
  }

  void updateUserRowStruct(Function(SupabaseRowStruct) updateFn) {
    updateFn(_userRow);
  }

  List<String> _orderList = [];
  List<String> get orderList => _orderList;
  set orderList(List<String> _value) {
    _orderList = _value;
  }

  void addToOrderList(String _value) {
    _orderList.add(_value);
  }

  void removeFromOrderList(String _value) {
    _orderList.remove(_value);
  }

  void removeAtIndexFromOrderList(int _index) {
    _orderList.removeAt(_index);
  }

  void updateOrderListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _orderList[_index] = updateFn(_orderList[_index]);
  }

  void insertAtIndexInOrderList(int _index, String _value) {
    _orderList.insert(_index, _value);
  }

  String _wordInListColor = '#157AE8';
  String get wordInListColor => _wordInListColor;
  set wordInListColor(String _value) {
    _wordInListColor = _value;
  }

  bool _addCodeBar = false;
  bool get addCodeBar => _addCodeBar;
  set addCodeBar(bool _value) {
    _addCodeBar = _value;
  }

  String _addCodeBarColor = '#1E2428';
  String get addCodeBarColor => _addCodeBarColor;
  set addCodeBarColor(String _value) {
    _addCodeBarColor = _value;
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
