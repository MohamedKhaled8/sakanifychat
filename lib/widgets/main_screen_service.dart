// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Service_Func extends StatelessWidget {
  const Service_Func({
    super.key,
    required this.title,
    required this.icon,
    required this.bgcolor,
    required this.nextpg,
  });

  final String title;
  final IconData icon;
  final int bgcolor;
  final Widget nextpg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => nextpg ,));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(bgcolor)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
            elevation: MaterialStateProperty.all(20),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
