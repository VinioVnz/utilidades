import 'package:flutter/widgets.dart';
import 'package:utilidades/src/models/product_model.dart';
import 'package:utilidades/src/services/product_service.dart';

class ProductController {
  final ProductService _service = ProductService();
  //listar produtos
  Future<List<ProductModel>> fetchProdutos(BuildContext context) => _service.getAll(context);
  //criar produto
  Future<void> criarProduto(ProductModel produto) => _service.create(produto);
  //atualizar o produto
  Future<void> atualizarProduto(ProductModel produto) => _service.update(produto);
  //deletar produto
  Future<void> deletarProduto(int id) => _service.delete(id);
}
