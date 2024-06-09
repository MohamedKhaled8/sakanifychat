import 'package:flutter/material.dart';
import 'package:sakanifychat/presentations/screens/home_screen.dart';

class LoginStudent extends StatelessWidget {
  const LoginStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.fill),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 100, 1, 100),
            width: double.infinity,
            color: const Color(0x33F3F3F3),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                  height: 190,
                ),
                Container(
                  width: 300,
                  height: 55,
                  margin: const EdgeInsets.fromLTRB(0, 60, 0, 30),
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  decoration: BoxDecoration(
                    color: const Color(0x99FFFFFF),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color(0xff071947),
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.person_2_outlined,size: 30,),
                    hintText: "البريد الالكتروني",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Color(0xff071947),),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                ),
                Container(
                  width: 300,
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  decoration: BoxDecoration(
                    color: const Color(0x99FFFFFF),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color(0xff071947),
                  textDirection: TextDirection.rtl,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.remove_red_eye),
                    suffixIcon: Icon(Icons.lock_outline,size: 30,),
                    hintText: "كلمة السر",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(color: Color(0xff071947),),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  decoration: const BoxDecoration(
                      color: Color(0xffDDB20C),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    },
                    child: const Text(
                      "ابدأ",
                      style: TextStyle(
                          color: Color(0xff071947),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
