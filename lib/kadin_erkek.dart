import 'package:flutter/material.dart';

Widget kadin_erkek(IconData ic, String cinsiyet) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        ic,
        color: Color.fromARGB(255, 77, 74, 74),
        size: 50,
      ),
      SizedBox(
        height: 15,
      ),
      Text(cinsiyet,
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold))
    ],
  );
}
