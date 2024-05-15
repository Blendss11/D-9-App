import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d9/features/shop/screens/model/banner_moder.dart';
import 'package:d9/utils/exceptions/firebase_exceptions.dart';
import 'package:d9/utils/exceptions/format_exception.dart';
import 'package:d9/utils/exceptions/platfrom_exception.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BannerRepo extends GetxController {
  static BannerRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<BannerModel>> fetchBanner() async {
    try {
      final result = await _db
          .collection('Banners')
          .where('active', isEqualTo: true)
          .get();
      return result.docs
          .map((documentSnapshot) => BannerModel.fromSnapshot(documentSnapshot))
          .toList();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
