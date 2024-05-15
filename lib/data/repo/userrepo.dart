import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/features/personalization/screens/autentication/model/signup/signup_model.dart';
import 'package:d9/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
     await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
     throw PlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<UserModel> fetchUserDetail() async {
    try {
      final documentSnapshot = await _db.collection("Users").doc(AuthentificationRepository.instance.authUser?.uid).get();
      if(documentSnapshot.exists){
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
     throw PlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> updateUserDetails(UserModel updateUser) async {
    try {
      await _db.collection("Users").doc(updateUser.id).update(updateUser.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
     throw PlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection("Users").doc(AuthentificationRepository.instance.authUser?.uid).update(json);
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
     throw PlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on FormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
     throw PlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }



}
