import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientesRecord extends FirestoreRecord {
  ClientesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  bool hasRazaoSocial() => _razaoSocial != null;

  // "cnpjcpf" field.
  String? _cnpjcpf;
  String get cnpjcpf => _cnpjcpf ?? '';
  bool hasCnpjcpf() => _cnpjcpf != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "urlWebhook" field.
  String? _urlWebhook;
  String get urlWebhook => _urlWebhook ?? '';
  bool hasUrlWebhook() => _urlWebhook != null;

  // "contadorPedidos" field.
  int? _contadorPedidos;
  int get contadorPedidos => _contadorPedidos ?? 0;
  bool hasContadorPedidos() => _contadorPedidos != null;

  // "fantasia" field.
  String? _fantasia;
  String get fantasia => _fantasia ?? '';
  bool hasFantasia() => _fantasia != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "inscricaoEstadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "dataCadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "refPrincipal" field.
  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  bool hasRefPrincipal() => _refPrincipal != null;

  // "vendedor" field.
  String? _vendedor;
  String get vendedor => _vendedor ?? '';
  bool hasVendedor() => _vendedor != null;

  // "dataCad" field.
  String? _dataCad;
  String get dataCad => _dataCad ?? '';
  bool hasDataCad() => _dataCad != null;

  // "dataUltimaCompra" field.
  String? _dataUltimaCompra;
  String get dataUltimaCompra => _dataUltimaCompra ?? '';
  bool hasDataUltimaCompra() => _dataUltimaCompra != null;

  void _initializeFields() {
    _razaoSocial = snapshotData['razaoSocial'] as String?;
    _cnpjcpf = snapshotData['cnpjcpf'] as String?;
    _telefone = snapshotData['telefone'] as String?;
    _email = snapshotData['email'] as String?;
    _endereco = snapshotData['endereco'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _numero = castToType<int>(snapshotData['numero']);
    _bairro = snapshotData['bairro'] as String?;
    _cep = snapshotData['cep'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
    _imagem = snapshotData['imagem'] as String?;
    _urlWebhook = snapshotData['urlWebhook'] as String?;
    _contadorPedidos = castToType<int>(snapshotData['contadorPedidos']);
    _fantasia = snapshotData['fantasia'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _inscricaoEstadual = snapshotData['inscricaoEstadual'] as String?;
    _dataCadastro = snapshotData['dataCadastro'] as DateTime?;
    _refPrincipal = snapshotData['refPrincipal'] as DocumentReference?;
    _vendedor = snapshotData['vendedor'] as String?;
    _dataCad = snapshotData['dataCad'] as String?;
    _dataUltimaCompra = snapshotData['dataUltimaCompra'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clientes');

  static Stream<ClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientesRecord.fromSnapshot(s));

  static Future<ClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientesRecord.fromSnapshot(s));

  static ClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientesRecordData({
  String? razaoSocial,
  String? cnpjcpf,
  String? telefone,
  String? email,
  String? endereco,
  String? cidade,
  String? estado,
  int? numero,
  String? bairro,
  String? cep,
  DocumentReference? users,
  String? imagem,
  String? urlWebhook,
  int? contadorPedidos,
  String? fantasia,
  bool? ativo,
  DocumentReference? empresa,
  String? inscricaoEstadual,
  DateTime? dataCadastro,
  DocumentReference? refPrincipal,
  String? vendedor,
  String? dataCad,
  String? dataUltimaCompra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'razaoSocial': razaoSocial,
      'cnpjcpf': cnpjcpf,
      'telefone': telefone,
      'email': email,
      'endereco': endereco,
      'cidade': cidade,
      'estado': estado,
      'numero': numero,
      'bairro': bairro,
      'cep': cep,
      'users': users,
      'imagem': imagem,
      'urlWebhook': urlWebhook,
      'contadorPedidos': contadorPedidos,
      'fantasia': fantasia,
      'ativo': ativo,
      'empresa': empresa,
      'inscricaoEstadual': inscricaoEstadual,
      'dataCadastro': dataCadastro,
      'refPrincipal': refPrincipal,
      'vendedor': vendedor,
      'dataCad': dataCad,
      'dataUltimaCompra': dataUltimaCompra,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientesRecordDocumentEquality implements Equality<ClientesRecord> {
  const ClientesRecordDocumentEquality();

  @override
  bool equals(ClientesRecord? e1, ClientesRecord? e2) {
    return e1?.razaoSocial == e2?.razaoSocial &&
        e1?.cnpjcpf == e2?.cnpjcpf &&
        e1?.telefone == e2?.telefone &&
        e1?.email == e2?.email &&
        e1?.endereco == e2?.endereco &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        e1?.numero == e2?.numero &&
        e1?.bairro == e2?.bairro &&
        e1?.cep == e2?.cep &&
        e1?.users == e2?.users &&
        e1?.imagem == e2?.imagem &&
        e1?.urlWebhook == e2?.urlWebhook &&
        e1?.contadorPedidos == e2?.contadorPedidos &&
        e1?.fantasia == e2?.fantasia &&
        e1?.ativo == e2?.ativo &&
        e1?.empresa == e2?.empresa &&
        e1?.inscricaoEstadual == e2?.inscricaoEstadual &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.refPrincipal == e2?.refPrincipal &&
        e1?.vendedor == e2?.vendedor &&
        e1?.dataCad == e2?.dataCad &&
        e1?.dataUltimaCompra == e2?.dataUltimaCompra;
  }

  @override
  int hash(ClientesRecord? e) => const ListEquality().hash([
        e?.razaoSocial,
        e?.cnpjcpf,
        e?.telefone,
        e?.email,
        e?.endereco,
        e?.cidade,
        e?.estado,
        e?.numero,
        e?.bairro,
        e?.cep,
        e?.users,
        e?.imagem,
        e?.urlWebhook,
        e?.contadorPedidos,
        e?.fantasia,
        e?.ativo,
        e?.empresa,
        e?.inscricaoEstadual,
        e?.dataCadastro,
        e?.refPrincipal,
        e?.vendedor,
        e?.dataCad,
        e?.dataUltimaCompra
      ]);

  @override
  bool isValidKey(Object? o) => o is ClientesRecord;
}
