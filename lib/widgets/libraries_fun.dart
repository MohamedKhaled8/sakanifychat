import 'package:flutter/material.dart';

class LibrariesFunc extends StatelessWidget {
  const LibrariesFunc({
    super.key,
    required this.libtitle,
    required this.phone,
    required this.location,
  });

  final String libtitle;
  final String phone;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 145,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffBFC2FF),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            libtitle,
            style: const TextStyle(
                color: Color(0xffBFC2FF),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          const Divider(
            color: Color(0xffF3F3F3),
            thickness: 3,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.phone,
                color: Color(0xffBFC2FF),
                size: 30,
              ),
              Text(
                phone,
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.location_on,
                color: Color(0xffBFC2FF),
                size: 30,
              ),
              Text(
                location,
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
    );
  }
}
