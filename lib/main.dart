import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:portifolio/pages/navegacao_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return MaterialApp(home: Splash(),
            debugShowCheckedModeBanner: false,
          );
        } else{
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            home: Nav(),
          );
        }
      },
    );
  }
}


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('img/testCap5.gif'),
                fit: BoxFit.cover,
              )
            )
          ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(Duration(seconds: 3));
  }
}