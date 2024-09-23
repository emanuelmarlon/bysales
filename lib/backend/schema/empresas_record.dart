import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresasRecord extends FirestoreRecord {
  EmpresasRecord._(
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

  // "dataCadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "contador" field.
  int? _contador;
  int get contador => _contador ?? 0;
  bool hasContador() => _contador != null;

  // "contadorOrcamento" field.
  int? _contadorOrcamento;
  int get contadorOrcamento => _contadorOrcamento ?? 0;
  bool hasContadorOrcamento() => _contadorOrcamento != null;

  // "urlWebhookAtualizarCliente" field.
  String? _urlWebhookAtualizarCliente;
  String get urlWebhookAtualizarCliente => _urlWebhookAtualizarCliente ?? '';
  bool hasUrlWebhookAtualizarCliente() => _urlWebhookAtualizarCliente != null;

  // "urlWebhookCriarProduto" field.
  String? _urlWebhookCriarProduto;
  String get urlWebhookCriarProduto => _urlWebhookCriarProduto ?? '';
  bool hasUrlWebhookCriarProduto() => _urlWebhookCriarProduto != null;

  // "urlWebhookAtualizarProduto" field.
  String? _urlWebhookAtualizarProduto;
  String get urlWebhookAtualizarProduto => _urlWebhookAtualizarProduto ?? '';
  bool hasUrlWebhookAtualizarProduto() => _urlWebhookAtualizarProduto != null;

  // "urlWebhookCriarCliente" field.
  String? _urlWebhookCriarCliente;
  String get urlWebhookCriarCliente => _urlWebhookCriarCliente ?? '';
  bool hasUrlWebhookCriarCliente() => _urlWebhookCriarCliente != null;

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
    _dataCadastro = snapshotData['dataCadastro'] as DateTime?;
    _contador = castToType<int>(snapshotData['contador']);
    _contadorOrcamento = castToType<int>(snapshotData['contadorOrcamento']);
    _urlWebhookAtualizarCliente =
        snapshotData['urlWebhookAtualizarCliente'] as String?;
    _urlWebhookCriarProduto = snapshotData['urlWebhookCriarProduto'] as String?;
    _urlWebhookAtualizarProduto =
        snapshotData['urlWebhookAtualizarProduto'] as String?;
    _urlWebhookCriarCliente = snapshotData['urlWebhookCriarCliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpresasRecord.fromSnapshot(s));

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpresasRecord.fromSnapshot(s));

  static EmpresasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpresasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpresasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpresasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpresasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpresasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpresasRecordData({
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
  DateTime? dataCadastro,
  int? contador,
  int? contadorOrcamento,
  String? urlWebhookAtualizarCliente,
  String? urlWebhookCriarProduto,
  String? urlWebhookAtualizarProduto,
  String? urlWebhookCriarCliente,
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
      'dataCadastro': dataCadastro,
      'contador': contador,
      'contadorOrcamento': contadorOrcamento,
      'urlWebhookAtualizarCliente': urlWebhookAtualizarCliente,
      'urlWebhookCriarProduto': urlWebhookCriarProduto,
      'urlWebhookAtualizarProduto': urlWebhookAtualizarProduto,
      'urlWebhookCriarCliente': urlWebhookCriarCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpresasRecordDocumentEquality implements Equality<EmpresasRecord> {
  const EmpresasRecordDocumentEquality();

  @override
  bool equals(EmpresasRecord? e1, EmpresasRecord? e2) {
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
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.contador == e2?.contador &&
        e1?.contadorOrcamento == e2?.contadorOrcamento &&
        e1?.urlWebhookAtualizarCliente == e2?.urlWebhookAtualizarCliente &&
        e1?.urlWebhookCriarProduto == e2?.urlWebhookCriarProduto &&
        e1?.urlWebhookAtualizarProduto == e2?.urlWebhookAtualizarProduto &&
        e1?.urlWebhookCriarCliente == e2?.urlWebhookCriarCliente;
  }

  @override
  int hash(EmpresasRecord? e) => const ListEquality().hash([
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
        e?.dataCadastro,
        e?.contador,
        e?.contadorOrcamento,
        e?.urlWebhookAtualizarCliente,
        e?.urlWebhookCriarProduto,
        e?.urlWebhookAtualizarProduto,
        e?.urlWebhookCriarCliente
      ]);

  @override
  bool isValidKey(Object? o) => o is EmpresasRecord;
}
