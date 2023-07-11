
import 'package:flutter/material.dart';

MaterialColor buildMaterialColor(int color ){
  Color c =Color(color);

  Map<int, Color> colorCods =
  {
    50:Color.fromRGBO(c.red,c.green,c.blue, .1),
    100:Color.fromRGBO(c.red,c.green,c.blue, .2),
    200:Color.fromRGBO(c.red,c.green,c.blue, .3),
    300:Color.fromRGBO(c.red,c.green,c.blue, .4),
    400:Color.fromRGBO(c.red,c.green,c.blue, .5),
    500:Color.fromRGBO(c.red,c.green,c.blue, .6),
    600:Color.fromRGBO(c.red,c.green,c.blue, .7),
    700:Color.fromRGBO(c.red,c.green,c.blue, .8),
    800:Color.fromRGBO(c.red,c.green,c.blue, .9),
    900:Color.fromRGBO(c.red,c.green,c.blue, 1),
  };
  MaterialColor colorCustom = MaterialColor(color, colorCods);
  return colorCustom;
}