import 'package:d9/data/repo/userrepo.dart';
import 'package:d9/features/personalization/screens/autentication/model/signup/signup_model.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  static UserController get instance => Get.find();

  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

@override
void onInit(){
  super.onInit();
  fetchUserRecord();
}

Future<void> fetchUserRecord() async {
  try{
    final user = await userRepository.fetchUserDetails();
    this.user(user);
  } catch(e) {
     user(UserModel.empty());
  }
}


  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts = UserModel.nameParts(userCredential.user!.displayName?? '');
        final username = UserModel.generateUsername(userCredential.user!.displayName?? '');

        final user = UserModel(
          id: userCredential.user!.uid, 
          firstName: nameParts[0], 
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '', 
          username: username, 
          email: userCredential.user!.email?? '',
           phoneNumber:userCredential.user!.phoneNumber?? '', 
          profilePicture: userCredential.user!.photoURL?? ''
          );

          await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      Loaders.warningSnackBar(title: 'Data Not Saved', message: 'Something went wrong while aving your information');
    }
  }
}