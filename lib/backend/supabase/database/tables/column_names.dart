import '../database.dart';

class ColumnNamesTable extends SupabaseTable<ColumnNamesRow> {
  @override
  String get tableName => 'column_names';

  @override
  ColumnNamesRow createRow(Map<String, dynamic> data) => ColumnNamesRow(data);
}

class ColumnNamesRow extends SupabaseDataRow {
  ColumnNamesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ColumnNamesTable();

  String? get columnName => getField<String>('column_name');
  set columnName(String? value) => setField<String>('column_name', value);
}
