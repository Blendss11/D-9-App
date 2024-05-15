import 'package:d9/data/repo/userrepo.dart';
import 'package:d9/features/personalization/screens/autentication/controllers/signup/user_controller.dart';
import 'package:d9/features/personalization/screens/profile/profile.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/helpers/network_manager.dart';
import 'package:d9/utils/poppups/loaders/full_screen_loader.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastname = TextEditingController();

  final userController = UserController.instance;
  
  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState> updateUserNameFromKey = GlobalKey<FormState>();

@override
void onInit(){
  initializeNames();
  super.onInit();
}

Future<void> initializeNames() async {
  firstName.text = userController.user.value.firstName;
  lastname.text = userController.user.value.lastName;
}

Future<void> updateUserName() async {
  try {
    TFullScreenLoader.openLoadingDialog('Sedang diupdate', Timage.VerifyIcon);

    final isConnected = await NetworkManager.instance.isConnected();

    if(!isConnected) {
      TFullScreenLoader.stopLoading();
      return;
    }

    
    if(!updateUserNameFromKey.currentState!.validate()) {
      TFullScreenLoader.stopLoading();
      return;
    }

    Map<String, dynamic> name = {'FirstName': firstName.text.trim(), 'LastName': lastname.text.trim()};
    await userRepository.updateSingleField(name);

    userController.user.value.firstName = firstName.text.trim();
    userController.user.value.lastName = lastname.text.trim();

    TFullScreenLoader.stopLoading();

    Loaders.successSnackbar(title: 'Success Update', message: 'Your name has been Update');

    Get.off(() => const ProfileScreen());

    
  } catch (e) {
    TFullScreenLoader.stopLoading();
    Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}


}