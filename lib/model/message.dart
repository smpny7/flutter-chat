import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  final String id;
  @JsonKey(name : 'user_name')
  final String userName;
  final String text;
  @JsonKey(name : 'created_at')
  final DateTime createdAt;
  @JsonKey(name : 'updated_at')
  final DateTime updatedAt;
  Message({required this.id, required this.userName, required this.text, required this.createdAt, required this.updatedAt});

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}