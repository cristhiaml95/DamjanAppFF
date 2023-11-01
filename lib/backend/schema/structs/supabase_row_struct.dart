// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupabaseRowStruct extends BaseStruct {
  SupabaseRowStruct({
    String? id,
    DateTime? createAt,
    String? correo,
    String? nombres,
    String? apellidos,
    String? actividad,
    String? cargo,
    String? password,
    String? tipoUsuario,
    String? imagen,
  })  : _id = id,
        _createAt = createAt,
        _correo = correo,
        _nombres = nombres,
        _apellidos = apellidos,
        _actividad = actividad,
        _cargo = cargo,
        _password = password,
        _tipoUsuario = tipoUsuario,
        _imagen = imagen;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "create_at" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  set createAt(DateTime? val) => _createAt = val;
  bool hasCreateAt() => _createAt != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  set correo(String? val) => _correo = val;
  bool hasCorreo() => _correo != null;

  // "nombres" field.
  String? _nombres;
  String get nombres => _nombres ?? '';
  set nombres(String? val) => _nombres = val;
  bool hasNombres() => _nombres != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  set apellidos(String? val) => _apellidos = val;
  bool hasApellidos() => _apellidos != null;

  // "actividad" field.
  String? _actividad;
  String get actividad => _actividad ?? '';
  set actividad(String? val) => _actividad = val;
  bool hasActividad() => _actividad != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  set cargo(String? val) => _cargo = val;
  bool hasCargo() => _cargo != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "tipo_usuario" field.
  String? _tipoUsuario;
  String get tipoUsuario => _tipoUsuario ?? '';
  set tipoUsuario(String? val) => _tipoUsuario = val;
  bool hasTipoUsuario() => _tipoUsuario != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;
  bool hasImagen() => _imagen != null;

  static SupabaseRowStruct fromMap(Map<String, dynamic> data) =>
      SupabaseRowStruct(
        id: data['id'] as String?,
        createAt: data['create_at'] as DateTime?,
        correo: data['correo'] as String?,
        nombres: data['nombres'] as String?,
        apellidos: data['apellidos'] as String?,
        actividad: data['actividad'] as String?,
        cargo: data['cargo'] as String?,
        password: data['password'] as String?,
        tipoUsuario: data['tipo_usuario'] as String?,
        imagen: data['imagen'] as String?,
      );

  static SupabaseRowStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SupabaseRowStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'create_at': _createAt,
        'correo': _correo,
        'nombres': _nombres,
        'apellidos': _apellidos,
        'actividad': _actividad,
        'cargo': _cargo,
        'password': _password,
        'tipo_usuario': _tipoUsuario,
        'imagen': _imagen,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'create_at': serializeParam(
          _createAt,
          ParamType.DateTime,
        ),
        'correo': serializeParam(
          _correo,
          ParamType.String,
        ),
        'nombres': serializeParam(
          _nombres,
          ParamType.String,
        ),
        'apellidos': serializeParam(
          _apellidos,
          ParamType.String,
        ),
        'actividad': serializeParam(
          _actividad,
          ParamType.String,
        ),
        'cargo': serializeParam(
          _cargo,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'tipo_usuario': serializeParam(
          _tipoUsuario,
          ParamType.String,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
      }.withoutNulls;

  static SupabaseRowStruct fromSerializableMap(Map<String, dynamic> data) =>
      SupabaseRowStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createAt: deserializeParam(
          data['create_at'],
          ParamType.DateTime,
          false,
        ),
        correo: deserializeParam(
          data['correo'],
          ParamType.String,
          false,
        ),
        nombres: deserializeParam(
          data['nombres'],
          ParamType.String,
          false,
        ),
        apellidos: deserializeParam(
          data['apellidos'],
          ParamType.String,
          false,
        ),
        actividad: deserializeParam(
          data['actividad'],
          ParamType.String,
          false,
        ),
        cargo: deserializeParam(
          data['cargo'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        tipoUsuario: deserializeParam(
          data['tipo_usuario'],
          ParamType.String,
          false,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SupabaseRowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SupabaseRowStruct &&
        id == other.id &&
        createAt == other.createAt &&
        correo == other.correo &&
        nombres == other.nombres &&
        apellidos == other.apellidos &&
        actividad == other.actividad &&
        cargo == other.cargo &&
        password == other.password &&
        tipoUsuario == other.tipoUsuario &&
        imagen == other.imagen;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createAt,
        correo,
        nombres,
        apellidos,
        actividad,
        cargo,
        password,
        tipoUsuario,
        imagen
      ]);
}

SupabaseRowStruct createSupabaseRowStruct({
  String? id,
  DateTime? createAt,
  String? correo,
  String? nombres,
  String? apellidos,
  String? actividad,
  String? cargo,
  String? password,
  String? tipoUsuario,
  String? imagen,
}) =>
    SupabaseRowStruct(
      id: id,
      createAt: createAt,
      correo: correo,
      nombres: nombres,
      apellidos: apellidos,
      actividad: actividad,
      cargo: cargo,
      password: password,
      tipoUsuario: tipoUsuario,
      imagen: imagen,
    );
