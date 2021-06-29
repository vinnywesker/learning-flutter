import 'package:first_app/routes/routes.dart';
import 'package:first_app/store/name.dart';
import 'package:first_app/styles/custom_theme.dart';
import 'package:first_app/views/login/widgets/lotties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = CustomTheme().primaryColor;

    Size page = MediaQuery.of(context).size;

    String inputName = '';

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
                  color: Colors.green.shade800,
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
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              'Olá, Sou Vinícius e esse é o meu primeiro app em Flutter! XD',
              style: TextStyle(fontSize: 22, color: primaryColor),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: Text(
              'Eu gostaria de te conhecer melhor ...',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextField(
              decoration: InputDecoration(hintText: 'Digite seu nome'),
              onChanged: (text) => inputName = text,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, AppRoutes().mainScreen);
                Provider.of<MyName>(context, listen: false).setName(inputName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Vamos lá',
                    style: TextStyle(fontSize: 22),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 50,
                  )
                ],
              ),
              style: ButtonStyle(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              'Ja vou avisando que esse app é somente para estudos ein.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.bottomEnd,
              child: LottieImg(),
            ),
          ),
        ],
      ),
    );
  }
}
