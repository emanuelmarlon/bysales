import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SituacoesRecord extends FirestoreRecord {
  SituacoesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "cor" field.
  Color? _cor;
  Color? get cor => _cor;
  bool hasCor() => _cor != null;

  // "refPrincipal" field.
  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  bool hasRefPrincipal() => _refPrincipal != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _cor = getSchemaColor(snapshotData['cor']);
    _refPrincipal = snapshotData['refPrincipal'] as DocumentReference?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _ativo = snapshotData['ativo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('situacoes');

  static Stream<SituacoesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SituacoesRecord.fromSnapshot(s));

  static Future<SituacoesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SituacoesRecord.fromSnapshot(s));

  static SituacoesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SituacoesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SituacoesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SituacoesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SituacoesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SituacoesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSituacoesRecordData({
  String? nome,
  Color? cor,
  DocumentReference? refPrincipal,
  DocumentReference? empresa,
  bool? ativo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'cor': cor,
      'refPrincipal': refPrincipal,
      'empresa': empresa,
      'ativo': ativo,
    }.withoutNulls,
  );

  return firestoreData;
}

class SituacoesRecordDocumentEquality implements Equality<SituacoesRecord> {
  const SituacoesRecordDocumentEquality();

  @override
  bool equals(SituacoesRecord? e1, SituacoesRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.cor == e2?.cor &&
        e1?.refPrincipal == e2?.refPrincipal &&
        e1?.empresa == e2?.empresa &&
        e1?.ativo == e2?.ativo;
  }

  @override
  int hash(SituacoesRecord? e) => const ListEquality()
      .hash([e?.nome, e?.cor, e?.refPrincipal, e?.empresa, e?.ativo]);

  @override
  bool isValidKey(Object? o) => o is SituacoesRecord;
}
