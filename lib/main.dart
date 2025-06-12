import 'package:flutter/material.dart';
import 'package:utilidades/dartAvancado/future/login.dart';
import 'package:utilidades/dartAvancado/isolate/product_parse.dart';
import 'package:utilidades/dartAvancado/stream/busca_com_stream.dart';
import 'package:utilidades/src/app/app_widget.dart';

void main() {
  //CMV
  //runApp(AppWidget());

  //ex future
 /*  runApp(MaterialApp(
    home: Login(),

  )); */

  //ex stream
  /* runApp(MaterialApp(
    home: BuscaComStream(),
  )); */

//ex isolate
runApp(MaterialApp(home: ProductParse(),));
}

