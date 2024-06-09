import 'package:flutter/material.dart';

class NotificationFunc extends StatelessWidget {
  const NotificationFunc({
    super.key,
    required this.backcolor,
    required this.color,
    required this.icon,
    required this.text,
  });

  final int backcolor;
  final int color;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 100,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(
            color: const Color.fromARGB(255, 119, 116, 116),
            width: 0.5,
          ),
          boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3), // Shadow color
        spreadRadius: 1, // Spread radius
        blurRadius: 4, // Blur radius
        offset: const Offset(0, 3), // Shadow offset (vertical)
      ),
    ],
          
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            Container(
                width: 80,
                height: 80,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: Color(backcolor),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: const Color.fromARGB(255, 119, 116, 116),
                    width: 0.5,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(color),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textDirection: TextDirection.rtl,
            ),
          ],
        ));
  }
}
