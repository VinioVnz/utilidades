import 'package:flutter/material.dart';
import 'package:utilidades/src/controllers/usuario_controller.dart';
import 'package:utilidades/src/views/firebase_register_view.dart';

class FirebaseLoginView extends StatefulWidget {
  const FirebaseLoginView({super.key});

  @override
  State<FirebaseLoginView> createState() => _FirebaseLoginViewState();
}

class _FirebaseLoginViewState extends State<FirebaseLoginView> {
  bool _loading = false;
  String? _erro;
  UsuarioController _controller = UsuarioController();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  void _login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
        _erro = null;
      });
      final usuario = await _controller.autenticar(
        _emailController.text,
        _senhaController.text,
      );
      setState(() {
        _loading = false;
      });

      if(usuario != null){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Bem vindo ${usuario.nome}')));
        Navigator.pushReplacementNamed(context, '/home');
      }
      else {
        setState(() {
          _erro = 'E-mail ou senha inválidos';
        });
      }
    }
  }

  void _abrirCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const FirebaseRegisterView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login com firebase'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(_erro != null)...[
                Text(_erro!, style: TextStyle(color: Colors.red),),
                SizedBox(height: 20,)
              ],
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.isEmpty ? "Informe o e-mail" : null,
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null || value.length < 6  ? 'Senha inválida' : null,
              ),
              SizedBox(height: 16),
              //botao de loading
              _loading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(onPressed: _login, child: Text('Entrar')),
              TextButton(
                onPressed: _abrirCadastro,
                child: Text('Não tem conta? Cadastre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
