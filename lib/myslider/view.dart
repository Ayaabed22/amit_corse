import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
class MySliderView extends StatelessWidget {
  const MySliderView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Colors.white,
      finishButtonText: 'Register',
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Colors.black,
      ),
      skipTextButton: Text('Skip'),
      trailing: Text('Login'),
      background: [
        Center(child: Image.asset('assets/images/car_one.jpg',height: 400,)),
        Center(child: Image.asset('assets/images/car_one.jpg',height: 400,)),],
      totalPage: 2,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 1'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 2'),
            ],
          ),
        ),
      ],
    );
  }
}
