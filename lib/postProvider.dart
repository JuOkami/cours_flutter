import 'package:cours_flutter_provider/saveLogin.dart';
import 'package:cours_flutter_provider/util/callTweetApi.dart';
import 'package:flutter/material.dart';

import 'model/post.dart';

class PostProvider with ChangeNotifier {

  List<Post> posts = [];
  List<Post> generatedPosts = [];
  String dropDownSelectedValue = "";
  String accountName = "";

  PostProvider() {
    dropDownSelectedValue = "Politique";
    getPosts();
    getAccountName();
  }

  void getPosts() async {
    posts.clear();
    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    posts = await CallTweetApi.callApi();
    if (!generatedPosts.isEmpty){
      for (Post post in generatedPosts){
        posts.add(post);
      }
    }
    notifyListeners();
  }

  void getAccountName() async {
    accountName = await SaveLogin.getString("identifiant");
  }

  void addPost(Post post) {
    post.id = posts.length+1;
    generatedPosts.add(post);
    getPosts();
  }

  void modifyDropDownItem(String item){
    dropDownSelectedValue = item;
    notifyListeners();
  }

}