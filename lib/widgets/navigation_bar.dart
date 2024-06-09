import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sakanifychat/services/main_screen.dart';
import 'package:sakanifychat/presentations/screens/chat_screen.dart';
import 'package:sakanifychat/presentations/screens/home_screen.dart';
import 'package:sakanifychat/presentations/screens/notification.dart';
import 'package:sakanifychat/presentations/screens/student_data.dart';

class NavigateBar1 extends StatelessWidget {
  const NavigateBar1({
    super.key,
    required this.homescreen,
    required this.chatscreen,
    required this.servicescreen,
    required this.profilescreen,
    required this.notifscreen,
    required this.sizehome,
    required this.sizechat,
    required this.sizeservice,
    required this.sizeprofile,
    required this.sizenotif,
  });

  final Color homescreen;
  final Color chatscreen;
  final Color servicescreen;
  final Color profilescreen;
  final Color notifscreen;
  final double sizehome;
  final double sizechat;
  final double sizeservice;
  final double sizeprofile;
  final double sizenotif;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 70,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const NotificationScreen()));
              },
              icon: Icon(
                Icons.add_alert_outlined,
                color: notifscreen,
                size: sizenotif,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const ChatScreen()));
              },
              icon: Icon(
                Icons.chat_bubble_outline,
                color: chatscreen,
                size: sizechat,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const HomeScreen()));
              },
              icon: Icon(
                Icons.home_outlined,
                color: homescreen,
                size: sizehome,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const MainScreenService()));
              },
              icon: Icon(
                Icons.miscellaneous_services,
                color: servicescreen,
                size: sizeservice,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: const StudentData()));
              },
              icon: Icon(
                Icons.perm_identity,
                color: profilescreen,
                size: sizeprofile,
              ),
            ),
            const Spacer(),
          ],
        ));
  }
}
