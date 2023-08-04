import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suporte"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Centralizar verticalmente
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2, bottom: 2),
            child: Lottie.network(
              "https://lottie.host/77b0fd56-c142-47af-baa8-ed2656b76843/e0clNS4ZBD.json",
              width: 300,
              height: 250,
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "Chame o Suporte para qualquer dúvida:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              "gestãomaisrh@gmail.com",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "55 (13) 12345-2345",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
