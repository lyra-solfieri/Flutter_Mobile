import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastre-se Gratuitamente"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Form(
        child: ListView(
      children: <Widget>[
        //nome()
        //cpf()
        //dataNascimento()
        //endereço()
        //CartãoSUs()
      ],
    ));
  }

  Container nomeForm() {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(),
    );
  }

  Container senhaForm() {
    return Container();
  }

  Container cpfForm() {
    return Container();
  }

  Container enderecoForm() {
    return Container();
  }

  Container dataNascimentoForm() {
    return Container();
  }

  Container cartaoSusForm() {
    return Container();
  }
}
