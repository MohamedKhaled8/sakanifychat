import 'package:flutter/material.dart';
import 'package:sakanifychat/widgets/navigation_bar.dart';

class StudentData extends StatelessWidget {
  const StudentData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigateBar1(
        homescreen: Color(0xff1A284E),
        chatscreen: Color(0xff1A284E),
        servicescreen: Color(0xff1A284E),
        profilescreen: Color(0xffDDB20C),
        notifscreen: Color(0xff1A284E),
        sizehome: 30,
        sizechat: 30,
        sizeservice: 30,
        sizeprofile: 35,
        sizenotif: 30,
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
                      "assets/images/stu_image.png",
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("عبد الرحمن محمود",
                      style: TextStyle(
                          color: Color(0xffDDB20C),
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    "المستخدم",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: const Column(
                children: [
                  DataFunc(
                      icon: Icons.person_2_outlined, data: "عبدالرحمن محمود"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(
                      icon: Icons.phone_enabled_outlined, data: "0123456789"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(icon: Icons.email_outlined, data: "abc@gmail.com"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(
                      icon: Icons.cast_for_education_outlined,
                      data: "كلية الحاسبات والذكاء \nالاصطناعى"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(icon: Icons.grade, data: "الفرقة الثالثة"),
                  SizedBox(
                    height: 15,
                  ),
                  DataFunc(icon: Icons.merge_type, data: "ذكر"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class DataFunc extends StatelessWidget {
  const DataFunc({
    super.key,
    required this.icon,
    required this.data,
  });

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Icon(
          icon,
          size: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          data,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.end,
        )
      ],
    );
  }
}
