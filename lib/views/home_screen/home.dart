import 'package:e_mart_app/consts/consts.dart';
import 'package:e_mart_app/controllers/home_controller.dart';
import 'package:e_mart_app/views/cart_screen/cart_screen.dart';
import 'package:e_mart_app/views/category_screen/category_screen.dart';
import 'package:e_mart_app/views/home_screen/home_screen.dart';
import 'package:e_mart_app/views/profile_screen/profile_screen.dart';

import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
// init controller
    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: accounts)
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navBarItem,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
