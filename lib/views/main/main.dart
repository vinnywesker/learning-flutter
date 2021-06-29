import 'package:first_app/store/name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyName>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Tela inicial'),
      ),
      body: Container(
        child: ChangeNotifierProvider.value(
          value: provider,
          child: Text('Meu nome é: ${provider.getName}'),
        ),
      ),
    );
  }
}
