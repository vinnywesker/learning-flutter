import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size page = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(page.width / 2.1),
                ),
                child: Container(
                  height: page.height * 0.32,
                  color: Colors.grey.shade800,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(page.width / 2),
                ),
                child: Container(
                  height: page.height * 0.3,
                  color: Colors.green,
                  alignment: AlignmentDirectional.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Bem vindo ao',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'meu primeiro APP em Flutter :)',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 70,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(hintText: 'Digite seu nome'),
            ),
          ),
          Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: EmoticonHappy()),
        ],
      ),
    );
  }
}

class EmoticonHappy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets1.lottiefiles.com/private_files/lf30_rlsmtwxb.json',
      repeat: true,
      animate: true,
      height: 140,
    );
  }
}

class LottieImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets7.lottiefiles.com/packages/lf20_gditjsml.json',
      repeat: true,
      reverse: true,
      animate: true,
      height: 150,
    );
  }
}
