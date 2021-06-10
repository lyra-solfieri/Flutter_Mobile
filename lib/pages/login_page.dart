import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({Key key}) : super(key: key);
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de acesso ao postinho'),
      ),
      body: _body(context),
    );
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return "Informe o login";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Informe a senha";
    }
    return null;
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          textFormLogin(),
          textFormFieldSenha(),
          containerButton(context),
        ],
      ),
    );
  }

  TextFormField textFormLogin() {
    return TextFormField(
        controller: _tLogin,
        validator: _validateLogin,
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Login",
            labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
            hintText: "Informe o login"));
  }

  TextFormField textFormFieldSenha() {
    return TextFormField(
      controller: _tSenha,
      validator: _validateSenha,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Senha",
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        hintText: "Informe a senha",
      ),
    );
  }

  _onClickLogin(BuildContext context) {
    final login = _tLogin.text;
    final senha = _tSenha.text;

    print("Login: $login , Senha: $senha ");

    if (!_formKey.currentState.validate()) {
      return;
    }
  }

  Container containerButton(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        onPressed: () {
          _onClickLogin(context);
        },
      ),
    );
  }
}
