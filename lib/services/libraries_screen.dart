import 'package:flutter/material.dart';
import 'package:sakanifychat/models/models.dart';
import 'package:sakanifychat/widgets/libraries_fun.dart';


class LibrariesScreen extends StatelessWidget {
  const LibrariesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffBFC2FF),         
          child: Column(
            children: [
               Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "مكتبات",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  MaterialButton(
                    onPressed:() {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      child: const Icon(Icons.arrow_back_ios_new_rounded , size: 20,color: Color(0xffBFC2FF),),
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                child:ListView.builder(
                      itemCount:list.length,
                      itemBuilder: (context, index) => LibrariesFunc(
                        libtitle: list[index].libtitle,
                        phone: list[index].phone,
                        location: list[index].location,
                      ),
                    )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<LibrariesModel> list = [
  LibrariesModel(
      libtitle: "مكتبة الهدى", 
      phone: "01100228077", 
      location: "الزهراء",
      ),
  LibrariesModel(
    libtitle: "مكتبة الصديقان",
    phone: "01013012112",
    location: "شارع الجامعة مدينة ناصر",
  ),
  LibrariesModel(
    libtitle: "مكتبة الحياة",
    phone: "01124730408",
    location: "شارع الجامعة - بجوار مدرسة الثانوية بنات",
  ),
  LibrariesModel(
    libtitle: "مكتبة الاندلس",
    phone: "01118385305",
    location: "سوهاج - امام الجامعه القديمة",
  ),
  LibrariesModel(
    libtitle: "مكتبة الصحافة",
    phone: "01002809684",
    location: "ش الجهاد بجوار مستشفى الهلال",
  ),
  LibrariesModel(
    libtitle: "مكتبة النهضة",
    phone: "01027465554",
    location: "فرع احمد ماهر",
  ),
  LibrariesModel(
    libtitle: "مكتبة ابن الهيثم",
    phone: "011247891111",
    location: "شارع محمود صديق المنشاوى",
  ),
  LibrariesModel(
    libtitle: "مكتبة الابداع",
    phone: "01146777077",
    location: "شارع الارقم - عمارة رقم 10",
  ),
  LibrariesModel(
    libtitle: "مكتبة المنار",
    phone: "الشرق - شارع الترعه المردومة",
    location: "01100228077",
  ),
];
