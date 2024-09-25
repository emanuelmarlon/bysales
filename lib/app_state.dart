import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _alarme = prefs
              .getStringList('ff_alarme')
              ?.map((x) {
                try {
                  return AlarmeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _alarme;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<AlarmeStruct> _alarme = [];
  List<AlarmeStruct> get alarme => _alarme;
  set alarme(List<AlarmeStruct> value) {
    _alarme = value;
    prefs.setStringList('ff_alarme', value.map((x) => x.serialize()).toList());
  }

  void addToAlarme(AlarmeStruct value) {
    alarme.add(value);
    prefs.setStringList(
        'ff_alarme', _alarme.map((x) => x.serialize()).toList());
  }

  void removeFromAlarme(AlarmeStruct value) {
    alarme.remove(value);
    prefs.setStringList(
        'ff_alarme', _alarme.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAlarme(int index) {
    alarme.removeAt(index);
    prefs.setStringList(
        'ff_alarme', _alarme.map((x) => x.serialize()).toList());
  }

  void updateAlarmeAtIndex(
    int index,
    AlarmeStruct Function(AlarmeStruct) updateFn,
  ) {
    alarme[index] = updateFn(_alarme[index]);
    prefs.setStringList(
        'ff_alarme', _alarme.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAlarme(int index, AlarmeStruct value) {
    alarme.insert(index, value);
    prefs.setStringList(
        'ff_alarme', _alarme.map((x) => x.serialize()).toList());
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
