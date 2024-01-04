import 'package:flutter/material.dart';
import 'package:reproed/ui/loginsign/login.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  String? valueChoose; // Fix variable name and make it nullable
  List<String> listItem = ['Kelas 7', 'Kelas 8', 'Kelas 9'];
  Color? lakiLakiColor = Colors.white;
  Color? perempuanColor = Colors.white;

  void selectLakiLaki() {
    setState(() {
      lakiLakiColor = Colors.blue[300];
      perempuanColor = Colors.white;
    });
  }

  void selectPerempuan() {
    setState(() {
      perempuanColor = Colors.blue[300];
      lakiLakiColor = Colors.white;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: const Text(
            "Daftar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.blue,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          iconTheme: const IconThemeData(color: Colors.blue),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 18, left: 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const Text(
                  'Hallo ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Yuk daftar dulu sebelum menggunakan aplikasi ReproEd',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nama Lengkap",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "contoh : Budi widanto",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 18),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email', style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Contoh: budi@gmail.com',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        )
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),

                const SizedBox(height: 18),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Kelas",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 12),
                 // ignore: avoid_unnecessary_containers
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: const Text('Pilih Kelas'),
                      dropdownColor: Colors.blue[50],
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      isExpanded: true,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      value: valueChoose,
                      onChanged: (newValue) {
                        setState(() {
                          // ignore: unnecessary_cast
                          valueChoose = newValue as String?;
                        });
                      },
                      items: listItem.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Umur',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukan umur kamu disini',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Jenis Kelamin',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                 Row(
                    children: [
                      GestureDetector(
                        onTap: selectLakiLaki,
                        child: Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                            color: lakiLakiColor,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: Text(
                              "Laki-laki",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      GestureDetector(
                        onTap: selectPerempuan,
                        child: Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                            color: perempuanColor,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Center(
                            child: Text(
                              "Perempuan",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 69, 128, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(150, 45),
                    ),
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
