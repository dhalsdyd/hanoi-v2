import 'package:hanoi_v2/app/pages/home/binding.dart';
import 'package:hanoi_v2/app/pages/home/page.dart';
import 'package:hanoi_v2/app/routes/route.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomePageBinding()),
  ];
}
