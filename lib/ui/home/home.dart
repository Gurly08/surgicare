import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget{
  const Home ({super.key});

  @override
  State<Home> createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text(
            'home',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 15,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed:() {}, 
              icon: Icon(
                Icons.notifications,
                color: Colors.purple[900],
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi Jenifer",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
            
                  Text(
                    "Selamat Pagi",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(221, 153, 153, 153),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
            
                  const SizedBox(height: 20),
            
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 27, 18, 199),
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                             Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Poin",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.blue[800],
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Tukarkan poin ini untuk membuka kunci jawaban",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "250",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Colors.green[600],
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.asset(
                            'assets/images/belajar.png',
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                  ),

            
            
                ],
              ),
            )
          ),
        ),
      );
  }
}