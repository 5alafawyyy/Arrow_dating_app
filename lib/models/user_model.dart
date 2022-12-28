// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final List<String> interests;
  final String jobTitle;
  final String bio;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.interests,
    required this.jobTitle,
    required this.bio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'imageUrls': imageUrls,
      'interests': interests,
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
      interests: List<String>.from((map['interests'] as List<String>)),
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
      interests,
      jobTitle,
      bio,
    ];
  }

  User copyWith({
    int? id,
    String? name,
    int? age,
    List<String>? imageUrls,
    List<String>? interests,
    String? jobTitle,
    String? bio,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      imageUrls: imageUrls ?? this.imageUrls,
      interests: interests ?? this.interests,
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
      interests: [
        'Music',
        'Programming',
        'Football',
      ],
      jobTitle: 'Flutter Developer',
      bio:
          'Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer Flutter Developer ',
    ),
    User(
      id: 2,
      name: 'Mohamed',
      age: 26,
      imageUrls: [
        'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      interests: [
        'Music',
        'Programming',
        'Football',
      ],
      jobTitle: 'Web Developer',
      bio:
          'Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer Web Developer ',
    ),
    User(
      id: 3,
      name: 'Ramy',
      age: 27,
      imageUrls: [
        'https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      interests: [
        'Music',
        'Programming',
        'Football',
      ],
      jobTitle: 'Petroleum Engineer',
      bio:
          'Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer',
    ),
    User(
      id: 4,
      name: 'Samy',
      age: 50,
      imageUrls: [
        'https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      interests: [
        'Music',
        'Programming',
        'Football',
        'Football',
      ],
      jobTitle: 'Trader',
      bio:
          'Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer ',
    ),
    User(
      id: 5,
      name: 'Rania',
      age: 20,
      imageUrls: [
        'https://images.unsplash.com/photo-1534614971-6be99a7a3ffd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'https://avatars.githubusercontent.com/u/54222207?v=4'
      ],
      interests: [
        'Music',
        'Programming',
        'Football',
      ],
      jobTitle: 'Teacher',
      bio:
          'Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer Petroleum Engineer ',
    ),
  ];
}
