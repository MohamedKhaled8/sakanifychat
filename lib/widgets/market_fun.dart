import 'package:flutter/material.dart';

class MarketFunc extends StatelessWidget {
  const MarketFunc({super.key,
    required this.marktitle,
    required this.phone,
    required this.location,
  });

  final String marktitle;
  final String phone;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      height: 140,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xff3C4394),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Container(
                width: 140,
                height: 40,
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                decoration: const BoxDecoration(
                  color: Color(0xff3C4394),
                  borderRadius:BorderRadius.only(topRight: Radius.circular(30)), 
                ),
                child: Text(marktitle,textAlign:TextAlign.center, style:const TextStyle(color: Colors.white ,fontSize: 24,fontWeight: FontWeight.bold),),
              ),
              const Icon(Icons.phone , color:Color(0xff3C4394), size:30,),
              Text(phone,style: const TextStyle(color: Color(0xff3C4394),fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(Icons.location_on, color:Color(0xff3C4394), size:30,),
              Text(location,style: const TextStyle(color: Color(0xff3C4394),fontSize: 18,fontWeight: FontWeight.w600),),
            ],
          ),
        ],
      ),
    );
  }
}
