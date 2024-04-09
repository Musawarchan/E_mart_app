import 'package:e_mart_app/consts/consts.dart';

Widget detailsCard({width, String? title, String? quantity}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      quantity!.text.size(16).fontFamily(bold).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make()
    ],
  )
      .box
      .white
      .roundedSM
      .width(width)
      .height(65)
      .padding(const EdgeInsets.all(4))
      .make();
}
