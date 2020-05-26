import 'dart:convert';
import 'package:alice/model/user_rest_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'controller_user.g.dart';

class ControllerUser = ControllerUserBase with _$ControllerUser;

abstract class ControllerUserBase with Store {
  var clientID = "com.alice_app.mobile.secret";
  var pass = "****";

  Response response;

  @observable
  User user;

  @observable
  bool isAuth = false;

  @observable
  bool wait = false;

  Dio dio = new Dio();

  @action
  Future<User> createUser(String username, String password) async {
    this.wait = true;
    var clientCredentials =
        Base64Encoder().convert("$clientID:$pass".codeUnits);
    try {
      response = await dio.post("http://localhost:8888/createuser",
          data: {"username": username, "password": password},
          options: Options(
            contentType: "application/json",
            headers: {"Authorization": "Basic $clientCredentials"},
          ));
      if (response.statusCode == 200) {
        user = User.fromJson(response.data["authorization"]);
        //Armazenar os dados do token com sharedpreferences.
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', user.accessToken);
        await prefs.setInt('expires_in', user.expiresIn);
        await prefs.setString('refresh_token', user.refreshToken);
        await prefs.setString('date_create', DateTime.now().toString());
        this.wait = false;
        return user;
      }
      //print(response);
    } on DioError catch (e) {
      if (e.response != null) {
        this.wait = false;
        throw e.response.data["error"];
      }
    }
    //Colocar essa implementação no service.
  }

  @action
  Future<bool> verifyToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('access_token');
    if (token != null) {
      int expiresIn = prefs.getInt('expires_in');
      String dateCreate = prefs.getString('date_create');
      DateTime varDateCreate = DateTime.parse(dateCreate);
      if (varDateCreate
          .add(new Duration(seconds: expiresIn))
          .isAfter(DateTime.now())) {
        this.isAuth = true;
        return true; //home
      } else {
        String refreshToken = prefs.getString("refresh_token");
        _refreshToken(refreshToken);
        this.isAuth = true;
        return true; //home
      }
    } else {
      return false; //login
    }
  }

  Future<void> _refreshToken(String refreshToken) async {
    var clientCredentials =
        Base64Encoder().convert("$clientID:$pass".codeUnits);
    try {
      response = await dio.post("http://localhost:8888/auth/token",
          data: {
            "refresh_token": refreshToken,
            "grant_type": "password"
          },
          options: Options(
            contentType: "application/x-www-form-urlencoded",
            headers: {"Authorization": "Basic $clientCredentials"},
          ));
      if (response.statusCode == 200) {
        user = User.fromJson(response.data);
        //Armazenar os dados do token com sharedpreferences.
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', user.accessToken);
        await prefs.setInt('expires_in', user.expiresIn);
        await prefs.setString('refresh_token', user.refreshToken);
        await prefs.setString('date_create', DateTime.now().toString());
        this.wait = false;
        return user;
      }
      //print(response);
    } on DioError catch (e) {
      if (e.response != null) {
        this.wait = false;
        throw e.response.data["error"];
      }
    }
  }

  Future<User> login(String username, String password) async {
    var clientCredentials =
        Base64Encoder().convert("$clientID:$pass".codeUnits);
    try {
      response = await dio.post("http://localhost:8888/auth/token",
          data: {
            "username": username,
            "password": password,
            "grant_type": "password"
          },
          options: Options(
            contentType: "application/x-www-form-urlencoded",
            headers: {"Authorization": "Basic $clientCredentials"},
          ));
      if (response.statusCode == 200) {
        user = User.fromJson(response.data);
        //Armazenar os dados do token com sharedpreferences.
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', user.accessToken);
        await prefs.setInt('expires_in', user.expiresIn);
        await prefs.setString('refresh_token', user.refreshToken);
        await prefs.setString('date_create', DateTime.now().toString());
        this.wait = false;
        return user;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        this.wait = false;
        throw e.response.data["error"];
      }
    }
  }

  Future<void> logout() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('access_token');
      await prefs.remove('expires_in');
      await prefs.remove('refresh_token');
      await prefs.remove('date_create');
    } catch (erro) {

    }
  }
}
