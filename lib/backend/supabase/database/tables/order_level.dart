import '../database.dart';

class OrderLevelTable extends SupabaseTable<OrderLevelRow> {
  @override
  String get tableName => 'order_level';

  @override
  OrderLevelRow createRow(Map<String, dynamic> data) => OrderLevelRow(data);
}

class OrderLevelRow extends SupabaseDataRow {
  OrderLevelRow(super.data);

  @override
  SupabaseTable get table => OrderLevelTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get invStatus => getField<String>('inv_status')!;
  set invStatus(String value) => setField<String>('inv_status', value);

  String get orderNo => getField<String>('order_no')!;
  set orderNo(String value) => setField<String>('order_no', value);

  String get flow => getField<String>('flow')!;
  set flow(String value) => setField<String>('flow', value);

  String get orderStatus => getField<String>('order_status')!;
  set orderStatus(String value) => setField<String>('order_status', value);

  String get admin => getField<String>('admin')!;
  set admin(String value) => setField<String>('admin', value);

  String get warehouse => getField<String>('warehouse')!;
  set warehouse(String value) => setField<String>('warehouse', value);

  DateTime get etaDate => getField<DateTime>('eta_date')!;
  set etaDate(DateTime value) => setField<DateTime>('eta_date', value);

  PostgresTime get etaI => getField<PostgresTime>('eta_i')!;
  set etaI(PostgresTime value) => setField<PostgresTime>('eta_i', value);

  PostgresTime get etaF => getField<PostgresTime>('eta_f')!;
  set etaF(PostgresTime value) => setField<PostgresTime>('eta_f', value);

  PostgresTime get arrival => getField<PostgresTime>('arrival')!;
  set arrival(PostgresTime value) => setField<PostgresTime>('arrival', value);

  String get loadingGate => getField<String>('loading_gate')!;
  set loadingGate(String value) => setField<String>('loading_gate', value);

  int get loadingSequence => getField<int>('loading_sequence')!;
  set loadingSequence(int value) => setField<int>('loading_sequence', value);

  PostgresTime get start => getField<PostgresTime>('start')!;
  set start(PostgresTime value) => setField<PostgresTime>('start', value);

  PostgresTime get stop => getField<PostgresTime>('stop')!;
  set stop(PostgresTime value) => setField<PostgresTime>('stop', value);

  String get licencePlate => getField<String>('licence_plate')!;
  set licencePlate(String value) => setField<String>('licence_plate', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  int get palletPosition => getField<int>('pallet_position')!;
  set palletPosition(int value) => setField<int>('pallet_position', value);

  int get unit => getField<int>('unit')!;
  set unit(int value) => setField<int>('unit', value);

  int get weight => getField<int>('weight')!;
  set weight(int value) => setField<int>('weight', value);

  String get containerNo => getField<String>('container_no')!;
  set containerNo(String value) => setField<String>('container_no', value);

  String get custom => getField<String>('custom')!;
  set custom(String value) => setField<String>('custom', value);

  String get responsible => getField<String>('responsible')!;
  set responsible(String value) => setField<String>('responsible', value);

  String get assistant1 => getField<String>('assistant1')!;
  set assistant1(String value) => setField<String>('assistant1', value);

  String get assistant2 => getField<String>('assistant2')!;
  set assistant2(String value) => setField<String>('assistant2', value);

  String get assistant3 => getField<String>('assistant3')!;
  set assistant3(String value) => setField<String>('assistant3', value);

  String get assistant4 => getField<String>('assistant4')!;
  set assistant4(String value) => setField<String>('assistant4', value);

  String get assistant5 => getField<String>('assistant5')!;
  set assistant5(String value) => setField<String>('assistant5', value);

  String get assistant6 => getField<String>('assistant6')!;
  set assistant6(String value) => setField<String>('assistant6', value);

  String get fmsRef => getField<String>('fms_ref')!;
  set fmsRef(String value) => setField<String>('fms_ref', value);

  String get loadRefDvh => getField<String>('load_ref_dvh')!;
  set loadRefDvh(String value) => setField<String>('load_ref_dvh', value);

  String get damageMark => getField<String>('damage_mark')!;
  set damageMark(String value) => setField<String>('damage_mark', value);

  String get universalRefNo => getField<String>('universal_ref_no')!;
  set universalRefNo(String value) =>
      setField<String>('universal_ref_no', value);

  String get comment => getField<String>('comment')!;
  set comment(String value) => setField<String>('comment', value);

  String get loadingType => getField<String>('loading_type')!;
  set loadingType(String value) => setField<String>('loading_type', value);

  String get loadingType2 => getField<String>('loading_type2')!;
  set loadingType2(String value) => setField<String>('loading_type2', value);

  String get document => getField<String>('document')!;
  set document(String value) => setField<String>('document', value);

  String get internalAccounting => getField<String>('internal_accounting')!;
  set internalAccounting(String value) =>
      setField<String>('internal_accounting', value);

  int get internalRefCustom => getField<int>('internal_ref_custom')!;
  set internalRefCustom(int value) =>
      setField<int>('internal_ref_custom', value);

  int get crono => getField<int>('crono')!;
  set crono(int value) => setField<int>('crono', value);

  String get client => getField<String>('client')!;
  set client(String value) => setField<String>('client', value);

  String get improvement => getField<String>('improvement')!;
  set improvement(String value) => setField<String>('improvement', value);

  String get otherManipulation => getField<String>('other_manipulation')!;
  set otherManipulation(String value) =>
      setField<String>('other_manipulation', value);

  String get good => getField<String>('good')!;
  set good(String value) => setField<String>('good', value);

  String get goodDescription => getField<String>('good_description')!;
  set goodDescription(String value) =>
      setField<String>('good_description', value);

  List<String> get barcodes => getListField<String>('barcodes');
  set barcodes(List<String> value) => setListField<String>('barcodes', value);

  String get packaging => getField<String>('packaging')!;
  set packaging(String value) => setField<String>('packaging', value);
}
