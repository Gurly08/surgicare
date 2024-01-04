import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:reproed/ui/loginsign/login.dart';
 
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)) .then((value) => Navigator.push(context, 
    MaterialPageRoute(builder: (context) => const Login(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 117, 191, 251),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Image.asset('assets/images/frame1.png'),
                ),
        
                const SizedBox(
                  height: 150,
                ),
        
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ReproEd',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.deepPurple,
                      )
                    ),
                  ),
                ),
        
                const SizedBox(
                  height: 286,
                ),
        
                 Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/frame2.png'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
