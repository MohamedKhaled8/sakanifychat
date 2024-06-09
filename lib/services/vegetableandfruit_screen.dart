import 'package:flutter/material.dart';

class VegFruScreen extends StatelessWidget {
  const VegFruScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffF695A0),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    " الخضار والفاكهة",
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
                        color: Color(0xffF695A0),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: double.infinity,
                height: 700,
                decoration: const BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Column(
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "شارع ترعة باجا - متفرع \nمن شارع ١٥ أمام مدرسة النصر \nو بجوار مخبز الفرسان",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01064424931",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01092247666",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "0932717092",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                color: Colors.black,
                                height: 0.85,
                                width: 180,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "سوهاج - شارع أسيوط \nسوهاج - بجوار معهد \nالإتصالات.",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01222457334",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01128744585",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          
                          Container(
                            width: 109,
                            height: 160,
                            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                            decoration: const BoxDecoration(
                                color: Color(0x88F695A0),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: const Text(
                              "اسواق \nالمحمود",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Column(
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "ش الجمهورية الرئيسى \nأمام بيت الرحمة وبجوار\n وصاية توفيق",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "0932717611",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01009641465",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01281515564",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01121633321",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                color: Colors.black,
                                height: 0.85,
                                width: 180,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "طريق سوهاج أخميم الرئيسى \nأمام صيدلية عابدين بجوار\n مؤمن الخطاط",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "0934595455",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01125758586",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                color: Colors.black,
                                height: 0.85,
                                width: 180,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "بجوار هايبر ذادك وأمام\n نور الهدي",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "0932712622",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01110319702",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                          Container(
                            width: 119,
                            height: 160,
                            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                            decoration: const BoxDecoration(
                                color: Color(0x88F695A0),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: const Text(
                              "اسواق \nالجمهورية",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ///////////////////////////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          const Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "سوهاج خلف البنك الأهلي\n فرع الفتح الزهراء",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01129971500",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01210912660",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 38,
                          ),
                          Container(
                            width: 110,
                            height: 160,
                            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                            decoration: const BoxDecoration(
                                color: Color(0x88F695A0),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: const Text(
                              "اسواق \nالبركة",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////////////////////////
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          const Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffF695A0),
                                    size: 30,
                                  ),
                                  Text(
                                    "شارع سور النادي البحري",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01065065625",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01204804838",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "01204804838",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                textDirection: TextDirection.rtl,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Color(0xffE7BDCC),
                                    size: 30,
                                  ),
                                  Text(
                                    "0932104533",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 43,
                          ),
                          Container(
                            width: 110,
                            height: 160,
                            padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
                            decoration: const BoxDecoration(
                                color: Color(0x88F695A0),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: const Text(
                              "اسواق \nالعمدة",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
    );
  }
}

