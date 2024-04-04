import 'package:e_mart_app/consts/consts.dart';

Widget ourButton({String? title, color, onPress, textColor}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12), backgroundColor: color),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
