class User
{
  int id;
  String username;
  String accessToken;
  String refreshToken;
  int expiresIn;

  User({this.id, this.username, this.accessToken, this.refreshToken, this.expiresIn});

  User.login({this.accessToken, this.refreshToken, this.expiresIn});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      expiresIn: json['expires_in']
    );
  }

  factory User.fromJsonLogin(Map<String, dynamic> json) {
    return User.login(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      expiresIn: json['expires_in']
    );
  }

}