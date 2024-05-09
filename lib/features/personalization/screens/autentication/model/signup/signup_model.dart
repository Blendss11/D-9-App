// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:d9/utils/formater/formatter.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName' '$lastName';
  String get formattedPhoneNumber => Tformatter.formatPhoneNumber(phoneNumber);
  
  static List<String> nameParts(fullName) => fullName.split(" ");
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastname = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastname";
    String userNameWithPrefix = "cwt_$camelCaseUsername";
    return userNameWithPrefix;
  }

  static UserModel empty() => UserModel(
      id: '',
      firstName: '',
      lastName: '',
      username: '',
      email: '',
      phoneNumber: '',
      profilePicture: '');

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          firstName: data['firstName'],
          lastName: data['lastName'],
          username: data['username'] ,
          email: data['email'],
          phoneNumber: data['phoneNumber'],
          profilePicture: data['profilePicture']);
    } 
    else {
      return empty();
    }
  }
}
