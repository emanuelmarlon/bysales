// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ItensStruct extends FFFirebaseStruct {
  ItensStruct({
    DocumentReference? referenciaProduto,
    int? quantidade,
    double? preco,
    double? desconto,
    double? total,
    String? descricao,
    int? numeroPedido,
    String? sku,
    DocumentReference? clienteRef,
    DocumentReference? pedidoRef,
    DocumentReference? empresaRef,
    DocumentReference? usuarioRef,
    DateTime? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _referenciaProduto = referenciaProduto,
        _quantidade = quantidade,
        _preco = preco,
        _desconto = desconto,
        _total = total,
        _descricao = descricao,
        _numeroPedido = numeroPedido,
        _sku = sku,
        _clienteRef = clienteRef,
        _pedidoRef = pedidoRef,
        _empresaRef = empresaRef,
        _usuarioRef = usuarioRef,
        _data = data,
        super(firestoreUtilData);

  // "referenciaProduto" field.
  DocumentReference? _referenciaProduto;
  DocumentReference? get referenciaProduto => _referenciaProduto;
  set referenciaProduto(DocumentReference? val) => _referenciaProduto = val;

  bool hasReferenciaProduto() => _referenciaProduto != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;

  void incrementPreco(double amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  set desconto(double? val) => _desconto = val;

  void incrementDesconto(double amount) => desconto = desconto + amount;

  bool hasDesconto() => _desconto != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  set numeroPedido(int? val) => _numeroPedido = val;

  void incrementNumeroPedido(int amount) =>
      numeroPedido = numeroPedido + amount;

  bool hasNumeroPedido() => _numeroPedido != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  set clienteRef(DocumentReference? val) => _clienteRef = val;

  bool hasClienteRef() => _clienteRef != null;

  // "pedidoRef" field.
  DocumentReference? _pedidoRef;
  DocumentReference? get pedidoRef => _pedidoRef;
  set pedidoRef(DocumentReference? val) => _pedidoRef = val;

  bool hasPedidoRef() => _pedidoRef != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  set empresaRef(DocumentReference? val) => _empresaRef = val;

  bool hasEmpresaRef() => _empresaRef != null;

  // "usuarioRef" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  set usuarioRef(DocumentReference? val) => _usuarioRef = val;

  bool hasUsuarioRef() => _usuarioRef != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  static ItensStruct fromMap(Map<String, dynamic> data) => ItensStruct(
        referenciaProduto: data['referenciaProduto'] as DocumentReference?,
        quantidade: castToType<int>(data['quantidade']),
        preco: castToType<double>(data['preco']),
        desconto: castToType<double>(data['desconto']),
        total: castToType<double>(data['total']),
        descricao: data['descricao'] as String?,
        numeroPedido: castToType<int>(data['numeroPedido']),
        sku: data['sku'] as String?,
        clienteRef: data['clienteRef'] as DocumentReference?,
        pedidoRef: data['pedidoRef'] as DocumentReference?,
        empresaRef: data['empresaRef'] as DocumentReference?,
        usuarioRef: data['usuarioRef'] as DocumentReference?,
        data: data['data'] as DateTime?,
      );

  static ItensStruct? maybeFromMap(dynamic data) =>
      data is Map ? ItensStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'referenciaProduto': _referenciaProduto,
        'quantidade': _quantidade,
        'preco': _preco,
        'desconto': _desconto,
        'total': _total,
        'descricao': _descricao,
        'numeroPedido': _numeroPedido,
        'sku': _sku,
        'clienteRef': _clienteRef,
        'pedidoRef': _pedidoRef,
        'empresaRef': _empresaRef,
        'usuarioRef': _usuarioRef,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referenciaProduto': serializeParam(
          _referenciaProduto,
          ParamType.DocumentReference,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'preco': serializeParam(
          _preco,
          ParamType.double,
        ),
        'desconto': serializeParam(
          _desconto,
          ParamType.double,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'numeroPedido': serializeParam(
          _numeroPedido,
          ParamType.int,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'clienteRef': serializeParam(
          _clienteRef,
          ParamType.DocumentReference,
        ),
        'pedidoRef': serializeParam(
          _pedidoRef,
          ParamType.DocumentReference,
        ),
        'empresaRef': serializeParam(
          _empresaRef,
          ParamType.DocumentReference,
        ),
        'usuarioRef': serializeParam(
          _usuarioRef,
          ParamType.DocumentReference,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ItensStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItensStruct(
        referenciaProduto: deserializeParam(
          data['referenciaProduto'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['produtos'],
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
          ParamType.double,
          false,
        ),
        desconto: deserializeParam(
          data['desconto'],
          ParamType.double,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        numeroPedido: deserializeParam(
          data['numeroPedido'],
          ParamType.int,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        clienteRef: deserializeParam(
          data['clienteRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clientes'],
        ),
        pedidoRef: deserializeParam(
          data['pedidoRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['pedidos'],
        ),
        empresaRef: deserializeParam(
          data['empresaRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['empresas'],
        ),
        usuarioRef: deserializeParam(
          data['usuarioRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ItensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItensStruct &&
        referenciaProduto == other.referenciaProduto &&
        quantidade == other.quantidade &&
        preco == other.preco &&
        desconto == other.desconto &&
        total == other.total &&
        descricao == other.descricao &&
        numeroPedido == other.numeroPedido &&
        sku == other.sku &&
        clienteRef == other.clienteRef &&
        pedidoRef == other.pedidoRef &&
        empresaRef == other.empresaRef &&
        usuarioRef == other.usuarioRef &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([
        referenciaProduto,
        quantidade,
        preco,
        desconto,
        total,
        descricao,
        numeroPedido,
        sku,
        clienteRef,
        pedidoRef,
        empresaRef,
        usuarioRef,
        data
      ]);
}

ItensStruct createItensStruct({
  DocumentReference? referenciaProduto,
  int? quantidade,
  double? preco,
  double? desconto,
  double? total,
  String? descricao,
  int? numeroPedido,
  String? sku,
  DocumentReference? clienteRef,
  DocumentReference? pedidoRef,
  DocumentReference? empresaRef,
  DocumentReference? usuarioRef,
  DateTime? data,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItensStruct(
      referenciaProduto: referenciaProduto,
      quantidade: quantidade,
      preco: preco,
      desconto: desconto,
      total: total,
      descricao: descricao,
      numeroPedido: numeroPedido,
      sku: sku,
      clienteRef: clienteRef,
      pedidoRef: pedidoRef,
      empresaRef: empresaRef,
      usuarioRef: usuarioRef,
      data: data,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItensStruct? updateItensStruct(
  ItensStruct? itens, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    itens
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItensStructData(
  Map<String, dynamic> firestoreData,
  ItensStruct? itens,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itens == null) {
    return;
  }
  if (itens.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && itens.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itensData = getItensFirestoreData(itens, forFieldValue);
  final nestedData = itensData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = itens.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItensFirestoreData(
  ItensStruct? itens, [
  bool forFieldValue = false,
]) {
  if (itens == null) {
    return {};
  }
  final firestoreData = mapToFirestore(itens.toMap());

  // Add any Firestore field values
  itens.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItensListFirestoreData(
  List<ItensStruct>? itenss,
) =>
    itenss?.map((e) => getItensFirestoreData(e, true)).toList() ?? [];
