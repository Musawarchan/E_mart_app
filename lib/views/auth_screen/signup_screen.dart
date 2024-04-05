import 'package:e_mart_app/common_widgets/applogo_widgets.dart';
import 'package:e_mart_app/common_widgets/bg_widget.dart';
import 'package:e_mart_app/common_widgets/custom_textfield.dart';
import 'package:e_mart_app/common_widgets/our_button.dart';
import 'package:e_mart_app/consts/consts.dart';

import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

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
          "join the $appname".text.white.size(18).fontFamily(bold).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(title: name, hint: nameHint),
              10.heightBox,
              customTextField(title: email, hint: emailHint),
              10.heightBox,
              customTextField(title: password, hint: passwordHint),
              10.heightBox,
              customTextField(title: reTypePassword, hint: passwordHint),
              10.heightBox,
              Row(
                children: [
                  Checkbox(
                    activeColor: redColor,
                    value: isCheck,
                    onChanged: (value) {
                      isCheck = value;
                      setState(() {});
                    },
                  ),
                  10.widthBox,
                  Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                    TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(
                          color: fontGrey,
                          fontFamily: regular,
                        )),
                    TextSpan(
                        text: termsAndConditions,
                        style: TextStyle(
                          color: redColor,
                          fontFamily: regular,
                        )),
                    TextSpan(
                        text: "&",
                        style: TextStyle(
                          color: fontGrey,
                          fontFamily: regular,
                        )),
                    TextSpan(
                        text: privacyPolicy,
                        style: TextStyle(
                          color: redColor,
                          fontFamily: regular,
                        ))
                  ])))
                ],
              ),
              ourButton(
                      title: signUp,
                      color: isCheck == true ? redColor : lightGrey,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenHeight - 50)
                  .make(),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alredayHaveAnAccount.text.color(fontGrey).make(),
                  login.text.color(redColor).make()
                ],
              ).onTap(() {
                Get.back();
              })
            ],
          )
              .box
              .white
              .rounded
              .width(context.screenWidth - 70)
              .padding(const EdgeInsets.all(16))
              .make(),
        ],
      )),
    ));
  }
}
