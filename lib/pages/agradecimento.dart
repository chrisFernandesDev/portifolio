import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgradecimentoPage extends StatefulWidget {
  const AgradecimentoPage({Key? key}) : super(key: key);

  @override
  _AgradecimentoPageState createState() => _AgradecimentoPageState();
}

class _AgradecimentoPageState extends State<AgradecimentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
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
                Color.fromRGBO(0, 0, 0, 0.5),
                Color.fromRGBO(0, 0, 0, 0.3)
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
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Agradecimentos:",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "Queria começar agradecendo ao professor Will por todo incentivo, ajuda e dedicação em ministrar a aula. Sempre empolgado, e com um grande sorriso no rosto em ajudar seus alunos, sem ligar com as limitações de começo. ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                              ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                    "Queria agradecer ao professor Filipe  por ministrar as aulas alegre, animado, sempre disposto a ajudar e a ouvir. Por incentivar a curiosidade em trazer coisas novas, por empolgar com seu sorriso ao ver nossas conquistas. ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "Gostaria de agradecer a professora Leide por suas musicas de todas as manhas alegrando o dia com sua beleza, por seus desafios que me ajudaram a crescer muito e me ajudaram a correr atras de coisas novas.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "Ao professor Almir, que conheço pouco mas gosto muito das aulas, da forma esforçada de explicar, dos incentivos de correr atras de coisas novas. Obrigada por todo seu empenho em nos ensinar. ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "Agradecimento especial a SoulCode pela oportunidade de vida, de proporcionar uma nova carreira e realizar sonhos. ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "E o meu muito obrigada aos meus amigos por todo apoio e parceria, quero levar a amizade de vocês para  vida toda. ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              )
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      child: Container(
                        width: 300,
                        height: 300,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          child: ClipRRect(
                            child: Image.asset(
                              'img/soulcode.png',
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              )
          ),
        )
      ],
    ));
  }
}
