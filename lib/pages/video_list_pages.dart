import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portifolio/pages/video.page.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[100],

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Meus Projetos",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //HTML CSS
          SizedBox(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    'img/htmlCSS.png',
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Projetos Feitos em HTML e CSS",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/1soulmovies2.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/2biblioteca.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/3coffee.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/4thesoulcode.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),


          //HTML CSS JS
          SizedBox(
            child: Container(
              width: 200,
              height: 200,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'img/simbol2.png',
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Projetos Feitos em HTML, CSS e JS",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/5calctudo.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),


          //Bootstrap
          SizedBox(
            child: Container(
              width: 150,
              height: 150,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'img/simbol3.png',
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Projetos Feitos em Bootstrap",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/6lucas.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

        //React Native
          SizedBox(
            child: Container(
              width: 200,
              height: 200,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'img/simbol4.png',
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Projetos Feitos em React Native",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/7calc.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/8jokenpo.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),



          //Style Componet
          SizedBox(
            child: Container(
              width: 200,
              height: 200,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: ClipRRect(
                  child: Image.asset(
                    'img/simbol5.png',
                  ),
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(25),
            child: Text(
              "Projetos Feitos em React Native e utilizado Firebase e Styled Component",
              textAlign: TextAlign.center,
              style: GoogleFonts.aBeeZee(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            // width: 300,
            // height: 300,
            // padding: EdgeInsets.symmetric(vertical: 50),
            child: Container(
              child: VideoItems(
                videoPlayerController: VideoPlayerController.asset(
                  'video/9motoapp.mp4',
                ),
                looping: false,
                autoplay: false,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
