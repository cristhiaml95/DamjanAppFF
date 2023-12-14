import '../database.dart';

class DetailsViewTable extends SupabaseTable<DetailsViewRow> {
  @override
  String get tableName => 'details_view';

  @override
  DetailsViewRow createRow(Map<String, dynamic> data) => DetailsViewRow(data);
}

class DetailsViewRow extends SupabaseDataRow {
  DetailsViewRow(super.data);

  @override
  SupabaseTable get table => DetailsViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get good => getField<String>('good');
  set good(String? value) => setField<String>('good', value);

  String? get goodDescription => getField<String>('good_description');
  set goodDescription(String? value) =>
      setField<String>('good_description', value);

  String? get packaging => getField<String>('packaging');
  set packaging(String? value) => setField<String>('packaging', value);

  String? get warehousePosition => getField<String>('warehouse_position');
  set warehousePosition(String? value) =>
      setField<String>('warehouse_position', value);

  String? get barcode => getField<String>('barcode');
  set barcode(String? value) => setField<String>('barcode', value);

  String? get item => getField<String>('item');
  set item(String? value) => setField<String>('item', value);

  String? get opisBlaga => getField<String>('opis_blaga');
  set opisBlaga(String? value) => setField<String>('opis_blaga', value);

  String? get packagingDescription => getField<String>('packaging_description');
  set packagingDescription(String? value) =>
      setField<String>('packaging_description', value);

  String? get warehousePositionName =>
      getField<String>('warehouse_position_name');
  set warehousePositionName(String? value) =>
      setField<String>('warehouse_position_name', value);

  String? get warehouse => getField<String>('warehouse');
  set warehouse(String? value) => setField<String>('warehouse', value);
}
