import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormaPagamentoRecord extends FirestoreRecord {
  FormaPagamentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "empresaRef" field.
  DocumentReference? _empresaRef;
  DocumentReference? get empresaRef => _empresaRef;
  bool hasEmpresaRef() => _empresaRef != null;

  // "usuarioRef" field.
  DocumentReference? _usuarioRef;
  DocumentReference? get usuarioRef => _usuarioRef;
  bool hasUsuarioRef() => _usuarioRef != null;

  // "refPrincipal" field.
  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  bool hasRefPrincipal() => _refPrincipal != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _empresaRef = snapshotData['empresaRef'] as DocumentReference?;
    _usuarioRef = snapshotData['usuarioRef'] as DocumentReference?;
    _refPrincipal = snapshotData['refPrincipal'] as DocumentReference?;
    _data = snapshotData['data'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formaPagamento');

  static Stream<FormaPagamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormaPagamentoRecord.fromSnapshot(s));

  static Future<FormaPagamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormaPagamentoRecord.fromSnapshot(s));

  static FormaPagamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormaPagamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormaPagamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormaPagamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormaPagamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormaPagamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormaPagamentoRecordData({
  String? nome,
  DocumentReference? empresaRef,
  DocumentReference? usuarioRef,
  DocumentReference? refPrincipal,
  DateTime? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'empresaRef': empresaRef,
      'usuarioRef': usuarioRef,
      'refPrincipal': refPrincipal,
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormaPagamentoRecordDocumentEquality
    implements Equality<FormaPagamentoRecord> {
  const FormaPagamentoRecordDocumentEquality();

  @override
  bool equals(FormaPagamentoRecord? e1, FormaPagamentoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.empresaRef == e2?.empresaRef &&
        e1?.usuarioRef == e2?.usuarioRef &&
        e1?.refPrincipal == e2?.refPrincipal &&
        e1?.data == e2?.data;
  }

  @override
  int hash(FormaPagamentoRecord? e) => const ListEquality()
      .hash([e?.nome, e?.empresaRef, e?.usuarioRef, e?.refPrincipal, e?.data]);

  @override
  bool isValidKey(Object? o) => o is FormaPagamentoRecord;
}
