import 'package:isar/isar.dart';

part 'message_model.g.dart';

@collection
class MessageModel {
  Id id = Isar.autoIncrement;
  bool isMine;
  String message;
  int? point;
  DateTime date;

  MessageModel({
    this.id = Isar.autoIncrement,
    required this.isMine,
    required this.message,
    required this.date,
    this.point,
  });
}
