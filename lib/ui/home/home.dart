import 'package:flutter/material.dart';
import 'package:reproed/ui/home/widget/boxpoint.dart';
import 'package:reproed/ui/home/widget/boxprofile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                //post banner banground
                // ignore: sized_box_for_whitespace
                Container(
                  height: 300,
                  width: 400,
                  child: Image.asset('assets/images/cptframe.png',
                      fit: BoxFit.cover, repeat: ImageRepeat.noRepeat),
                ),

                //profile konten
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Column(
                    children: [
                      //emohty gap
                      const SizedBox(height: 64),

                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Center(
                          child: Row(
                            children: [
                              Text('Hi! Bagas'),
                              CircleAvatar(
                                foregroundImage: AssetImage('assets/images/ppaku.png'),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //card user
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoxProfile(),
                            BoxPoint(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
