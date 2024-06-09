import 'package:flutter/material.dart';
import 'package:sakanifychat/widgets/navigation_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool shadowColor = false;
  double? scrolledUnderElevation;
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    setState(() {
      _messages.add(_controller.text);
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavigateBar1(
          homescreen: Color(0xff1A284E),
          chatscreen: Color(0xffDDB20C),
          servicescreen: Color(0xff1A284E),
          profilescreen: Color(0xff1A284E),
          notifscreen: Color(0xff1A284E),
          sizehome: 32,
          sizechat: 35,
          sizeservice: 30,
          sizeprofile: 30,
          sizenotif: 30,
        ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 1, 41, 109),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      height: 77,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.asset(
                          'assets/images/p1.png',
                          width: 60,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "احمد محمد",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "متصل",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 100),
                    const Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 30.0,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.video_call,
                      color: Color.fromARGB(255, 255, 255, 255),
                      size: 40.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: _messages.map((msg) {
                        return Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 95, right: 10, bottom: 10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 2, 98),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(0.0),
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              msg,
                              style: const TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                height: 61,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.face,
                                    color: Color.fromARGB(255, 7, 2, 98),
                                  ),
                                  onPressed: () {},
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: _controller,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.only(left: 10.0, right: 0),
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: InkWell(
                          onTap: _sendMessage,
                          child: const Icon(
                            Icons.send,
                            color: Color.fromARGB(255, 7, 2, 98),
                            size: 35.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
