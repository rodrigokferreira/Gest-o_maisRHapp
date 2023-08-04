import 'package:lottie/lottie.dart';
import 'package:gestao_mais/Functions/horas_info.dart';
import 'package:flutter/material.dart';

class myProfile extends StatelessWidget {
  const myProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perfil"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2, bottom: 14),
            
          ),
        ],
      ),
    );
  }
}