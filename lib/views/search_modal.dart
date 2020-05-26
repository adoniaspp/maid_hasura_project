import 'package:flutter/material.dart';

class Search_Modal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Procurar'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Nome Completo"),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Pesquisar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
