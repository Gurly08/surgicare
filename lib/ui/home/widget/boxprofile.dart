import 'package:flutter/material.dart';

class BoxProfile extends StatelessWidget {
  const BoxProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5), // atur offset shadow sesuai kebutuhan
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bagas Djunaedi',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              '8',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              '17 Tahun',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
