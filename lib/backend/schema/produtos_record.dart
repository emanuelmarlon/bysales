import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "tabela1" field.
  double? _tabela1;
  double get tabela1 => _tabela1 ?? 0.0;
  bool hasTabela1() => _tabela1 != null;

  // "tabela2" field.
  double? _tabela2;
  double get tabela2 => _tabela2 ?? 0.0;
  bool hasTabela2() => _tabela2 != null;

  // "tabela3" field.
  double? _tabela3;
  double get tabela3 => _tabela3 ?? 0.0;
  bool hasTabela3() => _tabela3 != null;

  // "ncm" field.
  String? _ncm;
  String get ncm => _ncm ?? '';
  bool hasNcm() => _ncm != null;

  // "codigoBarras" field.
  int? _codigoBarras;
  int get codigoBarras => _codigoBarras ?? 0;
  bool hasCodigoBarras() => _codigoBarras != null;

  // "codigocaixa" field.
  int? _codigocaixa;
  int get codigocaixa => _codigocaixa ?? 0;
  bool hasCodigocaixa() => _codigocaixa != null;

  // "peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  bool hasLargura() => _largura != null;

  // "altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "comprimento" field.
  double? _comprimento;
  double get comprimento => _comprimento ?? 0.0;
  bool hasComprimento() => _comprimento != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "dataCadastro" field.
  DateTime? _dataCadastro;
  DateTime? get dataCadastro => _dataCadastro;
  bool hasDataCadastro() => _dataCadastro != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "un" field.
  String? _un;
  String get un => _un ?? '';
  bool hasUn() => _un != null;

  // "promocao" field.
  bool? _promocao;
  bool get promocao => _promocao ?? false;
  bool hasPromocao() => _promocao != null;

  // "tituloPromocao" field.
  String? _tituloPromocao;
  String get tituloPromocao => _tituloPromocao ?? '';
  bool hasTituloPromocao() => _tituloPromocao != null;

  // "descricaoPromocao" field.
  String? _descricaoPromocao;
  String get descricaoPromocao => _descricaoPromocao ?? '';
  bool hasDescricaoPromocao() => _descricaoPromocao != null;

  void _initializeFields() {
    _descricao = snapshotData['descricao'] as String?;
    _tabela1 = castToType<double>(snapshotData['tabela1']);
    _tabela2 = castToType<double>(snapshotData['tabela2']);
    _tabela3 = castToType<double>(snapshotData['tabela3']);
    _ncm = snapshotData['ncm'] as String?;
    _codigoBarras = castToType<int>(snapshotData['codigoBarras']);
    _codigocaixa = castToType<int>(snapshotData['codigocaixa']);
    _peso = castToType<double>(snapshotData['peso']);
    _largura = castToType<double>(snapshotData['largura']);
    _altura = castToType<double>(snapshotData['altura']);
    _imagem = snapshotData['imagem'] as String?;
    _sku = snapshotData['sku'] as String?;
    _comprimento = castToType<double>(snapshotData['comprimento']);
    _ativo = snapshotData['ativo'] as bool?;
    _dataCadastro = snapshotData['dataCadastro'] as DateTime?;
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _users = snapshotData['users'] as DocumentReference?;
    _un = snapshotData['un'] as String?;
    _promocao = snapshotData['promocao'] as bool?;
    _tituloPromocao = snapshotData['tituloPromocao'] as String?;
    _descricaoPromocao = snapshotData['descricaoPromocao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? descricao,
  double? tabela1,
  double? tabela2,
  double? tabela3,
  String? ncm,
  int? codigoBarras,
  int? codigocaixa,
  double? peso,
  double? largura,
  double? altura,
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descricao': descricao,
      'tabela1': tabela1,
      'tabela2': tabela2,
      'tabela3': tabela3,
      'ncm': ncm,
      'codigoBarras': codigoBarras,
      'codigocaixa': codigocaixa,
      'peso': peso,
      'largura': largura,
      'altura': altura,
      'imagem': imagem,
      'sku': sku,
      'comprimento': comprimento,
      'ativo': ativo,
      'dataCadastro': dataCadastro,
      'empresa': empresa,
      'users': users,
      'un': un,
      'promocao': promocao,
      'tituloPromocao': tituloPromocao,
      'descricaoPromocao': descricaoPromocao,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.descricao == e2?.descricao &&
        e1?.tabela1 == e2?.tabela1 &&
        e1?.tabela2 == e2?.tabela2 &&
        e1?.tabela3 == e2?.tabela3 &&
        e1?.ncm == e2?.ncm &&
        e1?.codigoBarras == e2?.codigoBarras &&
        e1?.codigocaixa == e2?.codigocaixa &&
        e1?.peso == e2?.peso &&
        e1?.largura == e2?.largura &&
        e1?.altura == e2?.altura &&
        e1?.imagem == e2?.imagem &&
        e1?.sku == e2?.sku &&
        e1?.comprimento == e2?.comprimento &&
        e1?.ativo == e2?.ativo &&
        e1?.dataCadastro == e2?.dataCadastro &&
        e1?.empresa == e2?.empresa &&
        e1?.users == e2?.users &&
        e1?.un == e2?.un &&
        e1?.promocao == e2?.promocao &&
        e1?.tituloPromocao == e2?.tituloPromocao &&
        e1?.descricaoPromocao == e2?.descricaoPromocao;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.descricao,
        e?.tabela1,
        e?.tabela2,
        e?.tabela3,
        e?.ncm,
        e?.codigoBarras,
        e?.codigocaixa,
        e?.peso,
        e?.largura,
        e?.altura,
        e?.imagem,
        e?.sku,
        e?.comprimento,
        e?.ativo,
        e?.dataCadastro,
        e?.empresa,
        e?.users,
        e?.un,
        e?.promocao,
        e?.tituloPromocao,
        e?.descricaoPromocao
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
