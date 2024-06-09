import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sakanifychat/models/chat/chat_user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sakanifychat/presentations/screens/chat/ui/view_profile_screen.dart';




class ProfileDialog extends StatelessWidget {
  const ProfileDialog({super.key, required this.user});

  final ChatUser user;

  @override
  Widget build(BuildContext context) {
       var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white.withOpacity(.9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: SizedBox(
          width: width * .6,
          height: higth * .35,
          child: Stack(
            children: [
              //user profile picture
              Positioned(
                top: higth * .075,
                left: width * .1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(higth * .25),
                  child: CachedNetworkImage(
                    width: width * .5,
                    height:width * .5,
                    fit: BoxFit.cover,
                    imageUrl: user.image,
                    errorWidget: (context, url, error) =>
                        const CircleAvatar(child: Icon(CupertinoIcons.person)),
                  ),
                ),
              ),

              //user name
              Positioned(
                left: width * .04,
                top: higth * .02,
                width:width * .55,
                child: Text(user.name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500)),
              ),

              //info button
              Positioned(
                  right: 8,
                  top: 6,
                  child: MaterialButton(
                    onPressed: () {
                      //for hiding image dialog
                      Navigator.pop(context);

                      //move to view profile screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ViewProfileScreen(user: user)));
                    },
                    minWidth: 0,
                    padding: const EdgeInsets.all(0),
                    shape: const CircleBorder(),
                    child: const Icon(Icons.info_outline,
                        color: Colors.blue, size: 30),
                  ))
            ],
          )),
    );
  }
}
