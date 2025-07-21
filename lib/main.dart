import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:utilidades/dartAvancado/future/login.dart';
import 'package:utilidades/dartAvancado/isolate/product_parse.dart';
import 'package:utilidades/dartAvancado/stream/busca_com_stream.dart';
import 'package:utilidades/src/app/app_widget.dart';
import 'package:utilidades/src/views/counter_cubit.dart';

void main() {
  //CMV
  runApp(AppWidget());

  //ex future
 /*  runApp(MaterialApp(
    home: Login(),

  )); */

  //ex stream
  /* runApp(MaterialApp(
    home: BuscaComStream(),
  )); */

//ex isolate
//runApp(MaterialApp(home: ProductParse(),));

/* 
  riverpod - é uma biblioteca de gerenciamento de estado
  desenvolvida por Rami Rousselet (criador do provider).
  ele foi criado para corrigir limitações do provider e oferecer uma 
  abordagem mais robusta, segura e flexivel.

  vantagens: 
  - seguro em tempo de compilação: detecta erros mais cedo
  - não depende de BuildContext
  - testavel e modular
  - suporte nativo para provider assincronos, como
  FutureProvider e StreamProvider

  ---------------------------------------------------------------------

  BLoC - Business Login Component
  é um padrao de arquitetura que separa a logica de negocios
  de usuário usando streams.
  Ele foi criado pelo Google para facilitar o reuso da logica em varios
  widgets.

  vantagens
  - muito usado em apps corporativos
  - força uma arquitetura bem definida
  - baseado em streams

  conceitos principais
  - event: entrada enviada pelo usuário
  - state: saída do bloco
  - bloc: recebe eventos e emite estados

  para usar precisamos instalar o pacote flutter_bloc

  bloc + cubit
  cubit é uma versao mias simples e direta do bloc, sem eventos você apenas
  chama o metodo e meite os estados diretamente
 */

  //runApp(myApp());
}

/* class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(create: (_) => CounterCubit(),
      child: CounterPage(),
      ),
    );
  }
} */

