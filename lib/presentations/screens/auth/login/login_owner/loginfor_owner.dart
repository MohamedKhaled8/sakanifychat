import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import '../../../../../helper/dialogs.dart';
import 'package:sakanifychat/helper/apis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sakanifychat/helper/validator.dart';
import 'package:sakanifychat/widgets/text_filed/custom_text_form_field.dart';
import 'package:sakanifychat/presentations/screens/auth/register/ui/success_register.dart';

class LoginOwner extends StatefulWidget {
  const LoginOwner({Key? key}) : super(key: key);

  @override
  _LoginOwnerState createState() => _LoginOwnerState();
}

class _LoginOwnerState extends State<LoginOwner> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // bool _isLoading = false;
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  _handleGoogleBtnClick() {
    // setState(() {
    //   _isLoading = true;
    // });

    // Sign in with Google
    _signInWithGoogle().then((userCredential) {
      // setState(() {
      //   _isLoading =
      //       false;
      // });

      if (userCredential != null) {
        // Navigate to HomeScreenChat after successful login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const SuccessRegister()),
        );
      }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      await InternetAddress.lookup('google.com');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await APIs.auth.signInWithCredential(credential);
    } catch (e) {
      log('\n_signInWithGoogle: $e');

      if (mounted) {
        Dialogs.showSnackbar(context, 'Something Went Wrong (Check Internet!)');
      }

      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var higth = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        // child: _isLoading
        //     ? const Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     :
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 100, 1, 100),
            width: double.infinity,
            color: const Color(0x33F3F3F3),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 250,
                      height: 190,
                    ),
                    CustomTextFormField(
                      controller: _emailController,
                      text: 'ادخل الايميل',
                      obscureText: false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!Validator.isEmail(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                      isNumber: false,
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      controller: _passwordController,
                      text: 'ادخل الرقم السري',
                      obscureText: _obscurePassword,
                      suffixIcon: _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onPressed: _togglePasswordVisibility,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if (!Validator.isPassword(value)) {
                          return 'Password must be at least 8 characters long';
                        }
                        return null;
                      },
                      isNumber: false,
                    ),
                    const SizedBox(height: 20),
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) =>
                    //                 const RegisterScreenOwner()));
                    //   },
                    //   child: Container(
                    //     width: 300,
                    //     height: 55,
                    //     padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    //     child: const Align(
                    //       alignment: Alignment.centerRight,
                    //       child: Text(
                    //         "Register",
                    //         style: TextStyle(
                    //             fontSize: 21,
                    //             color: Colors.black,
                    //             fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffDDB20C))),
                      onPressed: () {},
                      child: const Text(
                        "ابدأ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: _handleGoogleBtnClick,
                      child: Container(
                        width: 320,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/google.png', height: 50),
                            RichText(
                              text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  children: [
                                    TextSpan(text: 'Login with '),
                                    TextSpan(
                                        text: 'Google',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500)),
                                  ]),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
