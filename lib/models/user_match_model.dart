import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:arrow_dating_app/models/models.dart';

class UserMatch extends Equatable {
  final int id;
  final int userId;
  final User matchedUser;
  final List<Chat>? chat;

  const UserMatch({
    required this.id,
    required this.userId,
    required this.matchedUser,
    this.chat,
  });

  UserMatch copyWith({
    int? id,
    int? userId,
    User? matchedUser,
    List<Chat>? chat,
  }) {
    return UserMatch(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      matchedUser: matchedUser ?? this.matchedUser,
      chat: chat ?? this.chat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'matchedUser': matchedUser.toMap(),
      'chat': chat?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserMatch.fromMap(Map<String, dynamic> map) {
    return UserMatch(
      id: map['id'] as int,
      userId: map['userId'] as int,
      matchedUser: User.fromMap(map['matchedUser'] as Map<String, dynamic>),
      chat: map['chat'] != null
          ? List<Chat>.from(
              (map['chat'] as List<int>).map<Chat?>(
                (x) => Chat.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserMatch.fromJson(String source) =>
      UserMatch.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, userId, matchedUser, chat];

  static List<UserMatch> matches = [
    UserMatch(
      id: 1,
      userId: 1,
      matchedUser: User.users[1],
      chat: Chat.chats
          .where((chat) => chat.userId == 1 && chat.matchedUserId == 2)
          .toList(),
    ),
    UserMatch(
      id: 2,
      userId: 1,
      matchedUser: User.users[2],
      chat: Chat.chats
          .where((chat) => chat.userId == 1 && chat.matchedUserId == 2)
          .toList(),
    ),
  ];
}
