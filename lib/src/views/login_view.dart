import 'package:flutter/material.dart';
import 'package:utilidades/src/controllers/login_controller.dart';
import 'package:utilidades/src/models/user_model.dart';
import 'package:utilidades/src/services/auth_service.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _controller = LoginController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _message = '';
  bool _isLoading = false;

  /* void _handleLogin() async {
    final sucess = await _controller.login(
      _usernameController.text,
      _passwordController.text,
    );

    if (sucess) {
      AuthService.login();
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      setState(() {
        _message = 'Usuário ou senha incorretos';
      });
    }
  } */
/* 
  void _handleLogin() async {
    setState(() {
      _isLoading = true;
    });

    final user = UserModel(
      username: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
    );

    final success = await _controller.login(user);

    setState(() {
      _isLoading = false;
    });

    if (success) {
      ScaffoldMessenger.of(
        context).showSnackBar(
          SnackBar(content: Text("Bem vindo ${user.username}!")));
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(
        context).showSnackBar(
          SnackBar(content: Text("Dados de login incorretos")));
    }
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Image.asset('assets/images/logo.png'),
            ),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                labelText: "Usuário",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Digite seu usuário",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 12),
            //senha
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                ),
                labelStyle: TextStyle(color: Colors.black),
                labelText: "Senha",
                hintText: "Digite sua senha",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            _isLoading ? const CircularProgressIndicator() : Container(
              width: 120,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: (){}, //_handleLogin,
                child: Text("Entrar", style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(height: 16),
            Text(_message, style: TextStyle(color: Colors.red, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
