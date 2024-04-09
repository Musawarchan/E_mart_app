import 'package:e_mart_app/common_widgets/applogo_widgets.dart';
import 'package:e_mart_app/common_widgets/bg_widget.dart';
import 'package:e_mart_app/common_widgets/custom_textfield.dart';
import 'package:e_mart_app/common_widgets/our_button.dart';
import 'package:e_mart_app/consts/consts.dart';
import 'package:e_mart_app/consts/list.dart';
import 'package:e_mart_app/views/auth_screen/signup_screen.dart';
import 'package:e_mart_app/views/home_screen/home.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * .1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Login in to $appname".text.white.size(18).fontFamily(bold).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPassword.text.make()),
                ),
                5.heightBox,
                ourButton(
                        radiusValue: 0.0,
                        title: login,
                        color: redColor,
                        onPress: () {
                          Get.to(() => const Home());
                        },
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                        radiusValue: 0.0,
                        title: signUp,
                        color: lightGolden,
                        onPress: () {
                          Get.to(() => const SignUpScreen());
                        },
                        textColor: redColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWidth.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    socialIconList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: lightGrey,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
