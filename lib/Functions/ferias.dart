import 'package:flutter/material.dart';// Importe o arquivo login_page.dart
import 'package:flutter/services.dart'; 

class ferias extends StatelessWidget {
  const ferias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestão+RH"),
      ),
      body: Center(
        
        child: Column(children: <Widget>[
          SizedBox(height: 60),
          Image.asset("assets/images/gestao-logo.png"),
          SizedBox(height: 50),
          Text("Férias ", 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: "Saldo: ",
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: "Proporcionais: ",
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: "Vencidas: ",
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: "Dobradas: ",
                labelStyle: TextStyle(color: Colors.purple),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ]
          ),
      ),
    );
  }
}