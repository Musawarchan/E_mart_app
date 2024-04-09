import 'package:e_mart_app/common_widgets/bg_widget.dart';
import 'package:e_mart_app/consts/consts.dart';
import 'package:e_mart_app/consts/list.dart';

import 'package:e_mart_app/views/profile_screen/components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile2,
                    width: 100,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.heightBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy User".text.white.fontFamily(semibold).make(),
                      "abxc@gmail.com".text.white.make()
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: whiteColor)),
                      onPressed: () {},
                      child: "Logout".text.white.fontFamily(semibold).make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(
                    width: context.screenWidth / 3.4,
                    quantity: '00',
                    title: "in my cart"),
                detailsCard(
                    width: context.screenWidth / 3.4,
                    quantity: '32',
                    title: "in Your whislist"),
                detailsCard(
                    width: context.screenWidth / 3.4,
                    quantity: '675',
                    title: "your orders"),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(
                color: lightGrey,
              ),
              itemCount: profileButtonsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: profileButtonsList[index]
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  leading: Image.asset(
                    color: darkFontGrey,
                    profileButtonIcons[index],
                    width: 22,
                  ),
                );
              },
            )
                .box
                .white
                .shadowSm
                .rounded
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make(),
          ],
        ),
      ),
    ));
  }
}
