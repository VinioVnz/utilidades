/* 
  um future representa uma operação assíncrona que retornará um unico 
  valor no futuro ou um erro

  Quando Usar
  - quando você espera um único resultado
  - ex: buscar dados da internet, ler um arquivo uma única vez, salvar dados
  no banco 
  
  Caracteristicas
  - executa uma vez e finaliza
  - pode retornar sucess (then) ou erro(catchError)
  - pode ser aguardado com await
 */

//exemplo 1
Future<String> fetchData() {
  //return Future.delayed(Duration(seconds: 2), () => "Dados Carregados");
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception("Falha ao buscar recursos"),
  );
}

//exemplo 2
Future<bool> fazerLogin(String usuario, String senha) async {
  await Future.delayed(Duration(seconds: 2));
  if(usuario == "admin" && senha == "12345"){
    return true;
  } else {
    return throw Exception("Usuário e Senha nao coincidem");
  }
  
}

//exemplo 3
Future<String> obterLocalizacao() async {
  await Future.delayed(Duration(seconds: 2));
  return "Lat: -23.0000 Long: -48.0000";
}

void main(List<String> args) async {
  //exemplo1
  /* final dados = await fetchData();
  print(dados); */

  //exemplo 2
  /* final sucesso = await fazerLogin('admin', '12345');
  print(sucesso); */

  //exemplo 3
  /*   final local = await obterLocalizacao();
  print(local); */

  //tratando erros
  /* try {
    //codigo a ser executado caso funcione
    final dados = await fetchData();
    print(dados);
  } catch (erro) {
    //codigo a ser executado caso falhe
    print(erro.toString());
  }
 */
  try {
    final sucesso = await fazerLogin('admin', '123');
    print(sucesso);
  } catch (e){
    print("Erro no login: $e");
  }
}
