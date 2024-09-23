// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SituacoesStruct extends FFFirebaseStruct {
  SituacoesStruct({
    String? nome,
    Color? cor,
    DocumentReference? refPrincipal,
    DocumentReference? empresa,
    bool? ativo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nome = nome,
        _cor = cor,
        _refPrincipal = refPrincipal,
        _empresa = empresa,
        _ativo = ativo,
        super(firestoreUtilData);

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "cor" field.
  Color? _cor;
  Color? get cor => _cor;
  set cor(Color? val) => _cor = val;

  bool hasCor() => _cor != null;

  // "refPrincipal" field.
  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  set refPrincipal(DocumentReference? val) => _refPrincipal = val;

  bool hasRefPrincipal() => _refPrincipal != null;

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  set empresa(DocumentReference? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  static SituacoesStruct fromMap(Map<String, dynamic> data) => SituacoesStruct(
        nome: data['nome'] as String?,
        cor: getSchemaColor(data['cor']),
        refPrincipal: data['refPrincipal'] as DocumentReference?,
        empresa: data['empresa'] as DocumentReference?,
        ativo: data['ativo'] as bool?,
      );

  static SituacoesStruct? maybeFromMap(dynamic data) => data is Map
      ? SituacoesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'cor': _cor,
        'refPrincipal': _refPrincipal,
        'empresa': _empresa,
        'ativo': _ativo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'cor': serializeParam(
          _cor,
          ParamType.Color,
        ),
        'refPrincipal': serializeParam(
          _refPrincipal,
          ParamType.DocumentReference,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.DocumentReference,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SituacoesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SituacoesStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        cor: deserializeParam(
          data['cor'],
          ParamType.Color,
          false,
        ),
        refPrincipal: deserializeParam(
          data['refPrincipal'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['empresas'],
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SituacoesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SituacoesStruct &&
        nome == other.nome &&
        cor == other.cor &&
        refPrincipal == other.refPrincipal &&
        empresa == other.empresa &&
        ativo == other.ativo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, cor, refPrincipal, empresa, ativo]);
}

SituacoesStruct createSituacoesStruct({
  String? nome,
  Color? cor,
  DocumentReference? refPrincipal,
  DocumentReference? empresa,
  bool? ativo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SituacoesStruct(
      nome: nome,
      cor: cor,
      refPrincipal: refPrincipal,
      empresa: empresa,
      ativo: ativo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SituacoesStruct? updateSituacoesStruct(
  SituacoesStruct? situacoes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    situacoes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSituacoesStructData(
  Map<String, dynamic> firestoreData,
  SituacoesStruct? situacoes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (situacoes == null) {
    return;
  }
  if (situacoes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && situacoes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final situacoesData = getSituacoesFirestoreData(situacoes, forFieldValue);
  final nestedData = situacoesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = situacoes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSituacoesFirestoreData(
  SituacoesStruct? situacoes, [
  bool forFieldValue = false,
]) {
  if (situacoes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(situacoes.toMap());

  // Add any Firestore field values
  situacoes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSituacoesListFirestoreData(
  List<SituacoesStruct>? situacoess,
) =>
    situacoess?.map((e) => getSituacoesFirestoreData(e, true)).toList() ?? [];
