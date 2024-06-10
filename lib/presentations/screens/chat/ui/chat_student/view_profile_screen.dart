import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sakanifychat/helper/my_date_util.dart';
import 'package:sakanifychat/models/chat/chat_student.dart';
import 'package:cached_network_image/cached_network_image.dart';


//view profile screen -- to view profile of user

class ViewProfileScreenStudents extends StatefulWidget {
  final ChatUserStudent user;

  const ViewProfileScreenStudents({super.key, required this.user});

  @override
  State<ViewProfileScreenStudents> createState() =>
      _ViewProfileScreenStudentsState();
}

class _ViewProfileScreenStudentsState extends State<ViewProfileScreenStudents> {
  @override
  Widget build(BuildContext context) {
    var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      // for hiding keyboard
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
          //app bar
          appBar: AppBar(title: Text(widget.user.name)),

          //user about
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Joined On: ',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Text(
                  MyDateUtil.getLastMessageTime(
                      context: context,
                      time: widget.user.createdAt,
                      showYear: true),
                  style: const TextStyle(color: Colors.black54, fontSize: 15)),
            ],
          ),

          //body
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .05),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // for adding some space
                  SizedBox(width: width, height: higth * .03),

                  //user profile picture
                  ClipRRect(
                    borderRadius: BorderRadius.circular(higth * .1),
                    child: CachedNetworkImage(
                      width: higth * .2,
                      height: higth * .2,
                      fit: BoxFit.cover,
                      imageUrl: widget.user.image,
                      errorWidget: (context, url, error) => const CircleAvatar(
                          child: Icon(CupertinoIcons.person)),
                    ),
                  ),

                  // for adding some space
                  SizedBox(height: higth * .03),

                  // user email label
                  Text(widget.user.email,
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 16)),

                  // for adding some space
                  SizedBox(height: higth * .02),

                  //user about
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'About: ',
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      Text(widget.user.about,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
