import 'package:anamil/Auth/ForgotYourPassword.dart';
import 'package:anamil/Auth/Register.dart';
import 'package:anamil/constants/Route.dart';
import 'package:anamil/constants/images.dart';
import 'package:anamil/cubit/anaml_app_bloc.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/widgets/buildTextField.dart';
import 'package:anamil/layout/widgets/showProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/anaml_app_state.dart';
import '../constants/MyColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageStState();
}

class _LoginPageStState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AlahdanCubit, AnamilStates>(
        listener: (context, state) {
          if (state is LoadingState) {
            showProgressIndicator(context);
          }
          if (state is LoginSuccessful) {
            Navigator.of(context).pop();

            navigateAndFinish(context, const HomePage());
          }
          if (state is LoginFailed) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: MyColors.blue,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 50.0,
                        horizontal: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              Images.anamil,
                              width: 300,
                              height: 200,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('تسجيل الدخول',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(color: MyColors.blue)),
                          ),
                          buildTextField(
                            // context: context,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'ادخل البريد الالكتروني!';
                              }
                              return null;
                            },
                            controller: emailController,
                            icon: const Icon(Icons.person),
                            fieldAddress: 'البريد الالكتروني',
                            hintText: 'Abdulla@gmail.com',
                          ),
                          buildTextField(
                            // context: context,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'ادخل كلمة المرور!';
                              }
                              return null;
                            },
                            controller: passwordController,
                            icon: const Icon(Icons.lock),
                            obscureText: true,
                            fieldAddress: 'كلمة المرور',
                            hintText: '***********',
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {
                                navigateTo(context, const ForgotYourPassword());
                              },
                              child: Text(
                                'هل نسيت كلمة المرور ؟',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: MyColors.blue),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.9,
                                  height: 50,
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: MyColors.blue,
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          AlahdanCubit.get(context).signin(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                        }
                                      },
                                      child: const Text(
                                        'تسجيل الدخول',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              navigateTo(context, Register());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ليس لديك حساب؟',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.blue)),
                                Text('انشئ الان ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: MyColors.blue)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
