import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets5.lottiefiles.com/packages/lf20_ctmwfcrk.json',
      repeat: true,
      reverse: true,
      animate: true,
      height: 200,
    );
  }
}
