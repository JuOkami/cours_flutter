import 'package:flutter/material.dart';

class ConnexionFormSwitch extends StatefulWidget {
  const ConnexionFormSwitch({
    super.key,
  });

  @override
  State<ConnexionFormSwitch> createState() => _ConnexionFormSwitchState();
}

class _ConnexionFormSwitchState extends State<ConnexionFormSwitch> {

  bool etat = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(value : etat,
        title : Text("Se souvenir de moi"),
        activeColor: Colors.blue,
        onChanged: (value) {
          setState(() {
            etat = !etat;
          });;
        }
    );
  }
}