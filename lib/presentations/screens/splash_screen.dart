import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sakanifychat/helper/apis.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sakanifychat/presentations/screens/home_screen.dart';
import 'package:sakanifychat/presentations/screens/start_screen.dart';
import 'package:sakanifychat/presentations/screens/auth/login/loginfor_owner.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F3F3),
      body: FutureBuilder<bool>(
        future: _checkUserLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show loading indicator
            return _buildLoadingIndicator();
          } else if (snapshot.hasError) {
            // Show error message
            return _buildErrorMessage(snapshot.error.toString());
          } else {
            // User authentication check complete
            final bool isLoggedIn = snapshot.data ?? false;
            // Navigate based on user authentication status
            return _navigateToNextScreen(isLoggedIn);
          }
        },
      ),
    );
  }

  Future<bool> _checkUserLoggedIn() async {
    // Wait for a short duration to simulate initialization
    await Future.delayed(const Duration(seconds: 2));
    // Check if the user is logged in
    return APIs.auth.currentUser != null;
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/images/logo.png"),
            width: 260,
            height: 210,
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: const SpinKitCircle(
              size: 70,
              color: Color(0xff1A284E),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildErrorMessage(String errorMessage) {
    return Center(
      child: Text(errorMessage),
    );
  }

  Widget _navigateToNextScreen(bool isLoggedIn) {
    return isLoggedIn ? const LoginOwner() : const StartScreen();
  }
}
