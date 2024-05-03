import 'package:d9/features/autentication/screens/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();


  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;


  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage(){
    if(currentPageIndex.value == 1){
      Get.offAll(const LoginScreen());

    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
  


}