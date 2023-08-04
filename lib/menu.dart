import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gestao_mais/MyBar/Configuration.dart';
import 'package:gestao_mais/Functions/ferias.dart';
import 'package:gestao_mais/Functions/horas_info.dart';
import 'package:gestao_mais/MyBar/contact.dart';
import 'package:lottie/lottie.dart';
import 'MyBar/myProfile.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestão+RH"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 197, 158, 204),
              ),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Meu Perfil'),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => myProfile() )
                 );
                // Ação a ser executada quando o item do menu for clicado.
              },
            ),
            ListTile(
              leading: Icon(Icons.phone_enabled),
              title: Text('Suporte'),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => contact() )
                 );
                // Ação a ser executada quando o item do menu for clicado.
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfiguracoesPage(onDarkModeChanged: (bool ) {  },))
                );
                // Ação a ser executada quando o item do menu for clicado..
              },
            ),
            // Mais itens do menu podem ser adicionados aqui
          ],
        ),
      ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 2, bottom: 14),
              child: Lottie.network(
                "https://lottie.host/d5f44b14-7ec3-49a5-ad4f-5faf80590f98/x2HaoVoRCm.json",
                width: 300,
                height: 250,
              ),
            ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => hours() ),
              );
              print("Area de Relatorio");
            },
            child: Text("Horários e Informações", 
            style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                    ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ferias() ));
            },
            child: Text("Férias", 
            style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 30),
                    ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("Sair", 
            style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 160, vertical: 30),
                    ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              print("Ligue para tal tal tal");
            },
            child: Text("Para reportar algum erro ligue: 0800 xxxx",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
        ]
        ),
      ),
    );
  }
}
