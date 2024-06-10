import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:sakanifychat/helper/dialogs.dart';
import 'package:sakanifychat/helper/apis_studentd.dart';
import 'package:sakanifychat/models/chat/chat_student.dart';
import 'package:sakanifychat/presentations/screens/chat/ui/chat_student/profile_screen.dart';
import 'package:sakanifychat/presentations/screens/chat/ui/chat_student/widgets/chat_user_card.dart';

class HomeScreenChatStudents extends StatefulWidget {
  const HomeScreenChatStudents({Key? key}) : super(key: key);

  @override
  State<HomeScreenChatStudents> createState() => _HomeScreenChatStudentsState();
}

class _HomeScreenChatStudentsState extends State<HomeScreenChatStudents> {
  List<ChatUserStudent> _list = [];
  final List<ChatUserStudent> _searchList = [];
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    APIsStudents.getSelfInfo();

    //for updating user active status according to lifecycle events
    //resume -- active or online
    //pause  -- inactive or offline
    SystemChannels.lifecycle.setMessageHandler((message) {
      debugPrint('Message: $message');

      if (APIsStudents.auth.currentUser != null) {
        if (message.toString().contains('resume')) {
          APIsStudents.updateActiveStatus(true);
        }
        if (message.toString().contains('pause')) {
          APIsStudents.updateActiveStatus(false);
        }
      }

      return Future.value(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: WillPopScope(
        onWillPop: () async {
          if (_isSearching) {
            setState(() => _isSearching = !_isSearching);
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          //app bar
          appBar: AppBar(
            backgroundColor: const Color(0xff1A284E),
            leading: const Icon(CupertinoIcons.home),
            title: _isSearching
                ? TextField(
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Name, Email, ...'),
                    autofocus: true,
                    style: const TextStyle(fontSize: 17, letterSpacing: 0.5),
                    //when search text changes then updated search list
                    onChanged: (val) {
                      //search logic
                      _searchList.clear();

                      for (var i in _list) {
                        if (i.name.toLowerCase().contains(val.toLowerCase()) ||
                            i.email.toLowerCase().contains(val.toLowerCase())) {
                          _searchList.add(i);
                          setState(() {
                            _searchList;
                          });
                        }
                      }
                    },
                  )
                : const Text('We Chat'),
            actions: [
              //search user button
              IconButton(
                  onPressed: () {
                    setState(() {
                      _isSearching = !_isSearching;
                    });
                  },
                  icon: Icon(_isSearching
                      ? CupertinoIcons.clear_circled_solid
                      : Icons.search)),

              //more features button
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                ProfileScreenStudents(user: APIsStudents.me)));
                  },
                  icon: const Icon(Icons.more_vert))
            ],
          ),

          //floating button to add new user
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
                backgroundColor: const Color(0xff1A284E),
                onPressed: () {
                  _addChatUserDialog();
                },
                child: const Icon(Icons.add_comment_rounded)),
          ),

          //body
          body: StreamBuilder(
            stream: APIsStudents.getMyUsersId(),

            //get id of only known users
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                //if data is loading
                case ConnectionState.waiting:
                case ConnectionState.none:
                  return const Center(child: CircularProgressIndicator());

                //if some or all data is loaded then show it
                case ConnectionState.active:
                case ConnectionState.done:
                  return StreamBuilder(
                    stream: APIsStudents.getAllUsers(
                        snapshot.data?.docs.map((e) => e.id).toList() ?? []),

                    //get only those user, who's ids are provided
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        //if data is loading
                        case ConnectionState.waiting:
                        case ConnectionState.none:
                        // return const Center(
                        //     child: CircularProgressIndicator());

                        //if some or all data is loaded then show it
                        case ConnectionState.active:
                        case ConnectionState.done:
                          final data = snapshot.data?.docs;
                          _list = data
                                  ?.map(
                                      (e) => ChatUserStudent.fromJson(e.data()))
                                  .toList() ??
                              [];

                          if (_list.isNotEmpty) {
                            return ListView.builder(
                                itemCount: _isSearching
                                    ? _searchList.length
                                    : _list.length,
                                padding: EdgeInsets.only(top: higth * .01),
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return ChatUserCardStudents(
                                      user: _isSearching
                                          ? _searchList[index]
                                          : _list[index]);
                                });
                          } else {
                            return const Center(
                              child: Text('No Connections Found!',
                                  style: TextStyle(fontSize: 20)),
                            );
                          }
                      }
                    },
                  );
              }
            },
          ),
        ),
      ),
    );
  }

  // void _searchUsers(String query) {
  //   _searchList.clear();

  //   for (var i in _list) {
  //     if (i.name.toLowerCase().contains(query.toLowerCase()) ||
  //         i.email.toLowerCase().contains(query.toLowerCase())) {
  //       _searchList.add(i);
  //     }
  //   }

  //   if (mounted) {
  //     setState(() {
  //       _searchList;
  //     });
  //   }
  // }

  void _addChatUserDialog() {
    String email = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Builder(
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.only(
                  left: 24, right: 24, top: 20, bottom: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: const Row(
                children: [
                  Icon(
                    Icons.person_add,
                    color: Color(0xff1A284E),
                    size: 28,
                  ),
                  Text('  Add User')
                ],
              ),
              content: TextFormField(
                maxLines: null,
                onChanged: (value) => email = value,
                decoration: InputDecoration(
                    hintText: 'Email Id',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xff1A284E),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog sheet
                    },
                    child: const Text('Cancel',
                        style:
                            TextStyle(color: Color(0xff1A284E), fontSize: 16))),
                MaterialButton(
                    onPressed: () async {
                      Navigator.pop(context); // Close the dialog sheet
                      if (email.isNotEmpty) {
                        bool userAdded = await APIsStudents.addChatUser(email);
                        if (userAdded) {
                          // Add the new user to the listش
                          ChatUserStudent newUser = ChatUserStudent(
                              image: '',
                              about: '',
                              name: email,
                              createdAt: '',
                              isOnline: false,
                              id: '',
                              lastActive: '',
                              email: email,
                              pushToken: '');
                          setState(() {
                            _list.add(newUser);
                            _searchList.add(newUser);
                          });
                        } else {
                          // ignore: use_build_context_synchronously
                          Dialogs.showSnackbar(context, 'User does not Exist!');
                        }
                      }
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Color(0xffDDB20C), fontSize: 16),
                    ))
              ],
            );
          },
        );
      },
    );
  }
}
