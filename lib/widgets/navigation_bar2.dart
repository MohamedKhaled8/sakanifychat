import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sakanifychat/presentations/screens/all_chats.dart';
import 'package:sakanifychat/presentations/screens/owner_data.dart';
import 'package:sakanifychat/presentations/screens/chat_screen2.dart';


class NavigateBar2 extends StatelessWidget {
  const NavigateBar2({
    super.key,
    required this.homescreen,
    required this.chatscreen,
    required this.profilescreen,
    required this.sizehome,
    required this.sizechat,
    required this.sizeprofile,
  });

  final Color homescreen;
  final Color chatscreen;
  final Color profilescreen;
  final double sizehome;
  final double sizechat;
  final double sizeprofile;

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
                        child: const ChatScreen2()));
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
                        type: PageTransitionType.fade, child: const AllChats(title: "hhhh")));
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
                        type: PageTransitionType.fade, child: const OwnerData()));
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
