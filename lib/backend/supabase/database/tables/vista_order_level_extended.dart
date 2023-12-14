import '../database.dart';

class VistaOrderLevelExtendedTable
    extends SupabaseTable<VistaOrderLevelExtendedRow> {
  @override
  String get tableName => 'vista_order_level_extended';

  @override
  VistaOrderLevelExtendedRow createRow(Map<String, dynamic> data) =>
      VistaOrderLevelExtendedRow(data);
}

class VistaOrderLevelExtendedRow extends SupabaseDataRow {
  VistaOrderLevelExtendedRow(super.data);

  @override
  SupabaseTable get table => VistaOrderLevelExtendedTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get invStatus => getField<String>('inv_status');
  set invStatus(String? value) => setField<String>('inv_status', value);

  String? get orderNo => getField<String>('order_no');
  set orderNo(String? value) => setField<String>('order_no', value);

  String? get flow => getField<String>('flow');
  set flow(String? value) => setField<String>('flow', value);

  String? get orderStatus => getField<String>('order_status');
  set orderStatus(String? value) => setField<String>('order_status', value);

  String? get admin => getField<String>('admin');
  set admin(String? value) => setField<String>('admin', value);

  String? get warehouse => getField<String>('warehouse');
  set warehouse(String? value) => setField<String>('warehouse', value);

  DateTime? get etaDate => getField<DateTime>('eta_date');
  set etaDate(DateTime? value) => setField<DateTime>('eta_date', value);

  PostgresTime? get etaI => getField<PostgresTime>('eta_i');
  set etaI(PostgresTime? value) => setField<PostgresTime>('eta_i', value);

  PostgresTime? get etaF => getField<PostgresTime>('eta_f');
  set etaF(PostgresTime? value) => setField<PostgresTime>('eta_f', value);

  PostgresTime? get arrival => getField<PostgresTime>('arrival');
  set arrival(PostgresTime? value) => setField<PostgresTime>('arrival', value);

  String? get loadingGate => getField<String>('loading_gate');
  set loadingGate(String? value) => setField<String>('loading_gate', value);

  int? get loadingSequence => getField<int>('loading_sequence');
  set loadingSequence(int? value) => setField<int>('loading_sequence', value);

  PostgresTime? get start => getField<PostgresTime>('start');
  set start(PostgresTime? value) => setField<PostgresTime>('start', value);

  PostgresTime? get stop => getField<PostgresTime>('stop');
  set stop(PostgresTime? value) => setField<PostgresTime>('stop', value);

