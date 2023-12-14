import '../database.dart';

class ViewOrderSummaryTable extends SupabaseTable<ViewOrderSummaryRow> {
  @override
  String get tableName => 'view_order_summary';

  @override
  ViewOrderSummaryRow createRow(Map<String, dynamic> data) =>
      ViewOrderSummaryRow(data);
}

class ViewOrderSummaryRow extends SupabaseDataRow {
  ViewOrderSummaryRow(super.data);

  @override
  SupabaseTable get table => ViewOrderSummaryTable();

  DateTime? get datetasks => getField<DateTime>('datetasks');
  set datetasks(DateTime? value) => setField<DateTime>('datetasks', value);

  List<String> get tasks => getListField<String>('tasks');
  set tasks(List<String>? value) => setListField<String>('tasks', value);
}
