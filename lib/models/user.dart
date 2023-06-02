class User {
  String? email;
  String? senha;

  User({this.email, this.senha});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['senha'] = this.senha;
    return data;
  }
  String toString(){
    return "E-mail: " + this.email! + "\nSenha: " + this.senha!;
  }
}