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
                fillColor: whiteColor,
                filled: true,
                hintText: searchAnything,
                hintStyle: TextStyle(color: textfieldGrey),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),

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
          )
        ],
      )),
    );
  }
}
