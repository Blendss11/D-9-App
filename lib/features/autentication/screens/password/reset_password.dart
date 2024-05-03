import 'package:d9/features/autentication/screens/Login/login.dart';
import 'package:d9/utils/constans/image_strings.dart';
import 'package:d9/utils/constans/size.dart';
import 'package:d9/utils/constans/text_string.dart';
import 'package:d9/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed:()=>  Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
              Image(image: AssetImage(Timage.VerifyIcon), width: THelperFunction.screenWidth() * 0.6,),
            const SizedBox(height: TSize.spaceBTWSection,),

            Text('Ganti Password', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSize.spaceBTWItems,),
            
             Text('Kami mengirim untuk mengganti password dengan aman, jaga password mu agar akun mu terlindungi', style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
             const SizedBox(height: TSize.spaceBTWItems,),

             SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(() => LoginScreen()), child: const Text('Selesai')),),
              const SizedBox(height: TSize.spaceBTWItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text('Kirim ulang', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),),

            
          ],
        ),
        
        ),
      ),
    );
  }
}