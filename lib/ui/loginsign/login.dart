import 'package:flutter/material.dart';
import 'package:reproed/ui/home/home.dart';
import 'package:reproed/ui/loginsign/sign.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/dna.png'),
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    'Selamat datang di Aplikasi ReproEd edukasi dan pengarahan dalam menjaga kesehatan reproduksi',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                    );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: const Size(120, 45)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png',
                            width: 30, height: 30),
                        const SizedBox(width: 10),
                        const Text(
                          'Masuk Dengan Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Sign(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: const Size(120, 45)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png',
                            width: 30, height: 30),
                        const SizedBox(width: 10),
                        const Text(
                          'Masuk Dengan Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text('Apa kamu sudah memiliki akun ?'),
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Sign()));
                      },
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue[400]),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage('assets/images/esgul.png'),
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        foregroundImage: AssetImage('assets/images/smp187.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
