import 'package:flutter/material.dart';

class RestaurantFunc extends StatelessWidget {
  const RestaurantFunc({super.key,
    required this.restitle,
    required this.phone,
    required this.location,
    required this.resimage,
  
  });

  final String restitle;
  final String phone;
  final String location;
  final String resimage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Image.asset(
              resimage,
              width: 130,
              height: 130,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 230,
                height: 50,
                padding: const EdgeInsets.fromLTRB(0, 5, 20, 0),
                decoration: const BoxDecoration(
                  color: Color(0xffE7BDCC),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                child: Text(
                  restitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
              ),
              const SizedBox(height: 10,),
               Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Icon(
                    Icons.phone,
                    color: Color(0xffE7BDCC),
                    size: 30,
                  ),
                  Text(
                    phone,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Color(0xffE7BDCC),
                    size: 30,
                  ),
                  Text(
                    location,
                    style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

   