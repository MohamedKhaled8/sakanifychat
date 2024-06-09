import 'package:flutter/material.dart';

class PharmacyScreen extends StatelessWidget {
  const PharmacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff16368C),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.local_pharmacy_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "صيدليات",
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
                        color: Color(0xff16368C),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15 , 15),
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
                    PharmacyTitle(phartitle: "صيدليات اسلام فتحي"),
                    PharmacyBranch(
                      pharlocation: "شارع الجمهورية - بجوار فرع فودافون", 
                      phone: "0932710421", 
                      whatsapp: "01000063062"),
                    PharmacyBranch(
                      pharlocation: "مدينة ناصر - شارع نجيب محفوظ", 
                      phone: "0934602701", 
                      whatsapp: "01024990043"
                      ), 
                      PharmacyBranch(
                      pharlocation: "مدينة ناصر - شارع كورنيش النيل ", 
                      phone: "01012699900", 
                      whatsapp: "none"
                      ), 
                      PharmacyBranch(
                      pharlocation: "امام مدرسة سيتي", 
                      phone: "01063511616", 
                      whatsapp: "none"
                      ), 
                      PharmacyBranch(
                      pharlocation: "شارع الارقم - مستشفي الصفا", 
                      phone: "01555355616", 
                      whatsapp: "none"
                      ), 
                      PharmacyBranch(
                      pharlocation: "شارع المخبز الالي - امام مدرسة خليل", 
                      phone: "01068900988", 
                      whatsapp: "none"
                      ), 
                      PharmacyBranch(
                      pharlocation: "شارع الجرجاوية - مستشفي الحياة الدولي", 
                      phone: "01028090710", 
                      whatsapp: "none"
                      ), 
                      PharmacyTitle(phartitle: "صيدليات عابدين"),
                      PharmacyBranch(
                        pharlocation: "33 شارع الجمهورية - امام الجمهورية مول", 
                        phone: "01099954601", 
                        whatsapp: "none"
                        ),
                        PharmacyBranch(
                        pharlocation: "سوهاج - ميدان العروبة", 
                        phone: "01019999159", 
                        whatsapp: "none"
                        ),
                        PharmacyBranch(
                        pharlocation: "خلف مسجد الشهيد", 
                        phone: "01006087683", 
                        whatsapp: "none"
                        ),
                        PharmacyBranch(
                        pharlocation: "امتداد شارع الشهيد", 
                        phone: "0932131616", 
                        whatsapp: "01018901222"
                        ),
                        PharmacyBranch(
                        pharlocation: "طريق سوهاج اسيوط - ابراج التأمين", 
                        phone: "01125570005", 
                        whatsapp: "none"
                        ),
                        PharmacyTitle(phartitle: "صيدليات الاشرف"),
                        PharmacyBranch(
                        pharlocation: "مدينة ناصر - شارع مدرسة اللغات", 
                        phone: "0934610038", 
                        whatsapp: "01005041533"
                        ),
                        PharmacyBranch(
                        pharlocation: "كاذالوفي بجوار مسجد التوحيد", 
                        phone: "0934603611", 
                        whatsapp: "01000313556"
                        ),
                        PharmacyBranch(
                        pharlocation: "كاذالوفي بجوار مسجد علي بن ابي طالب", 
                        phone: "0934609966", 
                        whatsapp: "01000312208"
                        ),
                        PharmacyBranch(
                        pharlocation: "الارقم امام مدرسة الارقم بنات", 
                        phone: "0932713606", 
                        whatsapp: "01152525287"
                        ),
                        PharmacyTitle(phartitle: "صيدلية العزبي"),
                        PharmacyBranch(
                        pharlocation: "امام فندق الصفا السياحي", 
                        phone: "01128449333", 
                        whatsapp: "none"
                        ),
                        PharmacyTitle(phartitle: "صيدلية د/جون"),
                        PharmacyBranch(
                        pharlocation: "شارع رمضان نصر متفرع م شارع شريف 15", 
                        phone: "0932102030", 
                        whatsapp: "none"
                        ),
                        PharmacyTitle(phartitle: "صيدلية د/ اسامة ايهاب مقلد"),
                        PharmacyBranch(
                        pharlocation: "الزهراء - ش التحرير - امام مكتب البريد", 
                        phone: "0932103525", 
                        whatsapp: "01027273161"
                        ),
                        PharmacyTitle(phartitle: "صيدلية الجمهورية"),
                        PharmacyBranch(
                        pharlocation: "34 شارع الجمهورية الحوامدية", 
                        phone: "01156560565", 
                        whatsapp: "01156560565"
                        ),
                        PharmacyTitle(phartitle: "صيدلية د/رائف"),
                        PharmacyBranch(
                        pharlocation: "32 شارع النصر من شارع 15", 
                        phone: "01270657575", 
                        whatsapp: "01270657575"
                        ),
                        PharmacyTitle(phartitle: "صيدلية مصعب بن عمير"),
                        PharmacyBranch(
                        pharlocation: "مدينة ناصر - اول كوبري اخميم", 
                        phone: "0934601635", 
                        whatsapp: "01117170033"
                        ),
                        PharmacyTitle(phartitle: "صيدلية العدل"),
                        PharmacyBranch(
                        pharlocation: "شارع اسيوط سوهاج", 
                        phone: "0932323311", 
                        whatsapp: "01221409611"
                        ),
                        
                  ]
                )
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class PharmacyTitle extends StatelessWidget {
  const PharmacyTitle({
    super.key,
    required this.phartitle,
  });

  final String phartitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(top: 7),
      decoration: const BoxDecoration(
          color: Color(0xff16368C),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Text(
        phartitle,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class PharmacyBranch extends StatelessWidget {
  const PharmacyBranch({super.key , 
  required this.pharlocation,
  required this.phone,
  required this.whatsapp,
  });
  final String pharlocation;
  final String phone;
  final String whatsapp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 145,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        border: Border.all(
          color: const Color(0xff16368C),
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.location_on,
                color: Color(0xff16368C),
                size: 30,
              ),
              Text(
                pharlocation,
                style: const TextStyle(
                    color: Color(0xff16368C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.phone,
                color: Color(0xff16368C),
                size: 30,
              ),
              Text(
                phone,
                style: const TextStyle(
                    color: Color(0xff16368C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              const Icon(
                Icons.wechat,
                color: Color(0xff16368C),
                size: 30,
              ),
              Text(
                whatsapp,
                style: const TextStyle(
                    color: Color(0xff16368C),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )
            ],
          )
        ],
      ),
    );
  }
}
