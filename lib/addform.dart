import 'package:cours_flutter_provider/saveLogin.dart';
import 'package:flutter/material.dart';

import 'connexionFormSwitch.dart';



class AddForm extends StatefulWidget {


  AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final formKey = GlobalKey<FormState>();

  String id = "";
  String password = "";

  @override
  Widget build(BuildContext context) {

      return Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top : 8),
              child: Text("Connexion à T'8h",
              style : TextStyle(
                color : Colors.grey,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onSaved : (value) => {setState(() {
                this.id = value ?? "";
                })},
                decoration: InputDecoration(
                    labelText: "Identifiant",
                    hintText: "Ex : MichelDu93"
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Id requis";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onSaved : (value) => {setState(() {
                  this.password = value ?? "";
                })},
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Mot de passe",
                    hintText: "Saisissez votre Mot de Passe"
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "MdP requis";
                  }
                  return null;
                },
              ),
            ),

            ConnexionFormSwitch(),

            SizedBox(height: 20,),

            SizedBox(
              width : double.infinity,
              height : 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColoredBox(
                  color : Colors.blue.shade600,
                  child: TextButton(
                    onPressed: () => onPressed(context),
                    child: const Text(
                      "Connexion",
                    style : TextStyle(
                      color : Colors.white
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      );

  }

  void onPressed(BuildContext context) {
    if (formKey.currentState?.validate() == true) {
      formKey.currentState?.save();
      displaySuccessDialog();
    }
  }

  void displaySuccessDialog() {
    print("id"+id);
    print(password);
    SaveLogin.setString("identifiant", id);
    SaveLogin.setString("mdp", password);
    SaveLogin.setBool("isConnected", true);

    showDialog<String>(
      context: context,
      builder: (BuildContext context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Connexion réussie'),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/feed");
                },
                child: const Text('Ok',
                style : TextStyle(
                  color : Colors.blue,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