  String? get licencePlate => getField<String>('licence_plate');
  set licencePlate(String? value) => setField<String>('licence_plate', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int? get palletPosition => getField<int>('pallet_position');
  set palletPosition(int? value) => setField<int>('pallet_position', value);

  int? get unit => getField<int>('unit');
  set unit(int? value) => setField<int>('unit', value);

  int? get weight => getField<int>('weight');
  set weight(int? value) => setField<int>('weight', value);

  String? get containerNo => getField<String>('container_no');
  set containerNo(String? value) => setField<String>('container_no', value);

  String? get improvement => getField<String>('improvement');
  set improvement(String? value) => setField<String>('improvement', value);

  String? get custom => getField<String>('custom');
  set custom(String? value) => setField<String>('custom', value);

  String? get responsible => getField<String>('responsible');
  set responsible(String? value) => setField<String>('responsible', value);

  String? get assistant1 => getField<String>('assistant1');
  set assistant1(String? value) => setField<String>('assistant1', value);

  String? get assistant2 => getField<String>('assistant2');
  set assistant2(String? value) => setField<String>('assistant2', value);

  String? get assistant3 => getField<String>('assistant3');
  set assistant3(String? value) => setField<String>('assistant3', value);

  String? get assistant4 => getField<String>('assistant4');
  set assistant4(String? value) => setField<String>('assistant4', value);

  String? get assistant5 => getField<String>('assistant5');
  set assistant5(String? value) => setField<String>('assistant5', value);

  String? get assistant6 => getField<String>('assistant6');
  set assistant6(String? value) => setField<String>('assistant6', value);

  String? get fmsRef => getField<String>('fms_ref');
  set fmsRef(String? value) => setField<String>('fms_ref', value);

  String? get loadRefDvh => getField<String>('load_ref_dvh');
  set loadRefDvh(String? value) => setField<String>('load_ref_dvh', value);

  String? get damageMark => getField<String>('damage_mark');
  set damageMark(String? value) => setField<String>('damage_mark', value);

  String? get universalRefNo => getField<String>('universal_ref_no');
  set universalRefNo(String? value) =>
      setField<String>('universal_ref_no', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get otherManipulation => getField<String>('other_manipulation');
  set otherManipulation(String? value) =>
      setField<String>('other_manipulation', value);

  String? get loadingType => getField<String>('loading_type');
  set loadingType(String? value) => setField<String>('loading_type', value);

  String? get loadingType2 => getField<String>('loading_type2');
  set loadingType2(String? value) => setField<String>('loading_type2', value);

  String? get document => getField<String>('document');
  set document(String? value) => setField<String>('document', value);

  String? get internalAccounting => getField<String>('internal_accounting');
  set internalAccounting(String? value) =>
      setField<String>('internal_accounting', value);

  int? get internalRefCustom => getField<int>('internal_ref_custom');
  set internalRefCustom(int? value) =>
      setField<int>('internal_ref_custom', value);

  int? get crono => getField<int>('crono');
  set crono(int? value) => setField<int>('crono', value);

  String? get client => getField<String>('client');
  set client(String? value) => setField<String>('client', value);

  String? get adminName => getField<String>('admin_name');
  set adminName(String? value) => setField<String>('admin_name', value);

  String? get adminLastName => getField<String>('admin_last_name');
  set adminLastName(String? value) =>
      setField<String>('admin_last_name', value);

  String? get adminUserType => getField<String>('admin_user_type');
  set adminUserType(String? value) =>
      setField<String>('admin_user_type', value);

  String? get adminImage => getField<String>('admin_image');
  set adminImage(String? value) => setField<String>('admin_image', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientCity => getField<String>('client_city');
  set clientCity(String? value) => setField<String>('client_city', value);

  String? get clientCountry => getField<String>('client_country');
  set clientCountry(String? value) => setField<String>('client_country', value);

  String? get warehouseName => getField<String>('warehouse_name');
  set warehouseName(String? value) => setField<String>('warehouse_name', value);

  String? get loadingGateRamp => getField<String>('loading_gate_ramp');
  set loadingGateRamp(String? value) =>
      setField<String>('loading_gate_ramp', value);

  String? get customName => getField<String>('custom_name');
  set customName(String? value) => setField<String>('custom_name', value);

  String? get responsibleName => getField<String>('responsible_name');
  set responsibleName(String? value) =>
      setField<String>('responsible_name', value);

  String? get responsibleLastName => getField<String>('responsible_last_name');
  set responsibleLastName(String? value) =>
      setField<String>('responsible_last_name', value);

  String? get assistant1Name => getField<String>('assistant1_name');
  set assistant1Name(String? value) =>
      setField<String>('assistant1_name', value);

  String? get assistant1LastName => getField<String>('assistant1_last_name');
  set assistant1LastName(String? value) =>
      setField<String>('assistant1_last_name', value);

  String? get assistant2Name => getField<String>('assistant2_name');
  set assistant2Name(String? value) =>
      setField<String>('assistant2_name', value);

  String? get assistant2LastName => getField<String>('assistant2_last_name');
  set assistant2LastName(String? value) =>
      setField<String>('assistant2_last_name', value);

  String? get assistant3Name => getField<String>('assistant3_name');
  set assistant3Name(String? value) =>
      setField<String>('assistant3_name', value);

  String? get assistant3LastName => getField<String>('assistant3_last_name');
  set assistant3LastName(String? value) =>
      setField<String>('assistant3_last_name', value);

  String? get assistant4Name => getField<String>('assistant4_name');
  set assistant4Name(String? value) =>
      setField<String>('assistant4_name', value);

  String? get assistant4LastName => getField<String>('assistant4_last_name');
  set assistant4LastName(String? value) =>
      setField<String>('assistant4_last_name', value);

  String? get assistant5Name => getField<String>('assistant5_name');
  set assistant5Name(String? value) =>
      setField<String>('assistant5_name', value);

  String? get assistant5LastName => getField<String>('assistant5_last_name');
  set assistant5LastName(String? value) =>
      setField<String>('assistant5_last_name', value);

  String? get assistant6Name => getField<String>('assistant6_name');
  set assistant6Name(String? value) =>
      setField<String>('assistant6_name', value);

  String? get assistant6LastName => getField<String>('assistant6_last_name');
  set assistant6LastName(String? value) =>
      setField<String>('assistant6_last_name', value);
}
