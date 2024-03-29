// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tweet _$TweetFromJson(Map<String, dynamic> json) => Tweet(
      auteur: json['auteur'] as String,
      contenu: json['contenu'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$TweetToJson(Tweet instance) => <String, dynamic>{
      'auteur': instance.auteur,
      'contenu': instance.contenu,
      'image': instance.image,
    };
