import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('img/capa1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.1),
                  Color.fromRGBO(0, 0, 0, 0.4)
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                 vertical: 50,
                 horizontal: 50,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.pink,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("img/Chris.png"),
                        radius: 70,
                      ),
                    ),

                     Text(
                      "Christina Fernandes",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.pacifico(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "Estudante de Front-End e Mobile",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "SoulCode Academy",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 60, right: 30, left: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: GestureDetector(
                                onTap: () {abrirGmail();},
                                child: Image(
                                  image: AssetImage("img/gmail2.png"),
                                  fit: BoxFit.cover,
                                  height: 60,
                                  width: 60,
                                ),
                            ),
                          ),

                          Container(
                            child: GestureDetector(
                              onTap: () {abrirIn();},
                              child: Image(
                                image: AssetImage("img/in.png"),
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),

                          Container(
                            child: GestureDetector(
                              onTap: () {abrirInsta();},
                              child: Image(
                                image: AssetImage("img/instagram.png"),
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10, right: 30, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            child: GestureDetector(
                              onTap: () {abrirGitHub();},
                              child: Image(
                                image: AssetImage("img/github.png"),
                                fit: BoxFit.cover,
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),


      ],
      ),


      floatingActionButton: FloatingActionButton(
          child: Image(
            image: AssetImage("img/whatsapp.png"),
          ),
            onPressed: (){
              abrirWhatsApp();
            }
        ),
    );


  }

}

abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=+5519992611028&text=Olá,tudo bem?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Não foi possível enviar $whatsappUrl';
  }
}

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'fernandes.christ14@gmail.com',
    query: 'subject=Olá!&body=Tudo bem? ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Não foi possível enviar $url');
  }
}

abrirIn() async {
  const url = 'https://www.linkedin.com/in/christina-fernandes-62703aa1/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível enviar $url';
  }
}

abrirInsta() async {
  const url = 'https://www.instagram.com/christina__fernandes/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível enviar $url';
  }
}

abrirGitHub() async {
  const url = 'https://github.com/chrisFernandesDev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível enviar $url';
  }
}