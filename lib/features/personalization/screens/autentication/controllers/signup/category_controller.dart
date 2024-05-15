

import 'package:d9/data/repo/category_repo.dart';
import 'package:d9/features/personalization/screens/autentication/model/category_model.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

final isLoading = false.obs;
final _categoryRepository = Get.put(CategoryRepository());
 RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
 RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
  

  GlobalKey<FormState> updateUserNameFromKey = GlobalKey<FormState>();

@override
void onInit(){
  fetchCategories();
  super.onInit();
}

Future<void> fetchCategories() async {
    try {
     isLoading.value = true;

     final categories = await _categoryRepository.getAllCategorys();

     allCategories.assignAll(categories);

     featuredCategories.assignAll(allCategories.where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());
     
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }


}