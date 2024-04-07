import 'package:e_mart_app/common_widgets/bg_widget.dart';
import 'package:e_mart_app/consts/consts.dart';
import 'package:e_mart_app/consts/list.dart';
import 'package:e_mart_app/views/category_screen/item_details.dart';

import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      6,
                      (index) => categoiesList[index]
                          .text
                          .fontFamily(semibold)
                          .size(12)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .size(120, 60)
                          .padding(const EdgeInsets.all(8))
                          .rounded
                          .margin(const EdgeInsets.symmetric(horizontal: 8))
                          .make())),
            ),
            20.heightBox,
// items contianer
            Expanded(
                child: GridView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imgPi3,
                      height: 150,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    "Iphone 4GB/64GB"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    "\$600"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(16)
                        .make()
                  ],
                )
                    .box
                    .white
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .roundedSM
                    .outerShadowSm
                    .padding(const EdgeInsets.all(12))
                    .make()
                    .onTap(() {
                  Get.to(() => ItemDetails(title: categoiesList[index]));
                });
              },
            ))
          ],
        ),
      ),
    ));
  }
}
