import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class MyLottieScreen extends StatelessWidget {
  const MyLottieScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_OFBfKg.json")),
        //Lottie.asset('assets/images/code.json')
    );
  }
}
