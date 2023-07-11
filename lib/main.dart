import 'package:flutter/material.dart';
import 'package:sesion_five_flutter/books/booksView.dart';
import 'package:sesion_five_flutter/my_lottie/view.dart';
import 'package:sesion_five_flutter/row/view.dart';
import 'package:sesion_five_flutter/screens/cities/view.dart';
import 'package:sesion_five_flutter/sesion_one/view.dart';
import 'package:sesion_five_flutter/stack/sstack.dart';
import 'package:sesion_five_flutter/telegram/view.dart';
import 'package:sesion_five_flutter/warp_widget/warp_horizental_screen.dart';
import 'package:sesion_five_flutter/warp_widget/wrap_vertical_screen.dart';
import 'core/res.dart';
import 'culom/coulm.dart';
import 'culom/view.dart';
import 'my_imges/view.dart';
import 'myslider/view.dart';
import 'screen_two/second_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
         primarySwatch:getMaterialColor(Color (0xffFC6011))
     ),
     home:PageView(
       children: [
         MyGallaryScreen(),
         // MyLottieScreen(),
         // MySliderView(),
         // CitiesScreen(),
         // TelegramScreen(),
         // Colm(),
         // sstack(),
         // VerticalWrap(),
         // HorizentalWrap(),
         // Culom(),
         RowR(),
       ],
     )
     //MainPage(),
   );
  }

}
MaterialColor getMaterialColor(Color color) {
  final int red = color.red;
  final int green = color.green;
  final int blue = color.blue;
  final int alpha = color.alpha;

  final Map<int, Color> shades = {
    50: Color.fromARGB(alpha, red, green, blue),
    100: Color.fromARGB(alpha, red, green, blue),
    200: Color.fromARGB(alpha, red, green, blue),
    300: Color.fromARGB(alpha, red, green, blue),
    400: Color.fromARGB(alpha, red, green, blue),
    500: Color.fromARGB(alpha, red, green, blue),
    600: Color.fromARGB(alpha, red, green, blue),
    700: Color.fromARGB(alpha, red, green, blue),
    800: Color.fromARGB(alpha, red, green, blue),
    900: Color.fromARGB(alpha, red, green, blue),
  };

  return MaterialColor(color.value, shades);
}