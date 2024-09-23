import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "comissao" field.
  double? _comissao;
  double get comissao => _comissao ?? 0.0;
  bool hasComissao() => _comissao != null;

  // "gerente" field.
  bool? _gerente;
  bool get gerente => _gerente ?? false;
  bool hasGerente() => _gerente != null;

  // "representante" field.
  double? _representante;
  double get representante => _representante ?? 0.0;
  bool hasRepresentante() => _representante != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "empresas" field.
  DocumentReference? _empresas;
  DocumentReference? get empresas => _empresas;
  bool hasEmpresas() => _empresas != null;

  // "refPrincipal" field.
  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  bool hasRefPrincipal() => _refPrincipal != null;

  // "master" field.
  bool? _master;
  bool get master => _master ?? false;
  bool hasMaster() => _master != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "dataCadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "corLogo" field.
  Color? _corLogo;
  Color? get corLogo => _corLogo;
  bool hasCorLogo() => _corLogo != null;

  // "modo" field.
  String? _modo;
  String get modo => _modo ?? '';
  bool hasModo() => _modo != null;

  // "nomeEmpresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "vencimento" field.
  DateTime? _vencimento;
  DateTime? get vencimento => _vencimento;
  bool hasVencimento() => _vencimento != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _comissao = castToType<double>(snapshotData['comissao']);
    _gerente = snapshotData['gerente'] as bool?;
    _representante = castToType<double>(snapshotData['representante']);
    _id = snapshotData['id'] as String?;
    _empresas = snapshotData['empresas'] as DocumentReference?;
    _refPrincipal = snapshotData['refPrincipal'] as DocumentReference?;
    _master = snapshotData['master'] as bool?;
    _ativo = snapshotData['ativo'] as bool?;
    _dataCadastro = snapshotData['dataCadastro'] as DateTime?;
    _corLogo = getSchemaColor(snapshotData['corLogo']);
    _modo = snapshotData['modo'] as String?;
    _nomeEmpresa = snapshotData['nomeEmpresa'] as String?;
    _vencimento = snapshotData['vencimento'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  double? comissao,
  bool? gerente,
  double? representante,
  String? id,
  DocumentReference? empresas,
  DocumentReference? refPrincipal,
  bool? master,
  bool? ativo,
  DateTime? dataCadastro,
  Color? corLogo,
  String? modo,
  String? nomeEmpresa,
  DateTime? vencimento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'comissao': comissao,
      'gerente': gerente,
      'representante': representante,
      'id': id,
      'empresas': empresas,
      'refPrincipal': refPrincipal,
      'master': master,
      'ativo': ativo,
      'dataCadastro': dataCadastro,
      'corLogo': corLogo,
      'modo': modo,
      'nomeEmpresa': nomeEmpresa,
      'vencimento': vencimento,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.comissao == e2?.comissao &&
        e1?.gerente == e2?.gerente &&
        e1?.representante == e2?.representante &&
        e1?.id == e2?.id &&
        e1?.empresas == e2?.empresas &&
        e1?.refPrincipal == e2?.refPrincipal &&
        e1?.master == e2?.master &&
        e1?.ativo == e2?.ativo &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.corLogo == e2?.corLogo &&
        e1?.modo == e2?.modo &&
        e1?.nomeEmpresa == e2?.nomeEmpresa &&
        e1?.vencimento == e2?.vencimento;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.comissao,
        e?.gerente,
        e?.representante,
        e?.id,
        e?.empresas,
        e?.refPrincipal,
        e?.master,
        e?.ativo,
        e?.dataCadastro,
        e?.corLogo,
        e?.modo,
        e?.nomeEmpresa,
        e?.vencimento
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
