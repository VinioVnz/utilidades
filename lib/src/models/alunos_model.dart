class AlunosModel {
  String id;
  String nome;
  int idade;
  String turma;

  AlunosModel({
    required this.id,
    required this.nome,
    required this.idade,
    required this.turma,
  });

  factory AlunosModel.fromFireStore(Map<String, dynamic> data, String documentId){
    return AlunosModel(
    id: documentId, 
    nome: data['nome'] ?? '', 
    idade: data['idade'] ?? '', 
    turma: data['turma'] ?? ''
    );
  }

  Map<String, dynamic> toMap(){
    return {
      'nome' : nome,
      'idade' : idade,
      'turma' : turma
    };
  }
}
