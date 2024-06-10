import 'package:flutter/material.dart';
import 'package:sakanifychat/presentations/screens/auth/login/login_owner/loginfor_owner.dart';
import 'package:sakanifychat/presentations/screens/auth/login/login_for_student/loginfor_student.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
                  decoration: const BoxDecoration(
                      color: Color(0xffDDB20C),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginStudent(),
                          ));
                    },
                    child: const Text(
                      "طالب",
                      style: TextStyle(
                          color: Color(0xff071947),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 55,
                  decoration: const BoxDecoration(
                      color: Color(0xffDDB20C),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginOwner(),
                          ));
                    },
                    child: const Text(
                      "صاحب عقار",
                      style: TextStyle(
                          color: Color(0xff071947),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
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
