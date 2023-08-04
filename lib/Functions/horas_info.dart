import 'package:flutter/material.dart';// Importe o arquivo login_page.dart
import 'package:flutter/services.dart'; 

class hours extends StatelessWidget {
  const hours({super.key});

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
          Text("Horários e Informações", 
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: "Horas Trabalhadas: ",
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
                labelText: "Faltas: ",
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
                labelText: "Horário de Trabalho: ",
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
                labelText: "Horário de Intervalo: ",
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