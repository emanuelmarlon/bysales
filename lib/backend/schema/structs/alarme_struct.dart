// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlarmeStruct extends BaseStruct {
  AlarmeStruct({
    DateTime? data,
    String? titulo,
    String? mensagem,
    bool? vibrar,
    double? volume,
    bool? loop,
    int? id,
  })  : _data = data,
        _titulo = titulo,
        _mensagem = mensagem,
        _vibrar = vibrar,
        _volume = volume,
        _loop = loop,
        _id = id;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "mensagem" field.
  String? _mensagem;
  String get mensagem => _mensagem ?? '';
  set mensagem(String? val) => _mensagem = val;

  bool hasMensagem() => _mensagem != null;

  // "vibrar" field.
  bool? _vibrar;
  bool get vibrar => _vibrar ?? false;
  set vibrar(bool? val) => _vibrar = val;

  bool hasVibrar() => _vibrar != null;

  // "volume" field.
  double? _volume;
  double get volume => _volume ?? 0.0;
  set volume(double? val) => _volume = val;

  void incrementVolume(double amount) => volume = volume + amount;

  bool hasVolume() => _volume != null;

  // "loop" field.
  bool? _loop;
  bool get loop => _loop ?? false;
  set loop(bool? val) => _loop = val;

  bool hasLoop() => _loop != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static AlarmeStruct fromMap(Map<String, dynamic> data) => AlarmeStruct(
        data: data['data'] as DateTime?,
        titulo: data['titulo'] as String?,
        mensagem: data['mensagem'] as String?,
        vibrar: data['vibrar'] as bool?,
        volume: castToType<double>(data['volume']),
        loop: data['loop'] as bool?,
        id: castToType<int>(data['id']),
      );

  static AlarmeStruct? maybeFromMap(dynamic data) =>
      data is Map ? AlarmeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data,
        'titulo': _titulo,
        'mensagem': _mensagem,
        'vibrar': _vibrar,
        'volume': _volume,
        'loop': _loop,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'mensagem': serializeParam(
          _mensagem,
          ParamType.String,
        ),
        'vibrar': serializeParam(
          _vibrar,
          ParamType.bool,
        ),
        'volume': serializeParam(
          _volume,
          ParamType.double,
        ),
        'loop': serializeParam(
          _loop,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static AlarmeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlarmeStruct(
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        mensagem: deserializeParam(
          data['mensagem'],
          ParamType.String,
          false,
        ),
        vibrar: deserializeParam(
          data['vibrar'],
          ParamType.bool,
          false,
        ),
        volume: deserializeParam(
          data['volume'],
          ParamType.double,
          false,
        ),
        loop: deserializeParam(
          data['loop'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AlarmeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AlarmeStruct &&
        data == other.data &&
        titulo == other.titulo &&
        mensagem == other.mensagem &&
        vibrar == other.vibrar &&
        volume == other.volume &&
        loop == other.loop &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([data, titulo, mensagem, vibrar, volume, loop, id]);
}

AlarmeStruct createAlarmeStruct({
  DateTime? data,
  String? titulo,
  String? mensagem,
  bool? vibrar,
  double? volume,
  bool? loop,
  int? id,
}) =>
    AlarmeStruct(
      data: data,
      titulo: titulo,
      mensagem: mensagem,
      vibrar: vibrar,
      volume: volume,
      loop: loop,
      id: id,
    );
