import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParcelasRecord extends FirestoreRecord {
  ParcelasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "pedidoRef" field.
  DocumentReference? _pedidoRef;
  DocumentReference? get pedidoRef => _pedidoRef;
  bool hasPedidoRef() => _pedidoRef != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  bool hasClienteRef() => _clienteRef != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  bool hasNumeroPedido() => _numeroPedido != null;

  // "numeroParcela" field.
  int? _numeroParcela;
  int get numeroParcela => _numeroParcela ?? 0;
  bool hasNumeroParcela() => _numeroParcela != null;

  // "dataVencimento" field.
  DateTime? _dataVencimento;
  DateTime? get dataVencimento => _dataVencimento;
  bool hasDataVencimento() => _dataVencimento != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  bool hasEmpresaRef() => _empresaRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _pedidoRef = snapshotData['pedidoRef'] as DocumentReference?;
    _clienteRef = snapshotData['clienteRef'] as DocumentReference?;
    _numeroPedido = castToType<int>(snapshotData['numeroPedido']);
    _numeroParcela = castToType<int>(snapshotData['numeroParcela']);
    _dataVencimento = snapshotData['dataVencimento'] as DateTime?;
    _data = snapshotData['data'] as DateTime?;
    _valor = castToType<double>(snapshotData['valor']);
    _status = snapshotData['status'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _empresaRef = snapshotData['empresaRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('parcelas')
          : FirebaseFirestore.instance.collectionGroup('parcelas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('parcelas').doc(id);

  static Stream<ParcelasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParcelasRecord.fromSnapshot(s));

  static Future<ParcelasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParcelasRecord.fromSnapshot(s));

  static ParcelasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParcelasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParcelasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParcelasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParcelasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParcelasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParcelasRecordData({
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pedidoRef': pedidoRef,
      'clienteRef': clienteRef,
      'numeroPedido': numeroPedido,
      'numeroParcela': numeroParcela,
      'dataVencimento': dataVencimento,
      'data': data,
      'valor': valor,
      'status': status,
      'tipo': tipo,
      'empresaRef': empresaRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParcelasRecordDocumentEquality implements Equality<ParcelasRecord> {
  const ParcelasRecordDocumentEquality();

  @override
  bool equals(ParcelasRecord? e1, ParcelasRecord? e2) {
    return e1?.pedidoRef == e2?.pedidoRef &&
        e1?.clienteRef == e2?.clienteRef &&
        e1?.numeroPedido == e2?.numeroPedido &&
        e1?.numeroParcela == e2?.numeroParcela &&
        e1?.dataVencimento == e2?.dataVencimento &&
        e1?.data == e2?.data &&
        e1?.valor == e2?.valor &&
        e1?.status == e2?.status &&
        e1?.tipo == e2?.tipo &&
        e1?.empresaRef == e2?.empresaRef;
  }

  @override
  int hash(ParcelasRecord? e) => const ListEquality().hash([
        e?.pedidoRef,
        e?.clienteRef,
        e?.numeroPedido,
        e?.numeroParcela,
        e?.dataVencimento,
        e?.data,
        e?.valor,
        e?.status,
        e?.tipo,
        e?.empresaRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ParcelasRecord;
}
