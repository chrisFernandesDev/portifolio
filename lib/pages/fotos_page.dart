import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

//Lista para criação de imagens
class imageList {
  final String photo;

  imageList(this.photo);
}

class Fotos extends StatefulWidget {
  const Fotos({Key? key}) : super(key: key);

  @override
  _FotosState createState() => _FotosState();
}

class _FotosState extends State<Fotos> {
  final ImageList = <imageList>[
    imageList('img/eu1.png'),
    imageList('img/eu2.png'),
    imageList('img/eu3.png'),
    imageList('img/eu4.png'),
    imageList('img/eu5.png'),
  ];

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
                        "Quem sou eu?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //Caroucel
                    Container(
                      width: 250,
                      height: 250,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          scrollDirection: Axis.horizontal,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                        ),
                        items: ImageList.map((param) => ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Image.asset(
                                    param.photo,
                                    width: 250,
                                    height: 350,
                                    // fit: BoxFit.cover,
                                  )
                                ],
                              ),
                            )).toList(),
                      ),
                    ),

                    //Box texto da bio
                    Container(
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25),
                              width: 280,
                              child: Text(
                                "Me chamo Chris, tenho 28 anos, apaixonada por tecnologia e jogos, sou uma desenvolvedora em criação. "
                                "Amo desafios, e criar esse app me mostrou que o limite para uma criação é seu criador. ",
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
                        padding: EdgeInsets.only(top: 25),
                        width: 280,
                        child: Text(
                          "A meta para um futuro próximo é expandir meus conhecimentos  de raciocínio lógico, manipulação de linhas de código, criatividade artística e estrutural, assim como, ao me formar, me especializar em desenvolvimento mobile.",
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
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.catching_pokemon_outlined),
          onPressed: () {
            showDialog(
                context: context,
                builder: (texto) => new AlertDialog(
                      title: Text("Diga não as drogas, diga não ao Valorant!"),
                    ));
          }),
    );
  }
}
