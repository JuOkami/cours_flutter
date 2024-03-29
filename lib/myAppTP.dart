import 'package:cours_flutter_provider/postProvider.dart';
import 'package:cours_flutter_provider/saveLogin.dart';
import 'package:cours_flutter_provider/screen/loginScreen.dart';
import 'package:cours_flutter_provider/screen/newPostScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'screen/feedScreen.dart';

void main() async {

  bool isCo = await SaveLogin.getBool("isConnected");

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => PostProvider()),
    ],
    child: MyApp(isCo),
  ));
}

class MyApp extends StatelessWidget {

  final bool isCo;
  String initialRoute = "";

  MyApp(this.isCo){
    if (isCo){
      initialRoute = "/feed";
    } else {
      initialRoute = '/';
    }
  }




  @override
  Widget build(BuildContext context)  {

    return MaterialApp(
      initialRoute : "/",
      routes : {
        '/' : (context) => LoginScreen(),
        '/feed' : (context) => FeedScreen(),
        '/new' : (context) => NewPostScreen(),
      }
    );
  }
}






