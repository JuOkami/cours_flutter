import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post{
  int id;
  String author;
  String message;
  late String category;

  Post({
    required this.id,
    required this.author,
    required this.message,
    this.category = "Néant",
  });


  Post.categorized({
    required this.id,
    required this.author,
    required this.message,
    required this.category});

  /*  static Post fromJson(Map<String, dynamic> json){
    return Post(id: json['id'], author: json['author'], message: json['message']);
  }*/
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PostToJson(this);


}