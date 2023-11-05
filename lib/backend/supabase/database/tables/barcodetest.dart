import '../database.dart';

class BarcodetestTable extends SupabaseTable<BarcodetestRow> {
  @override
  String get tableName => 'barcodetest';

  @override
  BarcodetestRow createRow(Map<String, dynamic> data) => BarcodetestRow(data);
}

class BarcodetestRow extends SupabaseDataRow {
  BarcodetestRow(super.data);

  @override
  SupabaseTable get table => BarcodetestTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get barcode1 => getField<String>('barcode1')!;
  set barcode1(String value) => setField<String>('barcode1', value);

  String get barcode2 => getField<String>('barcode2')!;
  set barcode2(String value) => setField<String>('barcode2', value);

  String get barcode3 => getField<String>('barcode3')!;
  set barcode3(String value) => setField<String>('barcode3', value);
}
