import 'package:flutter/material.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff599BF2),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.local_hospital,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "مستشفيات",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 29,fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Color(0xff599BF2),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  children: const [
                  Title(title: "مستشفيات سوهاج الحكومية"),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Hospitals(
                        hostitle: "مستشفي اليوم الواحد", 
                        location: "سوهاج - كورنيش\n  النيل - غرب سوهاج", 
                        phone1: "0932319102", 
                        phone2: "0932107082"),
                        Hospitals(
                        hostitle: "مستشفي الحميات", 
                        location: "سوهاج-شارع الحميات\nبجوار مكتب البريد", 
                        phone1: "0932714110", 
                        phone2: "none"),
                    ],
                  ),
                  Row(
                    
                    textDirection: TextDirection.rtl,
                    children: [
                      Hospitals(
                        hostitle: "مستشفي الجامعي", 
                        location: "سوهاج مدينة ناصر", 
                        phone1: "0934600416", 
                        phone2: "0934598136"),
                        Hospitals(
                        hostitle: "المستشفي العام", 
                        location: "سوهاج-العارف\nامام موقف الاتوبيس", 
                        phone1: "0932332007", 
                        phone2: "0932339797"),
                    ],
                  ),
                  Title(title: "مستشفيات سوهاج الخاصة"),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Hospitals(
                        hostitle: "مستشفي مصر", 
                        location:"سوهاج - 45ش مصنع\n الهدرجة متفرع\n من شارع الكورنيش \nالشرقي", 
                        phone1: "0934607477", 
                        phone2: "01018000106"),
                        Hospitals(
                        hostitle: "مستشفي الحياة \nالدولي", 
                        location: "سوهاج - الغزل\n برج الشطة القبلي", 
                        phone1: "0932157000", 
                        phone2: "01028090750"),
                    ],
                  ),
                  Row(
                    children: [
                      Hospitals(
                        hostitle:"مستشفي راشد التخصصي", 
                        location: "سوهاج - مدينة\n ناصر - شارع راشد", 
                        phone1: "0934600955", 
                        phone2: "01116912228"),
                        Hospitals(
                        hostitle: "مستشفي الامل", 
                        location: "شارع 15 - بعد\n تقاطع اشارة 15", 
                        phone1: "0932113279", 
                        phone2: "0932714512"),
                    ],
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Hospitals(
                        hostitle: "مستشفي ابن سينا التخصصي", 
                        location:"سوهاج - 1 ش اسحاق\n - امام ميدان العارف\n - شرق السكة الحديد ", 
                        phone1: "0932116854", 
                        phone2: "0932116855"),
                        Hospitals(
                        hostitle: "مستشفي دار الطب", 
                        location: "سوهاج - الشهيد \n- امام موقف سوبر\n جيت بحري مركز \nالشرطة", 
                        phone1: "01001622574", 
                        phone2: "0932335757"),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: const EdgeInsets.only(top: 15 , bottom: 10),
      padding: const EdgeInsets.only(top: 7),
      decoration: const BoxDecoration(
          color: Color(0x33599BF2),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Hospitals extends StatelessWidget {
  const Hospitals({super.key,
  required this.hostitle,
  required this.location,
  required this.phone1,
  required this.phone2,
  });

  final String hostitle;
  final String location;
  final String phone1;
  final String phone2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Color(0x33599BF2),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Text(
            hostitle,
            style: const TextStyle(color: Color(0xff599BF2), fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.location_on,
                size: 27,
              ),
              Text(location , style: const TextStyle(fontSize: 16),textAlign: TextAlign.right,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.phone,
                size: 27,
              ),
              Text(phone1 , style: const TextStyle(fontSize: 16),),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.phone,
                size: 27,
              ),
              Text(phone2,style: const TextStyle(fontSize: 16),),
            ],
          ),
        ],
      ),
    );
  }
}
