import 'package:flutter/material.dart';
import 'package:sakanifychat/models/models.dart';
import 'package:sakanifychat/widgets/market_fun.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          color: const Color(0xff3C4394),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 35,
                  ),
                  const Text(
                    "هايبرات",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 29,fontWeight: FontWeight.bold),
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
                      child: const Icon(Icons.arrow_back_ios_new_rounded , size: 20,color: Color(0xff3C4394),),
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
                      itemBuilder: (context, index) => MarketFunc(
                        marktitle: list[index].marktitle,
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

List<MarketModel> list=[
  MarketModel(
    marktitle: "هايبر الراية", 
    phone: "16508", 
    location: "شارع سيتي - مول جراند سيتي -  ‏سوهاج"
    ),
    MarketModel(
    marktitle: "خير زمان", 
    phone: "16007", 
    location: "ش سيالة اولاد نصير"
    ),
    MarketModel(
    marktitle: "المصرية", 
    phone: "0934608758", 
    location: "طريق اخميم سوهاج - مدينة ناصر"
    ),
    MarketModel(
    marktitle: "دارك", 
    phone: "01010482525", 
    location: "الزهراء - شارع ابن الهيثم"
    ),
    MarketModel(
    marktitle: "زادك", 
    phone: "01111508899", 
    location: "شارع النهضة بجوار عمر افندي"
    ),
    MarketModel(
    marktitle: "المهندسين", 
    phone: "01001500139", 
    location: "شارع جامعة سوهاج"
    ),
    MarketModel(
    marktitle: "الفنار", 
    phone: "01093368839", 
    location: "شارع التحرير"
    ),
    MarketModel(
    marktitle: "السيك", 
    phone: "01003909055", 
    location: "شارع 15 خلف مستشفي المعلمين"
    ),
];