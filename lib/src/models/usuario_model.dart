/* 
Autenticação e cadastro usando o firebase
 */

class UsuarioModel {
  final String uid; //no firebase o id é um hash, n sequencial
  final String nome;
  final String email;

  UsuarioModel({required this.uid, required this.nome, required this.email});

  Map<String, dynamic> toMap() {
    return {
     'uid': uid,
     'nome': nome,
     'email': email
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map){
    return UsuarioModel(
      uid: map['uid'],
      nome: map['nome'],
      email: map['email']
    );
  }
}