// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ProdutosStruct extends FFFirebaseStruct {
  ProdutosStruct({
    String? descricao,
    double? tabela1,
    double? tabela2,
    double? tabela3,
    String? ncm,
    int? codigoBarras,
    int? codigoCaixa,
    double? peso,
    double? altura,
    double? largura,
    String? imagem,
    String? sku,
    double? comprimento,
    bool? ativo,
    DateTime? dataCadastro,
    DocumentReference? empresa,
    DocumentReference? users,
    String? un,
    bool? promocao,
    String? tituloPromocao,
    String? descricaoPromocao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _descricao = descricao,
        _tabela1 = tabela1,
        _tabela2 = tabela2,
        _tabela3 = tabela3,
        _ncm = ncm,
        _codigoBarras = codigoBarras,
        _codigoCaixa = codigoCaixa,
        _peso = peso,
        _altura = altura,
        _largura = largura,
        _imagem = imagem,
        _sku = sku,
        _comprimento = comprimento,
        _ativo = ativo,
        _dataCadastro = dataCadastro,
        _empresa = empresa,
        _users = users,
        _un = un,
        _promocao = promocao,
        _tituloPromocao = tituloPromocao,
        _descricaoPromocao = descricaoPromocao,
        super(firestoreUtilData);

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "tabela1" field.
  double? _tabela1;
  double get tabela1 => _tabela1 ?? 0.0;
  set tabela1(double? val) => _tabela1 = val;

  void incrementTabela1(double amount) => tabela1 = tabela1 + amount;

  bool hasTabela1() => _tabela1 != null;

  // "tabela2" field.
  double? _tabela2;
  double get tabela2 => _tabela2 ?? 0.0;
  set tabela2(double? val) => _tabela2 = val;

  void incrementTabela2(double amount) => tabela2 = tabela2 + amount;

  bool hasTabela2() => _tabela2 != null;

  // "tabela3" field.
  double? _tabela3;
  double get tabela3 => _tabela3 ?? 0.0;
  set tabela3(double? val) => _tabela3 = val;

  void incrementTabela3(double amount) => tabela3 = tabela3 + amount;

  bool hasTabela3() => _tabela3 != null;

  // "ncm" field.
  String? _ncm;
  String get ncm => _ncm ?? '';
  set ncm(String? val) => _ncm = val;

  bool hasNcm() => _ncm != null;

  // "codigoBarras" field.
  int? _codigoBarras;
  int get codigoBarras => _codigoBarras ?? 0;
  set codigoBarras(int? val) => _codigoBarras = val;

  void incrementCodigoBarras(int amount) =>
      codigoBarras = codigoBarras + amount;

  bool hasCodigoBarras() => _codigoBarras != null;

  // "codigoCaixa" field.
  int? _codigoCaixa;
  int get codigoCaixa => _codigoCaixa ?? 0;
  set codigoCaixa(int? val) => _codigoCaixa = val;

  void incrementCodigoCaixa(int amount) => codigoCaixa = codigoCaixa + amount;

  bool hasCodigoCaixa() => _codigoCaixa != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  set peso(double? val) => _peso = val;

  void incrementPeso(double amount) => peso = peso + amount;

  bool hasPeso() => _peso != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  set altura(double? val) => _altura = val;

  void incrementAltura(double amount) => altura = altura + amount;

  bool hasAltura() => _altura != null;

  // "largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  set largura(double? val) => _largura = val;

  void incrementLargura(double amount) => largura = largura + amount;

  bool hasLargura() => _largura != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  set imagem(String? val) => _imagem = val;

  bool hasImagem() => _imagem != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  set sku(String? val) => _sku = val;

  bool hasSku() => _sku != null;

  // "comprimento" field.
  double? _comprimento;
  double get comprimento => _comprimento ?? 0.0;
  set comprimento(double? val) => _comprimento = val;

  void incrementComprimento(double amount) =>
      comprimento = comprimento + amount;

  bool hasComprimento() => _comprimento != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "dataCadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  set dataCadastro(DateTime? val) => _dataCadastro = val;

  bool hasDataCadastro() => _dataCadastro != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  set empresa(DocumentReference? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  set users(DocumentReference? val) => _users = val;

  bool hasUsers() => _users != null;

  // "un" field.
  String? _un;
  String get un => _un ?? '';
  set un(String? val) => _un = val;

  bool hasUn() => _un != null;

  // "promocao" field.
  bool? _promocao;
  bool get promocao => _promocao ?? false;
  set promocao(bool? val) => _promocao = val;

  bool hasPromocao() => _promocao != null;

  // "tituloPromocao" field.
  String? _tituloPromocao;
  String get tituloPromocao => _tituloPromocao ?? '';
  set tituloPromocao(String? val) => _tituloPromocao = val;

  bool hasTituloPromocao() => _tituloPromocao != null;

  // "descricaoPromocao" field.
  String? _descricaoPromocao;
  String get descricaoPromocao => _descricaoPromocao ?? '';
  set descricaoPromocao(String? val) => _descricaoPromocao = val;

  bool hasDescricaoPromocao() => _descricaoPromocao != null;

  static ProdutosStruct fromMap(Map<String, dynamic> data) => ProdutosStruct(
        descricao: data['descricao'] as String?,
        tabela1: castToType<double>(data['tabela1']),
        tabela2: castToType<double>(data['tabela2']),
        tabela3: castToType<double>(data['tabela3']),
        ncm: data['ncm'] as String?,
        codigoBarras: castToType<int>(data['codigoBarras']),
        codigoCaixa: castToType<int>(data['codigoCaixa']),
        peso: castToType<double>(data['peso']),
        altura: castToType<double>(data['altura']),
        largura: castToType<double>(data['largura']),
        imagem: data['imagem'] as String?,
        sku: data['sku'] as String?,
        comprimento: castToType<double>(data['comprimento']),
        ativo: data['ativo'] as bool?,
        dataCadastro: data['dataCadastro'] as DateTime?,
        empresa: data['empresa'] as DocumentReference?,
        users: data['users'] as DocumentReference?,
        un: data['un'] as String?,
        promocao: data['promocao'] as bool?,
        tituloPromocao: data['tituloPromocao'] as String?,
        descricaoPromocao: data['descricaoPromocao'] as String?,
      );

  static ProdutosStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'descricao': _descricao,
        'tabela1': _tabela1,
        'tabela2': _tabela2,
        'tabela3': _tabela3,
        'ncm': _ncm,
        'codigoBarras': _codigoBarras,
        'codigoCaixa': _codigoCaixa,
        'peso': _peso,
        'altura': _altura,
        'largura': _largura,
        'imagem': _imagem,
        'sku': _sku,
        'comprimento': _comprimento,
        'ativo': _ativo,
        'dataCadastro': _dataCadastro,
        'empresa': _empresa,
        'users': _users,
        'un': _un,
        'promocao': _promocao,
        'tituloPromocao': _tituloPromocao,
        'descricaoPromocao': _descricaoPromocao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'tabela1': serializeParam(
          _tabela1,
          ParamType.double,
        ),
        'tabela2': serializeParam(
          _tabela2,
          ParamType.double,
        ),
        'tabela3': serializeParam(
          _tabela3,
          ParamType.double,
        ),
        'ncm': serializeParam(
          _ncm,
          ParamType.String,
        ),
        'codigoBarras': serializeParam(
          _codigoBarras,
          ParamType.int,
        ),
        'codigoCaixa': serializeParam(
          _codigoCaixa,
          ParamType.int,
        ),
        'peso': serializeParam(
          _peso,
          ParamType.double,
        ),
        'altura': serializeParam(
          _altura,
          ParamType.double,
        ),
        'largura': serializeParam(
          _largura,
          ParamType.double,
        ),
        'imagem': serializeParam(
          _imagem,
          ParamType.String,
        ),
        'sku': serializeParam(
          _sku,
          ParamType.String,
        ),
        'comprimento': serializeParam(
          _comprimento,
          ParamType.double,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'dataCadastro': serializeParam(
          _dataCadastro,
          ParamType.DateTime,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.DocumentReference,
        ),
        'users': serializeParam(
          _users,
          ParamType.DocumentReference,
        ),
        'un': serializeParam(
          _un,
          ParamType.String,
        ),
        'promocao': serializeParam(
          _promocao,
          ParamType.bool,
        ),
        'tituloPromocao': serializeParam(
          _tituloPromocao,
          ParamType.String,
        ),
        'descricaoPromocao': serializeParam(
          _descricaoPromocao,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosStruct(
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        tabela1: deserializeParam(
          data['tabela1'],
          ParamType.double,
          false,
        ),
        tabela2: deserializeParam(
          data['tabela2'],
          ParamType.double,
          false,
        ),
        tabela3: deserializeParam(
          data['tabela3'],
          ParamType.double,
          false,
        ),
        ncm: deserializeParam(
          data['ncm'],
          ParamType.String,
          false,
        ),
        codigoBarras: deserializeParam(
          data['codigoBarras'],
          ParamType.int,
          false,
        ),
        codigoCaixa: deserializeParam(
          data['codigoCaixa'],
          ParamType.int,
          false,
        ),
        peso: deserializeParam(
          data['peso'],
          ParamType.double,
          false,
        ),
        altura: deserializeParam(
          data['altura'],
          ParamType.double,
          false,
        ),
        largura: deserializeParam(
          data['largura'],
          ParamType.double,
          false,
        ),
        imagem: deserializeParam(
          data['imagem'],
          ParamType.String,
          false,
        ),
        sku: deserializeParam(
          data['sku'],
          ParamType.String,
          false,
        ),
        comprimento: deserializeParam(
          data['comprimento'],
          ParamType.double,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        dataCadastro: deserializeParam(
          data['dataCadastro'],
          ParamType.DateTime,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['empresas'],
        ),
        users: deserializeParam(
          data['users'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        un: deserializeParam(
          data['un'],
          ParamType.String,
          false,
        ),
        promocao: deserializeParam(
          data['promocao'],
          ParamType.bool,
          false,
        ),
        tituloPromocao: deserializeParam(
          data['tituloPromocao'],
          ParamType.String,
          false,
        ),
        descricaoPromocao: deserializeParam(
          data['descricaoPromocao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosStruct &&
        descricao == other.descricao &&
        tabela1 == other.tabela1 &&
        tabela2 == other.tabela2 &&
        tabela3 == other.tabela3 &&
        ncm == other.ncm &&
        codigoBarras == other.codigoBarras &&
        codigoCaixa == other.codigoCaixa &&
        peso == other.peso &&
        altura == other.altura &&
        largura == other.largura &&
        imagem == other.imagem &&
        sku == other.sku &&
        comprimento == other.comprimento &&
        ativo == other.ativo &&
        dataCadastro == other.dataCadastro &&
        empresa == other.empresa &&
        users == other.users &&
        un == other.un &&
        promocao == other.promocao &&
        tituloPromocao == other.tituloPromocao &&
        descricaoPromocao == other.descricaoPromocao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        descricao,
        tabela1,
        tabela2,
        tabela3,
        ncm,
        codigoBarras,
        codigoCaixa,
        peso,
        altura,
        largura,
        imagem,
        sku,
        comprimento,
        ativo,
        dataCadastro,
        empresa,
        users,
        un,
        promocao,
        tituloPromocao,
        descricaoPromocao
      ]);
}

ProdutosStruct createProdutosStruct({
  String? descricao,
  double? tabela1,
  double? tabela2,
  double? tabela3,
  String? ncm,
  int? codigoBarras,
  int? codigoCaixa,
  double? peso,
  double? altura,
  double? largura,
  String? imagem,
  String? sku,
  double? comprimento,
  bool? ativo,
  DateTime? dataCadastro,
  DocumentReference? empresa,
  DocumentReference? users,
  String? un,
  bool? promocao,
  String? tituloPromocao,
  String? descricaoPromocao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosStruct(
      descricao: descricao,
      tabela1: tabela1,
      tabela2: tabela2,
      tabela3: tabela3,
      ncm: ncm,
      codigoBarras: codigoBarras,
      codigoCaixa: codigoCaixa,
      peso: peso,
      altura: altura,
      largura: largura,
      imagem: imagem,
      sku: sku,
      comprimento: comprimento,
      ativo: ativo,
      dataCadastro: dataCadastro,
      empresa: empresa,
      users: users,
      un: un,
      promocao: promocao,
      tituloPromocao: tituloPromocao,
      descricaoPromocao: descricaoPromocao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosStruct? updateProdutosStruct(
  ProdutosStruct? produtos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosStructData(
  Map<String, dynamic> firestoreData,
  ProdutosStruct? produtos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtos == null) {
    return;
  }
  if (produtos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosData = getProdutosFirestoreData(produtos, forFieldValue);
  final nestedData = produtosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosFirestoreData(
  ProdutosStruct? produtos, [
  bool forFieldValue = false,
]) {
  if (produtos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtos.toMap());

  // Add any Firestore field values
  produtos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosListFirestoreData(
  List<ProdutosStruct>? produtoss,
) =>
    produtoss?.map((e) => getProdutosFirestoreData(e, true)).toList() ?? [];
