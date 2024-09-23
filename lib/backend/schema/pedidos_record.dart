import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
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

  // "fantasia" field.
  String? _fantasia;
  String get fantasia => _fantasia ?? '';
  bool hasFantasia() => _fantasia != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "inscricaoEstadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  bool hasNumeroPedido() => _numeroPedido != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "formaPagamento" field.
  String? _formaPagamento;
  String get formaPagamento => _formaPagamento ?? '';
  bool hasFormaPagamento() => _formaPagamento != null;

  // "situacao" field.
  String? _situacao;
  String get situacao => _situacao ?? '';
  bool hasSituacao() => _situacao != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  bool hasDesconto() => _desconto != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "vendedor" field.
  String? _vendedor;
  String get vendedor => _vendedor ?? '';
  bool hasVendedor() => _vendedor != null;

  // "corSituao" field.
  Color? _corSituao;
  Color? get corSituao => _corSituao;
  bool hasCorSituao() => _corSituao != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  bool hasClienteRef() => _clienteRef != null;

  // "descontoReais" field.
  double? _descontoReais;
  double get descontoReais => _descontoReais ?? 0.0;
  bool hasDescontoReais() => _descontoReais != null;

  // "pussueParcela" field.
  bool? _pussueParcela;
  bool get pussueParcela => _pussueParcela ?? false;
  bool hasPussueParcela() => _pussueParcela != null;

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
    _fantasia = snapshotData['fantasia'] as String?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _inscricaoEstadual = snapshotData['inscricaoEstadual'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _numeroPedido = castToType<int>(snapshotData['numeroPedido']);
    _total = castToType<double>(snapshotData['total']);
    _observacao = snapshotData['observacao'] as String?;
    _formaPagamento = snapshotData['formaPagamento'] as String?;
    _situacao = snapshotData['situacao'] as String?;
    _desconto = castToType<double>(snapshotData['desconto']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _vendedor = snapshotData['vendedor'] as String?;
    _corSituao = getSchemaColor(snapshotData['corSituao']);
    _url = snapshotData['url'] as String?;
    _clienteRef = snapshotData['clienteRef'] as DocumentReference?;
    _descontoReais = castToType<double>(snapshotData['descontoReais']);
    _pussueParcela = snapshotData['pussueParcela'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
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
  String? fantasia,
  DocumentReference? empresa,
  String? inscricaoEstadual,
  DateTime? data,
  int? numeroPedido,
  double? total,
  String? observacao,
  String? formaPagamento,
  String? situacao,
  double? desconto,
  double? subtotal,
  String? vendedor,
  Color? corSituao,
  String? url,
  DocumentReference? clienteRef,
  double? descontoReais,
  bool? pussueParcela,
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
      'fantasia': fantasia,
      'empresa': empresa,
      'inscricaoEstadual': inscricaoEstadual,
      'data': data,
      'numeroPedido': numeroPedido,
      'total': total,
      'observacao': observacao,
      'formaPagamento': formaPagamento,
      'situacao': situacao,
      'desconto': desconto,
      'subtotal': subtotal,
      'vendedor': vendedor,
      'corSituao': corSituao,
      'url': url,
      'clienteRef': clienteRef,
      'descontoReais': descontoReais,
      'pussueParcela': pussueParcela,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
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
        e1?.fantasia == e2?.fantasia &&
        e1?.empresa == e2?.empresa &&
        e1?.inscricaoEstadual == e2?.inscricaoEstadual &&
        e1?.data == e2?.data &&
        e1?.numeroPedido == e2?.numeroPedido &&
        e1?.total == e2?.total &&
        e1?.observacao == e2?.observacao &&
        e1?.formaPagamento == e2?.formaPagamento &&
        e1?.situacao == e2?.situacao &&
        e1?.desconto == e2?.desconto &&
        e1?.subtotal == e2?.subtotal &&
        e1?.vendedor == e2?.vendedor &&
        e1?.corSituao == e2?.corSituao &&
        e1?.url == e2?.url &&
        e1?.clienteRef == e2?.clienteRef &&
        e1?.descontoReais == e2?.descontoReais &&
        e1?.pussueParcela == e2?.pussueParcela;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
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
        e?.fantasia,
        e?.empresa,
        e?.inscricaoEstadual,
        e?.data,
        e?.numeroPedido,
        e?.total,
        e?.observacao,
        e?.formaPagamento,
        e?.situacao,
        e?.desconto,
        e?.subtotal,
        e?.vendedor,
        e?.corSituao,
        e?.url,
        e?.clienteRef,
        e?.descontoReais,
        e?.pussueParcela
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
