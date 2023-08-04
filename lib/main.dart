import 'package:flutter/material.dart';
import 'package:gestao_mais/MyBar/Preferencia_tema.dart';
import 'login_page.dart';


void main() {
  final preferenciaTema = PreferenciaTema(); // Instância global
  runApp(App());
}


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App>  with WidgetsBindingObserver{

  @override 
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    PreferenciaTema.setTema();
    super.initState();
  }


  @override
void dispose() {
  WidgetsBinding.instance!.removeObserver(this);
  super.dispose();
}

@override
void didChangePlatformBrightness() {
  super.didChangePlatformBrightness();
}

@override
Widget build(BuildContext context) {
  return ValueListenableBuilder(
    valueListenable: PreferenciaTema.tema,
    builder: (BuildContext context, Brightness tema, _) => MaterialApp(
      title: "Gestão + RH",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: tema,
      ),
      home: LoginPage(),
    ),
  );
}
}

 


