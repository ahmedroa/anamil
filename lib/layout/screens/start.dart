import 'package:anamil/Auth/Login.dart';
import 'package:anamil/Auth/Register.dart';
import 'package:anamil/constants/MyColors%20.dart';
import 'package:anamil/constants/Route.dart';
import 'package:anamil/constants/images.dart';
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
              Image.asset(
                Images.anamil,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.6,
                  height: 50,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[100],
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        navigateTo(context, const LoginPage());
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تسجيل الدخول',
                            style: TextStyle(color: MyColors.blue, fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.person,
                            color: MyColors.blue,
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              MainButton(
                text: 'إنشاء حساب',
                onTap: () {
                  navigateTo(context, const Register());
                },
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
