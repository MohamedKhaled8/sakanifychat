import 'package:flutter/material.dart';
import 'package:sakanifychat/widgets/navigation_bar2.dart';
import 'package:sakanifychat/presentations/screens/chat_screen2.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last



class AllChats extends StatefulWidget {
  const AllChats({super.key, required String title});

  @override
  State<AllChats> createState() => _AllChatsState();
}

class _AllChatsState extends State<AllChats> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        bottomNavigationBar: const NavigateBar2(
        homescreen: Color(0xffDDB20C),
        chatscreen: Color(0xff1A284E),
        profilescreen: Color(0xff1A284E),
        sizehome: 40,
        sizechat: 30,
        sizeprofile: 30,
      ),  
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {
                                  // Handle search button press
                                },
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'بحث...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p1.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "محمد الترعة المردومة عمارة 2 شقة 3",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(right: 9.5, top: 0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color:
                                                  Color.fromARGB(255, 32, 28, 102),
                                            ),
                                            width: 30,
                                            height: 30,
                                            child: Text(
                                              "3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p3.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "سالم الزهراء عمارة 3 شقة 5",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p4.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "سلمي الزهراء عمارة 12 شقة 5",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(right: 9.5, top: 0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              color:
                                                  Color.fromARGB(255, 32, 28, 102),
                                            ),
                                            width: 30,
                                            height: 30,
                                            child: Text(
                                              "4",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p5.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "سلمي 15 عمارة 12 شقة 5",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p6.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "رنا 15 عمارة 12 شقة 5",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p7.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "سالم الزهراء عمارة 3 شقة 5",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen2()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 18, right: 18),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0)),
                                    padding: EdgeInsets.all(12.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), // Adjust the radius as needed
                                      child: Image.asset(
                                        'assets/images/p8.png', // Replace 'assets/image.png' with your image path
                                        width: 60, // Example width for the image
                                        height: 80, // Example height for the image
                                        fit: BoxFit
                                            .cover, // Example fit for the image
                                      ),
                                    ),
                                    height: 80,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "محمد الترعة المردومة عمارة 2 شقة 3",
                                        style:
                                            TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "رأي حضرتك نعمل ايه؟",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 20.0, left: 10),
                                    child: Column(
                                      children: [
                                        Text(
                                          "7:45",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w900,
                                              color: const Color.fromARGB(
                                                  255, 128, 127, 127)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
