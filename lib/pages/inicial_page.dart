import 'package:flutter/material.dart';

class InicialPage extends StatelessWidget {
  const InicialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));

    return Scaffold(
      appBar: AppBar(
        title: Text("PostinhoApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: style,
              child: Text('Login'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              style: style,
              child: Text("Cadastro"),
            ),
          ],
        ),
      ),
    );
  }
}
