import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

class JsonTypeAdapter<T> extends TypeAdapter<T> {

  @override
  final int typeId;
  final T Function(Map<String, dynamic>, String? id) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  JsonTypeAdapter(this.typeId, this.fromJson, this.toJson);

  @override
  T read(BinaryReader reader) {
    final jsonMap = jsonDecode(reader.readString()) as Map<String, dynamic>;
    return fromJson(jsonMap, null);
  }

  @override
  void write(BinaryWriter writer, T obj) {
    final jsonStr = jsonEncode(toJson(obj));
    writer.writeString(jsonStr);
  }
}
