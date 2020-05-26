// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerUser on ControllerUserBase, Store {
  final _$userAtom = Atom(name: 'ControllerUserBase.user');

  @override
  User get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$isAuthAtom = Atom(name: 'ControllerUserBase.isAuth');

  @override
  bool get isAuth {
    _$isAuthAtom.context.enforceReadPolicy(_$isAuthAtom);
    _$isAuthAtom.reportObserved();
    return super.isAuth;
  }

  @override
  set isAuth(bool value) {
    _$isAuthAtom.context.conditionallyRunInAction(() {
      super.isAuth = value;
      _$isAuthAtom.reportChanged();
    }, _$isAuthAtom, name: '${_$isAuthAtom.name}_set');
  }

  final _$waitAtom = Atom(name: 'ControllerUserBase.wait');

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

  final _$createUserAsyncAction = AsyncAction('createUser');

  @override
  Future<User> createUser(String username, String password) {
    return _$createUserAsyncAction
        .run(() => super.createUser(username, password));
  }

  final _$verifyTokenAsyncAction = AsyncAction('verifyToken');

  @override
  Future<bool> verifyToken() {
    return _$verifyTokenAsyncAction.run(() => super.verifyToken());
  }

  @override
  String toString() {
    final string =
        'user: ${user.toString()},isAuth: ${isAuth.toString()},wait: ${wait.toString()}';
    return '{$string}';
  }
}
