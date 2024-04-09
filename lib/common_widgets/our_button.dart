import 'package:e_mart_app/consts/consts.dart';

Widget ourButton({String? title, color, onPress, textColor, radiusValue}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusValue))),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make());
}
