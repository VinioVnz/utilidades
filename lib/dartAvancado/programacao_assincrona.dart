/* 
  programação assincrona é um modelo de programação onde as
  operações que podem levar tempo para serem concluidas 
  (como chamadas de rede, leitura de arquivos ou espera por eventos)
  são executadas sem bloquear o fluxo principal do programa.

  CONCEITO TECNICO
  em vez de esperar uma tarefa demorada terminar antes de 
  continuar, a programação assincrona registra um callback
  (função de retorno) ou usa estruturas como Future, Stream,
  async/await para deletar a tarefa e continuar executando o 
  restante do código. Quando a tarefa termina, o resultado é 
  entregue automaticamente.

  No Dart
  Future<T> => representa uma operação assincrona que eventualmente retorna um
  valor do tipo T

  async e await => permitem escrever código assincrono como se fosse sincrono

  Stream<T> => representa uma sequencia assincrona de valores (ex: eventos,
  dados em série)
 */

void main(List<String> args) {
  imprimeNumeros();
}

imprimeNumeros() async {
  numero1();
  await numero2(); //aguarda o resultado da função
  numero3();
}

numero1() {
  print("Numero 1");
}

Future<void> numero2() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Numero 2");
  });
}

numero3() {
  print("Numero 3");
}
