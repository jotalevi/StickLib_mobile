import 'dart:convert';

class User {
  User({
    required this.userId,
    required this.userMail,
    required this.userName,
    required this.profilePic,
  });

  String userId;
  String userMail;
  String userName;
  String profilePic;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        userMail: json["userMail"],
        userName: json["userName"],
        profilePic: json["profilePic"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "userMail": userMail,
        "userName": userName,
        "profilePic": profilePic,
      };
}
