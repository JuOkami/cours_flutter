import 'package:cours_flutter_provider/addform.dart';
import 'package:cours_flutter_provider/saveLogin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myAppBar.dart';
import '../newPostForm.dart';
import '../postProvider.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: MyAppBar(),
          ),
          body: Column(
            children: [
              AddForm(),
            ],
          ),
        );
  }
}





