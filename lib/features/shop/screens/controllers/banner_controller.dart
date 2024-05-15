import 'package:d9/data/repo/bannerrepo.dart';
import 'package:d9/features/shop/screens/model/banner_moder.dart';
import 'package:d9/utils/poppups/loaders/loaders.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  //var
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchBanner();
    super.onInit();
  }

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //fetch
  Future<void> fetchBanner() async {
    try {
      isLoading.value = true;

      final bannerRepo = Get.put(BannerRepo());
      final banners = await bannerRepo.fetchBanner();

      //assign
      this.banners.assignAll(banners);
    } catch (e) {
      Loaders.errorSnackBar(title: 'Gagal!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
