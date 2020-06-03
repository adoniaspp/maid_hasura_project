class Usuario {
  String dataNascimento;
  String email;
  int idUsuario;
  String nomeCompleto;
  String numeroCelular;
  String usuario;

  Usuario(
      {this.dataNascimento,
      this.email,
      this.idUsuario,
      this.nomeCompleto,
      this.numeroCelular,
      this.usuario});

  Usuario.fromJson(Map<String, dynamic> json) {
    dataNascimento = json['data_nascimento'];
    email = json['email'];
    idUsuario = json['id_usuario'];
    nomeCompleto = json['nome_completo'];
    numeroCelular = json['numero_celular'];
    usuario = json['usuario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data_nascimento'] = this.dataNascimento;
    data['email'] = this.email;
    data['id_usuario'] = this.idUsuario;
    data['nome_completo'] = this.nomeCompleto;
    data['numero_celular'] = this.numeroCelular;
    data['usuario'] = this.usuario;
    return data;
  }
}