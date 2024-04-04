import 'package:e_mart_app/consts/consts.dart';

Widget featuredButton({String? title, image}) {
  return Row(
    children: [
      Image.asset(
        image,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .white
      .width(200)
      .roundedSM
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .padding(const EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
