import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d9/features/personalization/screens/autentication/model/signup/signup_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await firestore.collection("Users").doc(user.id).set(user.toJson());
    // } on FirebaseException catch (e) {
    //   throw TFirebaseException(e.code).message;
    // } on FormatException catch (e) {
    //   throw TFormatException(e).message;
    // } on PlatformException catch (e) {
    //   throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong';
    }
  }
}
