// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosStruct extends FFFirebaseStruct {
  PedidosStruct({
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
    DocumentReference? user,
    String? fantasia,
    DocumentReference? empresa,
    String? inscricaoEstadual,
    DateTime? data,
    int? numeroPedido,
    double? total,
    String? observacao,
    String? formaPgamento,
    String? situacao,
    double? desconto,
    double? subtotal,
    String? vendedor,
    Color? corSituao,
    String? url,
    DocumentReference? clienteRef,
    double? descontoReais,
    bool? possueParcela,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _razaoSocial = razaoSocial,
        _cnpjcpf = cnpjcpf,
        _telefone = telefone,
        _email = email,
        _endereco = endereco,
        _cidade = cidade,
        _estado = estado,
        _numero = numero,
        _bairro = bairro,
        _cep = cep,
        _user = user,
        _fantasia = fantasia,
        _empresa = empresa,
        _inscricaoEstadual = inscricaoEstadual,
        _data = data,
        _numeroPedido = numeroPedido,
        _total = total,
        _observacao = observacao,
        _formaPgamento = formaPgamento,
        _situacao = situacao,
        _desconto = desconto,
        _subtotal = subtotal,
        _vendedor = vendedor,
        _corSituao = corSituao,
        _url = url,
        _clienteRef = clienteRef,
        _descontoReais = descontoReais,
        _possueParcela = possueParcela,
        super(firestoreUtilData);

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  set razaoSocial(String? val) => _razaoSocial = val;

  bool hasRazaoSocial() => _razaoSocial != null;

  // "cnpjcpf" field.
  String? _cnpjcpf;
  String get cnpjcpf => _cnpjcpf ?? '';
  set cnpjcpf(String? val) => _cnpjcpf = val;

  bool hasCnpjcpf() => _cnpjcpf != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;

  void incrementNumero(int amount) => numero = numero + amount;

  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "fantasia" field.
  String? _fantasia;
  String get fantasia => _fantasia ?? '';
  set fantasia(String? val) => _fantasia = val;

  bool hasFantasia() => _fantasia != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  set empresa(DocumentReference? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "inscricaoEstadual" field.
  String? _inscricaoEstadual;
  String get inscricaoEstadual => _inscricaoEstadual ?? '';
  set inscricaoEstadual(String? val) => _inscricaoEstadual = val;

  bool hasInscricaoEstadual() => _inscricaoEstadual != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  // "numeroPedido" field.
  int? _numeroPedido;
  int get numeroPedido => _numeroPedido ?? 0;
  set numeroPedido(int? val) => _numeroPedido = val;

  void incrementNumeroPedido(int amount) =>
      numeroPedido = numeroPedido + amount;

  bool hasNumeroPedido() => _numeroPedido != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  set total(double? val) => _total = val;

  void incrementTotal(double amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  set observacao(String? val) => _observacao = val;

  bool hasObservacao() => _observacao != null;

  // "formaPgamento" field.
  String? _formaPgamento;
  String get formaPgamento => _formaPgamento ?? '';
  set formaPgamento(String? val) => _formaPgamento = val;

  bool hasFormaPgamento() => _formaPgamento != null;

  // "situacao" field.
  String? _situacao;
  String get situacao => _situacao ?? '';
  set situacao(String? val) => _situacao = val;

  bool hasSituacao() => _situacao != null;

  // "desconto" field.
  double? _desconto;
  double get desconto => _desconto ?? 0.0;
  set desconto(double? val) => _desconto = val;

  void incrementDesconto(double amount) => desconto = desconto + amount;

  bool hasDesconto() => _desconto != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  set subtotal(double? val) => _subtotal = val;

  void incrementSubtotal(double amount) => subtotal = subtotal + amount;

  bool hasSubtotal() => _subtotal != null;

  // "vendedor" field.
  String? _vendedor;
  String get vendedor => _vendedor ?? '';
  set vendedor(String? val) => _vendedor = val;

  bool hasVendedor() => _vendedor != null;

  // "corSituao" field.
  Color? _corSituao;
  Color? get corSituao => _corSituao;
  set corSituao(Color? val) => _corSituao = val;

  bool hasCorSituao() => _corSituao != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "clienteRef" field.
  DocumentReference? _clienteRef;
  DocumentReference? get clienteRef => _clienteRef;
  set clienteRef(DocumentReference? val) => _clienteRef = val;

  bool hasClienteRef() => _clienteRef != null;

  // "descontoReais" field.
  double? _descontoReais;
  double get descontoReais => _descontoReais ?? 0.0;
  set descontoReais(double? val) => _descontoReais = val;

  void incrementDescontoReais(double amount) =>
      descontoReais = descontoReais + amount;

  bool hasDescontoReais() => _descontoReais != null;

  // "possueParcela" field.
  bool? _possueParcela;
  bool get possueParcela => _possueParcela ?? false;
  set possueParcela(bool? val) => _possueParcela = val;

  bool hasPossueParcela() => _possueParcela != null;

  static PedidosStruct fromMap(Map<String, dynamic> data) => PedidosStruct(
        razaoSocial: data['razaoSocial'] as String?,
        cnpjcpf: data['cnpjcpf'] as String?,
        telefone: data['telefone'] as String?,
        email: data['email'] as String?,
        endereco: data['endereco'] as String?,
        cidade: data['cidade'] as String?,
        estado: data['estado'] as String?,
        numero: castToType<int>(data['numero']),
        bairro: data['bairro'] as String?,
        cep: data['cep'] as String?,
        user: data['user'] as DocumentReference?,
        fantasia: data['fantasia'] as String?,
        empresa: data['empresa'] as DocumentReference?,
        inscricaoEstadual: data['inscricaoEstadual'] as String?,
        data: data['data'] as DateTime?,
        numeroPedido: castToType<int>(data['numeroPedido']),
        total: castToType<double>(data['total']),
        observacao: data['observacao'] as String?,
        formaPgamento: data['formaPgamento'] as String?,
        situacao: data['situacao'] as String?,
        desconto: castToType<double>(data['desconto']),
        subtotal: castToType<double>(data['subtotal']),
        vendedor: data['vendedor'] as String?,
        corSituao: getSchemaColor(data['corSituao']),
        url: data['url'] as String?,
        clienteRef: data['clienteRef'] as DocumentReference?,
        descontoReais: castToType<double>(data['descontoReais']),
        possueParcela: data['possueParcela'] as bool?,
      );

  static PedidosStruct? maybeFromMap(dynamic data) =>
      data is Map ? PedidosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'razaoSocial': _razaoSocial,
        'cnpjcpf': _cnpjcpf,
        'telefone': _telefone,
        'email': _email,
        'endereco': _endereco,
        'cidade': _cidade,
        'estado': _estado,
        'numero': _numero,
        'bairro': _bairro,
        'cep': _cep,
        'user': _user,
        'fantasia': _fantasia,
        'empresa': _empresa,
        'inscricaoEstadual': _inscricaoEstadual,
        'data': _data,
        'numeroPedido': _numeroPedido,
        'total': _total,
        'observacao': _observacao,
        'formaPgamento': _formaPgamento,
        'situacao': _situacao,
        'desconto': _desconto,
        'subtotal': _subtotal,
        'vendedor': _vendedor,
        'corSituao': _corSituao,
        'url': _url,
        'clienteRef': _clienteRef,
        'descontoReais': _descontoReais,
        'possueParcela': _possueParcela,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'razaoSocial': serializeParam(
          _razaoSocial,
          ParamType.String,
        ),
        'cnpjcpf': serializeParam(
          _cnpjcpf,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.int,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'fantasia': serializeParam(
          _fantasia,
          ParamType.String,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.DocumentReference,
        ),
        'inscricaoEstadual': serializeParam(
          _inscricaoEstadual,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'numeroPedido': serializeParam(
          _numeroPedido,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.double,
        ),
        'observacao': serializeParam(
          _observacao,
          ParamType.String,
        ),
        'formaPgamento': serializeParam(
          _formaPgamento,
          ParamType.String,
        ),
        'situacao': serializeParam(
          _situacao,
          ParamType.String,
        ),
        'desconto': serializeParam(
          _desconto,
          ParamType.double,
        ),
        'subtotal': serializeParam(
          _subtotal,
          ParamType.double,
        ),
        'vendedor': serializeParam(
          _vendedor,
          ParamType.String,
        ),
        'corSituao': serializeParam(
          _corSituao,
          ParamType.Color,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'clienteRef': serializeParam(
          _clienteRef,
          ParamType.DocumentReference,
        ),
        'descontoReais': serializeParam(
          _descontoReais,
          ParamType.double,
        ),
        'possueParcela': serializeParam(
          _possueParcela,
          ParamType.bool,
        ),
      }.withoutNulls;

  static PedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidosStruct(
        razaoSocial: deserializeParam(
          data['razaoSocial'],
          ParamType.String,
          false,
        ),
        cnpjcpf: deserializeParam(
          data['cnpjcpf'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        fantasia: deserializeParam(
          data['fantasia'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['empresas'],
        ),
        inscricaoEstadual: deserializeParam(
          data['inscricaoEstadual'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        numeroPedido: deserializeParam(
          data['numeroPedido'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.double,
          false,
        ),
        observacao: deserializeParam(
          data['observacao'],
          ParamType.String,
          false,
        ),
        formaPgamento: deserializeParam(
          data['formaPgamento'],
          ParamType.String,
          false,
        ),
        situacao: deserializeParam(
          data['situacao'],
          ParamType.String,
          false,
        ),
        desconto: deserializeParam(
          data['desconto'],
          ParamType.double,
          false,
        ),
        subtotal: deserializeParam(
          data['subtotal'],
          ParamType.double,
          false,
        ),
        vendedor: deserializeParam(
          data['vendedor'],
          ParamType.String,
          false,
        ),
        corSituao: deserializeParam(
          data['corSituao'],
          ParamType.Color,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        clienteRef: deserializeParam(
          data['clienteRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clientes'],
        ),
        descontoReais: deserializeParam(
          data['descontoReais'],
          ParamType.double,
          false,
        ),
        possueParcela: deserializeParam(
          data['possueParcela'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'PedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidosStruct &&
        razaoSocial == other.razaoSocial &&
        cnpjcpf == other.cnpjcpf &&
        telefone == other.telefone &&
        email == other.email &&
        endereco == other.endereco &&
        cidade == other.cidade &&
        estado == other.estado &&
        numero == other.numero &&
        bairro == other.bairro &&
        cep == other.cep &&
        user == other.user &&
        fantasia == other.fantasia &&
        empresa == other.empresa &&
        inscricaoEstadual == other.inscricaoEstadual &&
        data == other.data &&
        numeroPedido == other.numeroPedido &&
        total == other.total &&
        observacao == other.observacao &&
        formaPgamento == other.formaPgamento &&
        situacao == other.situacao &&
        desconto == other.desconto &&
        subtotal == other.subtotal &&
        vendedor == other.vendedor &&
        corSituao == other.corSituao &&
        url == other.url &&
        clienteRef == other.clienteRef &&
        descontoReais == other.descontoReais &&
        possueParcela == other.possueParcela;
  }

  @override
  int get hashCode => const ListEquality().hash([
        razaoSocial,
        cnpjcpf,
        telefone,
        email,
        endereco,
        cidade,
        estado,
        numero,
        bairro,
        cep,
        user,
        fantasia,
        empresa,
        inscricaoEstadual,
        data,
        numeroPedido,
        total,
        observacao,
        formaPgamento,
        situacao,
        desconto,
        subtotal,
        vendedor,
        corSituao,
        url,
        clienteRef,
        descontoReais,
        possueParcela
      ]);
}

PedidosStruct createPedidosStruct({
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
  DocumentReference? user,
  String? fantasia,
  DocumentReference? empresa,
  String? inscricaoEstadual,
  DateTime? data,
  int? numeroPedido,
  double? total,
  String? observacao,
  String? formaPgamento,
  String? situacao,
  double? desconto,
  double? subtotal,
  String? vendedor,
  Color? corSituao,
  String? url,
  DocumentReference? clienteRef,
  double? descontoReais,
  bool? possueParcela,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidosStruct(
      razaoSocial: razaoSocial,
      cnpjcpf: cnpjcpf,
      telefone: telefone,
      email: email,
      endereco: endereco,
      cidade: cidade,
      estado: estado,
      numero: numero,
      bairro: bairro,
      cep: cep,
      user: user,
      fantasia: fantasia,
      empresa: empresa,
      inscricaoEstadual: inscricaoEstadual,
      data: data,
      numeroPedido: numeroPedido,
      total: total,
      observacao: observacao,
      formaPgamento: formaPgamento,
      situacao: situacao,
      desconto: desconto,
      subtotal: subtotal,
      vendedor: vendedor,
      corSituao: corSituao,
      url: url,
      clienteRef: clienteRef,
      descontoReais: descontoReais,
      possueParcela: possueParcela,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PedidosStruct? updatePedidosStruct(
  PedidosStruct? pedidos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pedidos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPedidosStructData(
  Map<String, dynamic> firestoreData,
  PedidosStruct? pedidos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pedidos == null) {
    return;
  }
  if (pedidos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pedidos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pedidosData = getPedidosFirestoreData(pedidos, forFieldValue);
  final nestedData = pedidosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pedidos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPedidosFirestoreData(
  PedidosStruct? pedidos, [
  bool forFieldValue = false,
]) {
  if (pedidos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pedidos.toMap());

  // Add any Firestore field values
  pedidos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPedidosListFirestoreData(
  List<PedidosStruct>? pedidoss,
) =>
    pedidoss?.map((e) => getPedidosFirestoreData(e, true)).toList() ?? [];
