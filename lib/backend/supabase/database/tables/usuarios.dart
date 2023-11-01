import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);

  String get nombres => getField<String>('nombres')!;
  set nombres(String value) => setField<String>('nombres', value);

  String get apellidos => getField<String>('apellidos')!;
  set apellidos(String value) => setField<String>('apellidos', value);

  String get tipoUsuario => getField<String>('tipo_usuario')!;
  set tipoUsuario(String value) => setField<String>('tipo_usuario', value);

  String get actividad => getField<String>('actividad')!;
  set actividad(String value) => setField<String>('actividad', value);

  String get cargo => getField<String>('cargo')!;
  set cargo(String value) => setField<String>('cargo', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  String get imagen => getField<String>('imagen')!;
  set imagen(String value) => setField<String>('imagen', value);
}
