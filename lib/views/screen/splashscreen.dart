import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    changescreen();
  }

  changescreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('homepage');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(gradient:LinearGradient(colors: [Colors.blue,Colors.blueGrey,Colors.pink],begin: Alignment.topLeft,end: Alignment.bottomLeft) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                 Image.asset("assets/images/bmi.png"),
                CircularProgressIndicator(
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 20,),
                Text("B   M   I",style:GoogleFonts.aleo(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600)),
                SizedBox(height: 20,),
                Text("C  A  L  C  U  L  A  T  O  R",style:(GoogleFonts.aleo(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500)),)
              ],
            ),
          ),
        ),
      );
  }
}