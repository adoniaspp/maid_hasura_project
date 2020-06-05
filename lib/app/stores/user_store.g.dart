// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on UserStoreBase, Store {
  final _$waitAtom = Atom(name: 'UserStoreBase.wait');

  @override
  bool get wait {
    _$waitAtom.context.enforceReadPolicy(_$waitAtom);
    _$waitAtom.reportObserved();
    return super.wait;
  }

  @override
  set wait(bool value) {
    _$waitAtom.context.conditionallyRunInAction(() {
      super.wait = value;
      _$waitAtom.reportChanged();
    }, _$waitAtom, name: '${_$waitAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'wait: ${wait.toString()}';
    return '{$string}';
  }
}
