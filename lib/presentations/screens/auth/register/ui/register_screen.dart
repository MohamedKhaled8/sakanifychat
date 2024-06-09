import 'package:flutter/material.dart';
import '../../login/loginfor_owner.dart';
import '../../../../../helper/validator.dart';
import 'package:sakanifychat/helper/apis.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sakanifychat/widgets/text_filed/custom_text_form_field.dart';

class RegisterScreenOwner extends StatefulWidget {
  const RegisterScreenOwner({Key? key}) : super(key: key);

  @override
  _RegisterScreenOwnerState createState() => _RegisterScreenOwnerState();
}

class _RegisterScreenOwnerState extends State<RegisterScreenOwner> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool _obscurePassword = true;
  bool _isLoading = false;
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  Future<void> _register() async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_formKey.currentState?.validate() ?? false) {
        final userCredential = await APIs.auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        );

        // Save user data to Firestore
        await APIs.firestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'username': _usernameController.text.trim(),
          'email': _emailController.text.trim(),
          'phoneNumber': _phoneController.text.trim(),
          'password': _passwordController.text,
          'profilePic': '', // You can add profile picture logic here
        });

        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginOwner()),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
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
                            text: 'Enter your email',
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
                            controller: _usernameController,
                            text: 'Enter your username',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
                            isNumber: false,
                          ),
                          const SizedBox(height: 20),
                          CustomTextFormField(
                            controller: _passwordController,
                            text: 'Enter your password',
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
                          CustomTextFormField(
                            controller: _phoneController,
                            text: 'Enter your phone number',
                            obscureText: false,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              if (!Validator.isNumber(value)) {
                                return 'Please enter a valid phone number';
                              }
                              return null;
                            },
                            isNumber: true,
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _register,
                            child: const Text("ابدأ"),
                          ),
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
