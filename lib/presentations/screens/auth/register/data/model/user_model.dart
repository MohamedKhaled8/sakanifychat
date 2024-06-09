import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sakanifychat/helper/formatter_services.dart'; 


class UserModel {
  final String? id;
  final String username;
  final String email;
  final String phoneNumber;
  final String password;
  String profilePic;
  UserModel({
    this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.profilePic,
  });

  String get formattedPhoneNumber =>
      FormatterServices.formatPhoneNumber(phoneNumber);

  static UserModel empty() => UserModel(
      username: "", email: "", phoneNumber: "", password: "", profilePic: "");

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'profilePic': profilePic,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        username: data['username'] ?? '',
        email: data['email'] ?? '',
        phoneNumber: data['phoneNumber'] ?? '',
        password: data['password'] ?? '',
        profilePic: data['profilePic'] ?? '',
      );
    } else {
      throw Exception("Document data is null");
    }
  }
}
