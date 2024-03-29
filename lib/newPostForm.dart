import 'package:cours_flutter_provider/postProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/post.dart';

class NewPostForm extends StatelessWidget{
  final _formKey = GlobalKey<FormState>();

  void _addPost(BuildContext context, Post post) {
    context.read<PostProvider>().addPost(post);
  }

  void _modifyDropDown(BuildContext context, String item) {
    context.read<PostProvider>().modifyDropDownItem(item);
  }

  Map<String, String> values = {};
  List<String> _items = ['Politique', 'Culture', 'Patate douce', 'Musique'];


  validate(BuildContext context){
    _formKey.currentState?.save();
  String submittedAuthor = values["author"] ?? "";
  String submittedContent = values["content"] ?? "";
  String submittedCategory = context.read<PostProvider>().dropDownSelectedValue;
  Post post = Post.categorized(
      id : 0,
      author: submittedAuthor,
      message: submittedContent,
      category : submittedCategory);
  _addPost(context, post);
  Navigator.pushNamed(context, '/feed');
  }

  @override
  Widget build(BuildContext context) {

    String _selectedDropDownItem = context.watch<PostProvider>().dropDownSelectedValue;

    return Form(
      key : _formKey,
      child : Column(
        children : [
          TextFormField(
            onSaved: (value) {
              values['author'] = value ?? "";
            },
            decoration: InputDecoration(
                labelText: "Auteur",
                hintText: "Ex : MichelDu93"
            ),
          ),
          TextFormField(
            onSaved: (value) {
              values['content'] = value ?? "";
            },
            maxLines: 4,
            decoration: InputDecoration(
                labelText: "Contenu",
                hintText: "Ex : MichelDu93"
            ),
          ),
          DropdownButton<String>(
            value: _selectedDropDownItem ?? "",
            onChanged: (newValue) => _modifyDropDown(context, newValue ?? ""),
            items: _items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              validate(context);
            },
            child: const Text('Submit'),
          ),
        ],
      )
    );
  }

}