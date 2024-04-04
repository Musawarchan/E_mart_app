import 'package:e_mart_app/common_widgets/home_buttons.dart';
import 'package:e_mart_app/consts/consts.dart';
import 'package:e_mart_app/consts/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: context.screenHeight,
      width: context.screenWidth,
      color: lightGrey,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: whiteColor,
                filled: true,
                hintText: searchAnything,
                hintStyle: TextStyle(color: textfieldGrey),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // brands swiper

                  VxSwiper.builder(
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Container(
                          child: Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make());
                    },
                  ),
                  10.heightBox,

                  // deals buttons

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButtons(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth / 2.5,
                              title: index == 0 ? todaydeal : flashSale,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              onPress: () {},
                            )),
                  ),

                  10.heightBox,

                  //second slider

                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: 150,
                    itemCount: secondSliderList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.all(8))
                            .make(),
                      );
                    },
                  ),

                  // category button

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButtons(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            title: index == 0
                                ? topCategories
                                : index == 1
                                    ? brands
                                    : topSellers,
                            onPress: () {})),
                  ),

                  10.heightBox,

                  // featurd Categories

                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredcategories.text
                          .color(darkFontGrey)
                          .size(22)
                          .fontFamily(semibold)
                          .make())
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
