import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


import 'menu.dart';

Future<void> fakeLoading() async {
  await Future.delayed(Duration(seconds: 8)); // Simula uma espera de 2 segundos
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Removendo o AppBar
      body: FutureBuilder(
        future: fakeLoading(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return LoadingScreen();
          } else {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 150),
                  Image.asset(
                    "assets/images/gestao-logo.png",
                    width: 300,
                    height: 180,
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      controller: _loginController,
                      decoration: InputDecoration(
                        labelText: "Login",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      print("Esqueceu a senha?");
                    },
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      String login = _loginController.text;
                      String password = _passwordController.text;

                      if (login == "admin" && password == "1234") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );
                      } else {
                        print("Login ou senha incorretos");
                      }
                    },
                    child: Text("Entrar"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Desenvolvido por ",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                        ),
                        Image.asset(
                          "assets/images/intersy-logo.png",
                          width: 30, 
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 169, 119, 178),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 120, bottom: 24),
              child: Lottie.network(
                "https://lottie.host/fe104fcb-1d23-4fc1-9440-4608ec22f319/HuPhee7g3s.json",
                width: 500,  
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestão + RH",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: LoadingScreen(), // Mostra a tela de carregamento primeiro
    );
  }
}