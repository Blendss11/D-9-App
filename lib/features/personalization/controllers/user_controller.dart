import 'dart:math';

import 'package:d9/data/repo/re_autthenticate_user.dart';
import 'package:d9/features/personalization/screens/autentication/model/signup/signup_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:d9/data/repo/userrepo.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:d9/utils/poppups/loaders/full_screen_loader.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/helpers/network_manager.dart';
import 'package:d9/data/repo/authrepo.dart';
import 'package:d9/features/personalization/screens/autentication/screens/Login/login.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;
  final hidePassword = false.obs;
  final imageUpload = false.obs;
  final profileLoading = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> reAuthFromKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }
  
  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetail();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {

      await fetchUserRecord();

      if (user.value.id.isEmpty) {

         if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user!.displayName ?? '');
        final username =
            UserModel.generateUsername(userCredential.user!.displayName ?? '');

        final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName:
                nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            username: username,
            email: userCredential.user!.email ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? '',
            profilePicture: userCredential.user!.photoURL ?? '');

        await userRepository.saveUserRecord(user);
      }
     } 
    } catch (e) {
      Loaders.warningSnackBar(
          title: 'Data Not Saved',
          message: 'Something went wrong while saving your information');
    }
  }

  void deleteAccountWarningPopup(){
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(TSize.md),
      title: 'Delete Account',
      middleText: 'Yakin ingin menghapus akun?',
      confirm: ElevatedButton(
        onPressed: () async => deleteUserAccount(), 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, 
          side: const BorderSide(color: Colors.red)
        ), 
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: TSize.iconLg), 
          child: Text('Delete')
        )
      ),
      cancel: OutlinedButton(
        onPressed: () => Navigator.of(Get.overlayContext!).pop(), 
        child: const Text('Cancel')
      )
    );
  }

  void deleteUserAccount() async {
    try {
      TFullScreenLoader.openLoadingDialog('Prosessing', Timage.VerifyIcon);

      final auth = AuthentificationRepository.instance;
      final provider = auth.authUser!.providerData.map((e) => e.providerId).first;

      if (provider.isNotEmpty) {

        if (provider == 'google.com') {
          await auth.signInGoole();
          await auth.deleteAccount();
        }
      } else if (provider == 'Password') {
        TFullScreenLoader.stopLoading();
        Get.to(() => const ReAuthLogin());
      }
    } catch(e) {
      TFullScreenLoader.stopLoading();
      Loaders.warningSnackBar(title: 'Oh Snap', message: e.toString());
    }
  } 

 Future<void> reAuthEmailAndPassword() async {
  try {
    TFullScreenLoader.openLoadingDialog('Processing', Timage.VerifyIcon);

    final isConnected = await NetworkManager.instance.isConnected();

    if (!isConnected) {
      TFullScreenLoader.stopLoading();
      return;
    }

    if (!reAuthFromKey.currentState!.validate()) {
      TFullScreenLoader.stopLoading();
      return;
    }

    await AuthentificationRepository.instance.reAuthEmailAndPassword(
        verifyEmail.text.trim(), verifyPassword.text.trim());

    await AuthentificationRepository.instance.deleteAccount();
    TFullScreenLoader.stopLoading();

    Get.offAll(() => const LoginScreen());
  } catch (e) {
    TFullScreenLoader.stopLoading();
    Loaders.warningSnackBar(title: 'Oh Snap', message: e.toString());
  }
}

uploadUserProfile() async {
  try{
     final image = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 70, maxHeight: 512, maxWidth: 512);

  if (image != null) {
    imageUpload.value = true;

    final imageUrl = await userRepository.uploadImage("Users/Images/Profile", image);

    Map<String, dynamic> json = {'profilePicture': imageUrl};
    await userRepository.updateSingleField(json);

    user.value.profilePicture = imageUrl;
    user.refresh();
    Loaders.successSnackbar(title: 'Success', message: 'Something Went Wrong: $e');
  } 
  } catch (e) {
    Loaders.errorSnackBar(title: 'Oh snap', message: e.toString());
  }
  finally {
    imageUpload.value = false;
  }
 
}


}
