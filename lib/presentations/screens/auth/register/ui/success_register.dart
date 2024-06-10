import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:sakanifychat/presentations/screens/chat/ui/home_screen.dart';

class SuccessRegister extends StatelessWidget {
  const SuccessRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenChat()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/json/success.json'),
            const Text('You have successfully signed in.',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
