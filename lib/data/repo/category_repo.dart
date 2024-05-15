

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d9/features/personalization/screens/autentication/model/category_model.dart';
import 'package:d9/utils/exceptions/firebase_exceptions.dart';
import 'package:d9/utils/exceptions/format_exception.dart';
import 'package:d9/utils/exceptions/platfrom_exception.dart';
import 'package:d9/utils/local_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getAllCategorys() async {
    try {
      final snapshot = await _db.collection('Categorys').get();
      final list = snapshot.docs.map((document) => CategoryModel.fromSnapshot(document)).toList();
      return list;
    
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on PlatformException catch (e) {
     throw TPlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try{
      final storage = Get.put((TfirebaseStorage()));

      for (var category in categories) {
        final file = await storage.getImageDataFromAsset(category.image);

        final url = await storage.uploadImageData('Categories', file, category.name);


        category.image = url;

        await _db.collection('Categories').doc(category.id).set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message; 
    } on PlatformException catch (e) {
     throw TPlatformException(e.code).message; 
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}