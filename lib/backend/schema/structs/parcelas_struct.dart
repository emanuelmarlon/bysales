// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ParcelasStruct extends FFFirebaseStruct {
  ParcelasStruct({
    DocumentReference? pedidoRef,
    DocumentReference? clienteRef,
    int? numeroPedido,
    int? numeroParcela,
    DateTime? dataVencimento,
    DateTime? data,
    double? valor,
    String? status,
    String? tipo,
    DocumentReference? empresaRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pedidoRef = pedidoRef,
        _clienteRef = clienteRef,
        _numeroPedido = numeroPedido,
        _numeroParcela = numeroParcela,
        _dataVencimento = dataVencimento,
        _data = data,
        _valor = valor,
        _status = status,
        _tipo = tipo,
        _empresaRef = empresaRef,
        super(firestoreUtilData);

  // "pedidoRef" field.
  DocumentReference? _pedidoRef;
  DocumentReference? get pedidoRef => _pedidoRef;
  set pedidoRef(DocumentReference? val) => _pedidoRef = val;

  bool hasPedidoRef() => _pedidoRef != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  set clienteRef(DocumentReference? val) => _clienteRef = val;

  bool hasClienteRef() => _clienteRef != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  set numeroPedido(int? val) => _numeroPedido = val;

  void incrementNumeroPedido(int amount) =>
      numeroPedido = numeroPedido + amount;

  bool hasNumeroPedido() => _numeroPedido != null;

  // "numeroParcela" field.
  int? _numeroParcela;
  int get numeroParcela => _numeroParcela ?? 0;
  set numeroParcela(int? val) => _numeroParcela = val;

  void incrementNumeroParcela(int amount) =>
      numeroParcela = numeroParcela + amount;

  bool hasNumeroParcela() => _numeroParcela != null;

  // "dataVencimento" field.
  DateTime? _dataVencimento;
  DateTime? get dataVencimento => _dataVencimento;
  set dataVencimento(DateTime? val) => _dataVencimento = val;

  bool hasDataVencimento() => _dataVencimento != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  set empresaRef(DocumentReference? val) => _empresaRef = val;

  bool hasEmpresaRef() => _empresaRef != null;

  static ParcelasStruct fromMap(Map<String, dynamic> data) => ParcelasStruct(
        pedidoRef: data['pedidoRef'] as DocumentReference?,
        clienteRef: data['clienteRef'] as DocumentReference?,
        numeroPedido: castToType<int>(data['numeroPedido']),
        numeroParcela: castToType<int>(data['numeroParcela']),
        dataVencimento: data['dataVencimento'] as DateTime?,
        data: data['data'] as DateTime?,
        valor: castToType<double>(data['valor']),
        status: data['status'] as String?,
        tipo: data['tipo'] as String?,
        empresaRef: data['empresaRef'] as DocumentReference?,
      );

  static ParcelasStruct? maybeFromMap(dynamic data) =>
      data is Map ? ParcelasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'pedidoRef': _pedidoRef,
        'clienteRef': _clienteRef,
        'numeroPedido': _numeroPedido,
        'numeroParcela': _numeroParcela,
        'dataVencimento': _dataVencimento,
        'data': _data,
        'valor': _valor,
        'status': _status,
        'tipo': _tipo,
        'empresaRef': _empresaRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pedidoRef': serializeParam(
          _pedidoRef,
          ParamType.DocumentReference,
        ),
        'clienteRef': serializeParam(
          _clienteRef,
          ParamType.DocumentReference,
        ),
        'numeroPedido': serializeParam(
          _numeroPedido,
          ParamType.int,
        ),
        'numeroParcela': serializeParam(
          _numeroParcela,
          ParamType.int,
        ),
        'dataVencimento': serializeParam(
          _dataVencimento,
          ParamType.DateTime,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'empresaRef': serializeParam(
          _empresaRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ParcelasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParcelasStruct(
        pedidoRef: deserializeParam(
          data['pedidoRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['pedidos'],
        ),
        clienteRef: deserializeParam(
          data['clienteRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clientes'],
        ),
        numeroPedido: deserializeParam(
          data['numeroPedido'],
          ParamType.int,
          false,
        ),
        numeroParcela: deserializeParam(
          data['numeroParcela'],
          ParamType.int,
          false,
        ),
        dataVencimento: deserializeParam(
          data['dataVencimento'],
          ParamType.DateTime,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        empresaRef: deserializeParam(
          data['empresaRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['empresas'],
        ),
      );

  @override
  String toString() => 'ParcelasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParcelasStruct &&
        pedidoRef == other.pedidoRef &&
        clienteRef == other.clienteRef &&
        numeroPedido == other.numeroPedido &&
        numeroParcela == other.numeroParcela &&
        dataVencimento == other.dataVencimento &&
        data == other.data &&
        valor == other.valor &&
        status == other.status &&
        tipo == other.tipo &&
        empresaRef == other.empresaRef;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pedidoRef,
        clienteRef,
        numeroPedido,
        numeroParcela,
        dataVencimento,
        data,
        valor,
        status,
        tipo,
        empresaRef
      ]);
}

ParcelasStruct createParcelasStruct({
  DocumentReference? pedidoRef,
  DocumentReference? clienteRef,
  int? numeroPedido,
  int? numeroParcela,
  DateTime? dataVencimento,
  DateTime? data,
  double? valor,
  String? status,
  String? tipo,
  DocumentReference? empresaRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParcelasStruct(
      pedidoRef: pedidoRef,
      clienteRef: clienteRef,
      numeroPedido: numeroPedido,
      numeroParcela: numeroParcela,
      dataVencimento: dataVencimento,
      data: data,
      valor: valor,
      status: status,
      tipo: tipo,
      empresaRef: empresaRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParcelasStruct? updateParcelasStruct(
  ParcelasStruct? parcelas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    parcelas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParcelasStructData(
  Map<String, dynamic> firestoreData,
  ParcelasStruct? parcelas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (parcelas == null) {
    return;
  }
  if (parcelas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && parcelas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final parcelasData = getParcelasFirestoreData(parcelas, forFieldValue);
  final nestedData = parcelasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = parcelas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParcelasFirestoreData(
  ParcelasStruct? parcelas, [
  bool forFieldValue = false,
]) {
  if (parcelas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(parcelas.toMap());

  // Add any Firestore field values
  parcelas.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParcelasListFirestoreData(
  List<ParcelasStruct>? parcelass,
) =>
    parcelass?.map((e) => getParcelasFirestoreData(e, true)).toList() ?? [];
