import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _refPrincipal = prefs.getString('ff_refPrincipal')?.ref ?? _refPrincipal;
    });
    _safeInit(() {
      _empresas = prefs.getString('ff_empresas')?.ref ?? _empresas;
    });
    _safeInit(() {
      _pedidos = prefs
              .getStringList('ff_pedidos')
              ?.map((x) {
                try {
                  return PedidosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pedidos;
    });
    _safeInit(() {
      _itens = prefs
              .getStringList('ff_itens')
              ?.map((x) {
                try {
                  return ItensStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _itens;
    });
    _safeInit(() {
      _parcelas = prefs
              .getStringList('ff_parcelas')
              ?.map((x) {
                try {
                  return ParcelasStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _parcelas;
    });
    _safeInit(() {
      _situacoes = prefs
              .getStringList('ff_situacoes')
              ?.map((x) {
                try {
                  return SituacoesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _situacoes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _urlDeletaFoto = '';
  String get urlDeletaFoto => _urlDeletaFoto;
  set urlDeletaFoto(String value) {
    _urlDeletaFoto = value;
  }

  DocumentReference? _refPrincipal;
  DocumentReference? get refPrincipal => _refPrincipal;
  set refPrincipal(DocumentReference? value) {
    _refPrincipal = value;
    value != null
        ? prefs.setString('ff_refPrincipal', value.path)
        : prefs.remove('ff_refPrincipal');
  }

  DocumentReference? _empresas;
  DocumentReference? get empresas => _empresas;
  set empresas(DocumentReference? value) {
    _empresas = value;
    value != null
        ? prefs.setString('ff_empresas', value.path)
        : prefs.remove('ff_empresas');
  }

  List<PedidosStruct> _pedidos = [];
  List<PedidosStruct> get pedidos => _pedidos;
  set pedidos(List<PedidosStruct> value) {
    _pedidos = value;
    prefs.setStringList('ff_pedidos', value.map((x) => x.serialize()).toList());
  }

  void addToPedidos(PedidosStruct value) {
    pedidos.add(value);
    prefs.setStringList(
        'ff_pedidos', _pedidos.map((x) => x.serialize()).toList());
  }

  void removeFromPedidos(PedidosStruct value) {
    pedidos.remove(value);
    prefs.setStringList(
        'ff_pedidos', _pedidos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPedidos(int index) {
    pedidos.removeAt(index);
    prefs.setStringList(
        'ff_pedidos', _pedidos.map((x) => x.serialize()).toList());
  }

  void updatePedidosAtIndex(
    int index,
    PedidosStruct Function(PedidosStruct) updateFn,
  ) {
    pedidos[index] = updateFn(_pedidos[index]);
    prefs.setStringList(
        'ff_pedidos', _pedidos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPedidos(int index, PedidosStruct value) {
    pedidos.insert(index, value);
    prefs.setStringList(
        'ff_pedidos', _pedidos.map((x) => x.serialize()).toList());
  }

  List<ItensStruct> _itens = [];
  List<ItensStruct> get itens => _itens;
  set itens(List<ItensStruct> value) {
    _itens = value;
    prefs.setStringList('ff_itens', value.map((x) => x.serialize()).toList());
  }

  void addToItens(ItensStruct value) {
    itens.add(value);
    prefs.setStringList('ff_itens', _itens.map((x) => x.serialize()).toList());
  }

  void removeFromItens(ItensStruct value) {
    itens.remove(value);
    prefs.setStringList('ff_itens', _itens.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromItens(int index) {
    itens.removeAt(index);
    prefs.setStringList('ff_itens', _itens.map((x) => x.serialize()).toList());
  }

  void updateItensAtIndex(
    int index,
    ItensStruct Function(ItensStruct) updateFn,
  ) {
    itens[index] = updateFn(_itens[index]);
    prefs.setStringList('ff_itens', _itens.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInItens(int index, ItensStruct value) {
    itens.insert(index, value);
    prefs.setStringList('ff_itens', _itens.map((x) => x.serialize()).toList());
  }

  List<ParcelasStruct> _parcelas = [];
  List<ParcelasStruct> get parcelas => _parcelas;
  set parcelas(List<ParcelasStruct> value) {
    _parcelas = value;
    prefs.setStringList(
        'ff_parcelas', value.map((x) => x.serialize()).toList());
  }

  void addToParcelas(ParcelasStruct value) {
    parcelas.add(value);
    prefs.setStringList(
        'ff_parcelas', _parcelas.map((x) => x.serialize()).toList());
  }

  void removeFromParcelas(ParcelasStruct value) {
    parcelas.remove(value);
    prefs.setStringList(
        'ff_parcelas', _parcelas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromParcelas(int index) {
    parcelas.removeAt(index);
    prefs.setStringList(
        'ff_parcelas', _parcelas.map((x) => x.serialize()).toList());
  }

  void updateParcelasAtIndex(
    int index,
    ParcelasStruct Function(ParcelasStruct) updateFn,
  ) {
    parcelas[index] = updateFn(_parcelas[index]);
    prefs.setStringList(
        'ff_parcelas', _parcelas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInParcelas(int index, ParcelasStruct value) {
    parcelas.insert(index, value);
    prefs.setStringList(
        'ff_parcelas', _parcelas.map((x) => x.serialize()).toList());
  }

  List<SituacoesStruct> _situacoes = [];
  List<SituacoesStruct> get situacoes => _situacoes;
  set situacoes(List<SituacoesStruct> value) {
    _situacoes = value;
    prefs.setStringList(
        'ff_situacoes', value.map((x) => x.serialize()).toList());
  }

  void addToSituacoes(SituacoesStruct value) {
    situacoes.add(value);
    prefs.setStringList(
        'ff_situacoes', _situacoes.map((x) => x.serialize()).toList());
  }

  void removeFromSituacoes(SituacoesStruct value) {
    situacoes.remove(value);
    prefs.setStringList(
        'ff_situacoes', _situacoes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSituacoes(int index) {
    situacoes.removeAt(index);
    prefs.setStringList(
        'ff_situacoes', _situacoes.map((x) => x.serialize()).toList());
  }

  void updateSituacoesAtIndex(
    int index,
    SituacoesStruct Function(SituacoesStruct) updateFn,
  ) {
    situacoes[index] = updateFn(_situacoes[index]);
    prefs.setStringList(
        'ff_situacoes', _situacoes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSituacoes(int index, SituacoesStruct value) {
    situacoes.insert(index, value);
    prefs.setStringList(
        'ff_situacoes', _situacoes.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
