import 'package:flutter/material.dart';
import 'Preferencia_tema.dart';

class ConfiguracoesPage extends StatefulWidget {
  final Function(bool) onDarkModeChanged;

  ConfiguracoesPage({required this.onDarkModeChanged});

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  bool _darkModeEnabled = false;
  PreferenciaTema _preferenciaTema = PreferenciaTema();

  @override
  void initState() {
    super.initState();
    _darkModeEnabled = PreferenciaTema.tema.value == Brightness.dark;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Modo Escuro"),
            trailing: Switch(
              value: _darkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _darkModeEnabled = value;
                  PreferenciaTema.tema.value =
                      value ? Brightness.dark : Brightness.light;
                  PreferenciaTema.changeStatusNavigationBar();
                  widget.onDarkModeChanged(_darkModeEnabled);
                });
              },
            ),
          ),
          // Adicione outras opções de configurações aqui
        ],
      ),
    );
  }
}
