import 'package:flutter/material.dart';
import 'package:sakanifychat/widgets/navigation_bar2.dart';
import 'package:sakanifychat/presentations/screens/student_data.dart';


class OwnerData extends StatelessWidget {
  const OwnerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigateBar2(
        homescreen: Color(0xff1A284E),
        chatscreen: Color(0xff1A284E),
        profilescreen: Color(0xffDDB20C),
        sizehome: 32,
        sizechat: 30,
        sizeprofile: 35,
      ),
      body: SafeArea(
          child: Container(
        color: const Color(0xffF3F3F3),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 200,
              padding: const EdgeInsets.only(top: 25),
              margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/ownerimage.jpeg",
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("محمود احمد",
                      style: TextStyle(
                          color: Color(0xffDDB20C),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    "صاحب عقار",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child:  const Column(
                children: [
                  DataFunc(icon: Icons.person_2_outlined, data: "محمود احمد"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(
                      icon: Icons.phone_enabled_outlined, data: "0123456789"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(icon: Icons.email_outlined, data: "abc@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
