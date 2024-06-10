import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sakanifychat/helper/dialogs.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sakanifychat/helper/apis_studentd.dart';
import 'package:sakanifychat/models/chat/chat_user.dart';
import 'package:sakanifychat/models/chat/chat_student.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sakanifychat/presentations/screens/chat/ui/chat_student/chat_screen.dart';
import 'package:sakanifychat/presentations/screens/auth/login/login_owner/loginfor_owner.dart';

//profile screen -- to show signed in user info
class ProfileScreenStudents extends StatefulWidget {
  final ChatUserStudent user;

  const ProfileScreenStudents({super.key, required this.user});

  @override
  State<ProfileScreenStudents> createState() => _ProfileScreenStudentsState();
}

class _ProfileScreenStudentsState extends State<ProfileScreenStudents> {
  final _formKey = GlobalKey<FormState>();
  String? _image;

  @override
  Widget build(BuildContext context) {
    var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      // for hiding keyboard
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
          //app bar
          appBar: _buildAppBar(),

          //floating button to log out
          floatingActionButton: _buildFloatingActionButton(context),

          //body
          body: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .05),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // for adding some space
                    SizedBox(width: width, height: higth * .03),

                    //user profile picture
                    Stack(
                      children: [
                        _image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(higth * .1),
                                child: Image.file(File(_image!),
                                    width: higth * .2,
                                    height: higth * .2,
                                    fit: BoxFit.cover))
                            :

                            //image from server
                            ClipRRect(
                                borderRadius: BorderRadius.circular(higth * .1),
                                child: CachedNetworkImage(
                                  width: higth * .2,
                                  height: higth * .2,
                                  fit: BoxFit.cover,
                                  imageUrl: widget.user.image,
                                  errorWidget: (context, url, error) =>
                                      const CircleAvatar(
                                          child: Icon(CupertinoIcons.person)),
                                ),
                              ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: MaterialButton(
                            elevation: 1,
                            onPressed: () {
                              _showBottomSheet();
                            },
                            shape: const CircleBorder(),
                            color: Colors.white,
                            child: const Icon(Icons.edit,
                                color: Color(0xff1A284E)),
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: higth * .03),

                    Text(widget.user.email,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 16)),

                    SizedBox(height: higth * .05),

                    TextFormField(
                      initialValue: widget.user.name,
                      onSaved: (val) => APIsStudents.me.name = val ?? '',
                      validator: (val) => val != null && val.isNotEmpty
                          ? null
                          : 'Required Field',
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person,
                              color: Color(0xff1A284E)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'eg. Happy Singh',
                          label: const Text('Name')),
                    ),

                    SizedBox(height: higth * .02),

                    TextFormField(
                      initialValue: widget.user.about,
                      onSaved: (val) => APIsStudents.me.about = val ?? '',
                      validator: (val) => val != null && val.isNotEmpty
                          ? null
                          : 'Required Field',
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.info_outline,
                              color: Color(0xff1A284E)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          hintText: 'eg. Feeling Happy',
                          label: const Text('About')),
                    ),

                    SizedBox(height: higth * .05),

                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1A284E),
                          shape: const StadiumBorder(),
                          minimumSize: Size(width * .5, higth * .06)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          APIsStudents.updateUserInfo().then((value) {
                            Dialogs.showSnackbar(
                                context, 'Profile Updated Successfully!');
                          });
                        }
                      },
                      icon: const Icon(Icons.edit, size: 28),
                      label:
                          const Text('UPDATE', style: TextStyle(fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }

  Padding _buildFloatingActionButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FloatingActionButton.extended(
          backgroundColor: Colors.redAccent,
          onPressed: () async {
            //for showing progress dialog
            Dialogs.showProgressBar(context);

            await APIsStudents.updateActiveStatus(false);

            await APIsStudents.auth.signOut().then((value) async {
              await GoogleSignIn().signOut().then((value) {
                //for hiding progress dialog
                Navigator.pop(context);

                //for moving to home screen
                Navigator.pop(context);

                // APIs.auth = FirebaseAuth.instance;

                //replacing home screen with login screen
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const LoginOwner()));
              });
            });
          },
          icon: const Icon(Icons.logout),
          label: const Text('Logout')),
    );
  }

  AppBar _buildAppBar() => AppBar(
      backgroundColor: const Color(0xff1A284E),
      title: const Text('Profile Screen'));

  // bottom sheet for picking a profile picture for user
  void _showBottomSheet() {
    var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        builder: (_) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: higth * .03, bottom: higth * .05),
            children: [
              //pick profile picture label
              const Text('Pick Profile Picture',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),

              //for adding some space
              SizedBox(height: higth * .02),

              //buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //pick from gallery button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(width * .3, higth * .15)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();

                        // Pick an image
                        final XFile? image = await picker.pickImage(
                            source: ImageSource.gallery, imageQuality: 80);
                        if (image != null) {
                          log('Image Path: ${image.path}');
                          setState(() {
                            _image = image.path;
                          });

                          APIsStudents.updateProfileImage(File(_image!));

                          if (mounted) Navigator.pop(context);
                        }
                      },
                      child: Image.asset('images/add_image.png')),

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          fixedSize: Size(width * .3, higth * .15)),
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();

                        final XFile? image = await picker.pickImage(
                            source: ImageSource.camera, imageQuality: 80);
                        if (image != null) {
                          log('Image Path: ${image.path}');
                          setState(() {
                            _image = image.path;
                          });

                          APIsStudents.updateProfileImage(File(_image!));

                          if (mounted) Navigator.pop(context);
                        }
                      },
                      child: Image.asset('images/camera.png')),
                ],
              )
            ],
          );
        });
  }
}
