import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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

  /// Stores the logged-in user's role
  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
  }

  List<dynamic> _tempCart = [];
  List<dynamic> get tempCart => _tempCart;
  set tempCart(List<dynamic> value) {
    _tempCart = value;
  }

  void addToTempCart(dynamic value) {
    tempCart.add(value);
  }

  void removeFromTempCart(dynamic value) {
    tempCart.remove(value);
  }

  void removeAtIndexFromTempCart(int index) {
    tempCart.removeAt(index);
  }

  void updateTempCartAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    tempCart[index] = updateFn(_tempCart[index]);
  }

  void insertAtIndexInTempCart(int index, dynamic value) {
    tempCart.insert(index, value);
  }
}
