import 'package:flutter/material.dart';
import '../widgets/restaurant_fun.dart';
import 'package:sakanifychat/models/models.dart';



class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffE7BDCC),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.restaurant, 
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "مطاعم",
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
                        color: Color(0xffE7BDCC),
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                    child: ListView.builder(
                      itemCount:list.length,
                      itemBuilder: (context, index) => RestaurantFunc(
                        restitle: list[index].restitle,
                        phone: list[index].phone,
                        location: list[index].location,
                        resimage: list[index].resimage,
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

List<RestaurantModel> list=[
  RestaurantModel(
    restitle: "ابل فود", 
    phone: "01101167611", 
    location: "شارع المشنب امام نادى",
    resimage: "assets/images/applefood.jpg"
    ),
    RestaurantModel(
      restitle: "وصاية توفيق", 
      phone: "15801", 
      location: "شارع الجمهورية", 
      resimage: "assets/images/tawfik.jpg"
      ),
      RestaurantModel(
      restitle: "مطعم القلاية", 
      phone: "01281819169", 
      location: "شارع الهلال بجوار الخلاط", 
      resimage: "assets/images/fire.jpg"
      ),
      RestaurantModel(
      restitle: "تومية", 
      phone: "01101840678", 
      location: "شارع القاعات", 
      resimage: "assets/images/تومية.jpg"
      ),
      RestaurantModel(
      restitle: "ديوان الشام", 
      phone: "01555863633", 
      location: "شارع الشريف المتفرع من ", 
      resimage: "assets/images/ديوان الشام.jpg"
      ),
      RestaurantModel(
      restitle: "كشرى هند", 
      phone: "01116509797", 
      location: "الزهراء بجوار النجدة", 
      resimage: "assets/images/كشرى هند.jpg"
      ),
      RestaurantModel(
      restitle: "خلدون", 
      phone: "01101167611", 
      location: "شارع مستشفى الهلال", 
      resimage: "assets/images/خلدون.jpg"
      ),
      RestaurantModel(
      restitle: "كشرى جحا", 
      phone: "093 2381212", 
      location: "الخولى , قسم اول سوهاج", 
      resimage: "assets/images/كشرى جحا.jpg"
      ),
      RestaurantModel(
      restitle: "كلاش", 
      phone: "01090407125", 
      location: "شارع سيتى الرئيسى", 
      resimage: "assets/images/clash.jpg"
      ),
      RestaurantModel(
      restitle: "نيو سورى", 
      phone: "01127417774", 
      location: "الشرق شارع الجامعه امام", 
      resimage: "assets/images/السورى.jpg"
      ),
      RestaurantModel(
      restitle: "كبدة الفلاح", 
      phone: "01070119000", 
      location: "شارع مستشفى الهلال", 
      resimage: "assets/images/كبدة الفلاح.jpg"
      ),
      RestaurantModel(
      restitle: "ماندوز", 
      phone: "0101999588", 
      location: "الزهراء - امام الادارة", 
      resimage: "assets/images/mandoz.jpg"
      ),
      RestaurantModel(
      restitle: "اطياب", 
      phone: "01022192900", 
      location: "خلف مستشفى المعلمين", 
      resimage: "assets/images/atyap.jpg"
      ),


]; 
