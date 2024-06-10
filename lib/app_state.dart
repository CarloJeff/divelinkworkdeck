import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _listImage = [];
  List<String> get listImage => _listImage;
  set listImage(List<String> value) {
    _listImage = value;
  }

  void addToListImage(String value) {
    _listImage.add(value);
  }

  void removeFromListImage(String value) {
    _listImage.remove(value);
  }

  void removeAtIndexFromListImage(int index) {
    _listImage.removeAt(index);
  }

  void updateListImageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _listImage[index] = updateFn(_listImage[index]);
  }

  void insertAtIndexInListImage(int index, String value) {
    _listImage.insert(index, value);
  }

  String _workdeckSelected = '';
  String get workdeckSelected => _workdeckSelected;
  set workdeckSelected(String value) {
    _workdeckSelected = value;
  }

  String _orderID = '';
  String get orderID => _orderID;
  set orderID(String value) {
    _orderID = value;
  }
}
