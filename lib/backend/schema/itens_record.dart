import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensRecord extends FirestoreRecord {
  ItensRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "referenciaProduto" field.
  DocumentReference? _referenciaProduto;
  DocumentReference? get referenciaProduto => _referenciaProduto;
  bool hasReferenciaProduto() => _referenciaProduto != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  bool hasDesconto() => _desconto != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  bool hasNumeroPedido() => _numeroPedido != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  bool hasClienteRef() => _clienteRef != null;

  // "pedidoRef" field.
  DocumentReference? _pedidoRef;
  DocumentReference? get pedidoRef => _pedidoRef;
  bool hasPedidoRef() => _pedidoRef != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  bool hasEmpresaRef() => _empresaRef != null;

  // "usuarioRef" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  bool hasUsuarioRef() => _usuarioRef != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _referenciaProduto =
        snapshotData['referenciaProduto'] as DocumentReference?;
    _quantidade = castToType<int>(snapshotData['quantidade']);
    _preco = castToType<double>(snapshotData['preco']);
    _desconto = castToType<double>(snapshotData['desconto']);
    _total = castToType<double>(snapshotData['total']);
    _descricao = snapshotData['descricao'] as String?;
    _numeroPedido = castToType<int>(snapshotData['numeroPedido']);
    _sku = snapshotData['sku'] as String?;
    _clienteRef = snapshotData['clienteRef'] as DocumentReference?;
    _pedidoRef = snapshotData['pedidoRef'] as DocumentReference?;
    _empresaRef = snapshotData['empresaRef'] as DocumentReference?;
    _usuarioRef = snapshotData['usuarioRef'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('itens')
          : FirebaseFirestore.instance.collectionGroup('itens');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('itens').doc(id);

  static Stream<ItensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItensRecord.fromSnapshot(s));

  static Future<ItensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItensRecord.fromSnapshot(s));

  static ItensRecord fromSnapshot(DocumentSnapshot snapshot) => ItensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItensRecordData({
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'referenciaProduto': referenciaProduto,
      'quantidade': quantidade,
      'preco': preco,
      'desconto': desconto,
      'total': total,
      'descricao': descricao,
      'numeroPedido': numeroPedido,
      'sku': sku,
      'clienteRef': clienteRef,
      'pedidoRef': pedidoRef,
      'empresaRef': empresaRef,
      'usuarioRef': usuarioRef,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItensRecordDocumentEquality implements Equality<ItensRecord> {
  const ItensRecordDocumentEquality();

  @override
  bool equals(ItensRecord? e1, ItensRecord? e2) {
    return e1?.referenciaProduto == e2?.referenciaProduto &&
        e1?.quantidade == e2?.quantidade &&
        e1?.preco == e2?.preco &&
        e1?.desconto == e2?.desconto &&
        e1?.total == e2?.total &&
        e1?.descricao == e2?.descricao &&
        e1?.numeroPedido == e2?.numeroPedido &&
        e1?.sku == e2?.sku &&
        e1?.clienteRef == e2?.clienteRef &&
        e1?.pedidoRef == e2?.pedidoRef &&
        e1?.empresaRef == e2?.empresaRef &&
        e1?.usuarioRef == e2?.usuarioRef &&
        e1?.data == e2?.data;
  }

  @override
  int hash(ItensRecord? e) => const ListEquality().hash([
        e?.referenciaProduto,
        e?.quantidade,
        e?.preco,
        e?.desconto,
        e?.total,
        e?.descricao,
        e?.numeroPedido,
        e?.sku,
        e?.clienteRef,
        e?.pedidoRef,
        e?.empresaRef,
        e?.usuarioRef,
        e?.data
      ]);

  @override
  bool isValidKey(Object? o) => o is ItensRecord;
}
