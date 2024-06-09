import 'package:flutter/material.dart';
import 'package:sakanifychat/models/models.dart';
import 'package:sakanifychat/widgets/navigation_bar.dart';
import 'package:sakanifychat/widgets/notification_fun.dart';



class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigateBar1(
        homescreen: Color(0xff1A284E),
        chatscreen: Color(0xff1A284E),
        servicescreen: Color(0xff1A284E),
        profilescreen: Color(0xff1A284E),
        notifscreen: Color(0xffDDB20C),
        sizehome: 30,
        sizechat: 30,
        sizeservice: 30,
        sizeprofile: 30,
        sizenotif: 35,
      ),
      body: SafeArea(
        child: Container(
          color: const Color(0xffF3F3F3),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(Icons.notifications_active_outlined, size: 30),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "الاشعارات",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 195,
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(5),
                  width: double.infinity,
                  height: 600,
                  decoration: const BoxDecoration(
                      color: Color(0xffF3F3F3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) => NotificationFunc(
                      backcolor: list[index].backcolor,
                      color: list[index].color,
                      text: list[index].text,
                      icon: list[index].icon,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

List<NotificationModel> list = [
  NotificationModel(
      backcolor: 0x77FD7BA3,
      color: 0xffFD7BA3,
      text: "نذكرك ان باقي 4 ايام علي موعد دفع\n الايجار",
      icon: Icons.calendar_today_outlined),
  NotificationModel(
      backcolor: 0x77A0BFF2,
      color: 0xffA0BFF2,
      text: "لقد وردتك رسالة من صاحب العقار",
      icon: Icons.chat_bubble_outline),
  NotificationModel(
      backcolor: 0x77FD93F2,
      color: 0xffFD93F2,
      text: "لقد وردتك رسالة من صاحب العقار",
      icon: Icons.chat_bubble_outline),
  NotificationModel(
      backcolor: 0x77FDCA76,
      color: 0xffFDCA76,
      text: "نذكرك ان باقي 4 ايام علي موعد دفع\n الايجار",
      icon: Icons.calendar_today_outlined),
  NotificationModel(
      backcolor: 0x77C14FF1,
      color: 0xffC14FF1,
      text: "لقد وردتك رسالة من صاحب العقار",
      icon: Icons.chat_bubble_outline),
  NotificationModel(
      backcolor: 0x77FD7BA3,
      color: 0xffFD7BA3,
      text: "نذكرك ان باقي 4 ايام علي موعد دفع\n الايجار",
      icon: Icons.calendar_today_outlined),
  NotificationModel(
      backcolor: 0x77A0BFF2,
      color: 0xffA0BFF2,
      text: "لقد وردتك رسالة من صاحب العقار",
      icon: Icons.chat_bubble_outline),
];
