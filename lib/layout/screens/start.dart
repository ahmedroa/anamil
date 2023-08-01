import 'package:anamil/Auth/Login.dart';
import 'package:anamil/constants/Route.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/widgets/MainButton.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MainButton(
                text: 'تسجيل الدخول',
                onTap: () {
                  navigateTo(context, const LoginPage());
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MainButton(
                text: 'إنشاء حساب',
                onTap: () {},
              ),
              TextButton(
                  onPressed: () {
                    navigateTo(context, const HomePage());
                  },
                  child: const Text("تخطي")),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
