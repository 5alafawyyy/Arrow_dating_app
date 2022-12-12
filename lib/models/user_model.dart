// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String jobTitle;
  final String bio;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.jobTitle,
    required this.bio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'imageUrls': imageUrls,
      'jobTitle': jobTitle,
      'bio': bio,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      name: map['name'] as String,
      age: map['age'] as int,
      imageUrls: List<String>.from((map['imageUrls'] as List<String>)),
      jobTitle: map['jobTitle'] as String,
      bio: map['bio'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props {
    return [
      id,
      name,
      age,
      imageUrls,
      jobTitle,
      bio,
    ];
  }

  User copyWith({
    int? id,
    String? name,
    int? age,
    List<String>? imageUrls,
    String? jobTitle,
    String? bio,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      imageUrls: imageUrls ?? this.imageUrls,
      jobTitle: jobTitle ?? this.jobTitle,
      bio: bio ?? this.bio,
    );
  }

  @override
  bool get stringify => true;

  static List<User> users = const [
    User(
      id: 1,
      name: 'Ahmed',
      age: 25,
      imageUrls: [
        'https://avatars.githubusercontent.com/u/54222207?v=4',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      jobTitle: 'Flutter Developer',
      bio: 'Flutter Developer',
    ),
    User(
      id: 2,
      name: 'Mohamed',
      age: 26,
      imageUrls: [
        'https://avatars.githubusercontent.com/u/54222207?v=4',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      jobTitle: 'Web Developer',
      bio: 'Web Developer',
    ),
    User(
      id: 3,
      name: 'Ramy',
      age: 27,
      imageUrls: [
        'https://avatars.githubusercontent.com/u/54222207?v=4',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      jobTitle: 'Petroleum Engineer',
      bio: 'Petroleum Engineer',
    ),
    User(
      id: 4,
      name: 'Samy',
      age: 50,
      imageUrls: [
        'https://avatars.githubusercontent.com/u/54222207?v=4',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      jobTitle: 'Petroleum Engineer',
      bio: 'Trader',
    ),
    User(
      id: 5,
      name: 'Rania',
      age: 20,
      imageUrls: [
        'https://avatars.githubusercontent.com/u/54222207?v=4',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      jobTitle: 'Petroleum Engineer',
      bio: 'Teacher',
    ),
  ];
}
