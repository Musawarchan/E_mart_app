import 'package:e_mart_app/views/splash_screen/splash_screen.dart';

import 'package:get/get.dart';

import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // we are using getx so we have to change materialapp into getmaterialapp
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          useMaterial3: false,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: darkFontGrey)),
          fontFamily: regular),
      home: const SplashScreen(),
    );
  }
}
