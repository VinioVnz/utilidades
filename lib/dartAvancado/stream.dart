/* 
  uma stream representa uma fonte de eventos/dados que ocorrem ao longo 
  do tempo

  Quando Usar
  - quando você precisa escutar atualizações continuas
  - ex: GPS, mensagens de chat, digitação em tempo real, eventos de usuário

  CARACTERÍSTICAS
  - pode emitir valores com yield
  - pode durar indefinidamente
  - pode ser usada com listen ou await for
  - devemos usar async* para declarar funções assíncronas que retornam uma 
    stream
 */

//exemplo 1 - contador de tempo
/* Stream<int> contarTempo() async*{
  for(int i = 0; i < 10; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i; //yield serve como um emissor, ele emite a nova informação para a
             //stream como se fosse um return. Porém sem finalizar a função.
    
  }
}

//exemplo 2 - simulação de chat
Stream<String> mensagemChat() async*{
  yield 'oi';
  await Future.delayed(Duration(seconds: 1));
  yield 'tudo bem?';
  await Future.delayed(Duration(seconds: 1));
  yield 'sim e vc?';
  await Future.delayed(Duration(seconds: 1));
  yield 'q bom!';
  await Future.delayed(Duration(seconds: 1));
  yield 'tchau';
}
 */

/* void main(List<String> args) {
  //exemplo 1
   contarTempo().listen(
    (event) => print("mensagem: $event"),
    onDone: () => print("Stream finalizada"),
  ); 

  //exemplo 2
   mensagemChat().listen(
    (event) => print(event),
    onDone:() => print("fim do chat")
  ); 


} */

//exemplos com controle de erro try catch
Stream<int> contarTempo() async*{
  try{
    for(int i = 0; i < 10; i++){
      await Future.delayed(Duration(seconds: 1));
      if(i == 3){
        throw Exception("Erro ao contar o numero $i");
      }
      yield i;
    }
  }catch(e){
    print("Erro no contador de tempo: $e");
  }
}

void main(List<String> args) {
  contarTempo().listen(
    (event) => print("Número $event"),
    onError: (erro) => print(erro),
    onDone: () => print("Finalizado"),
  );
}