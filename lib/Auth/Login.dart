import 'package:anamil/constants/Route.dart';
import 'package:anamil/cubit/anaml_app_bloc.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/widgets/showProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/anaml_app_state.dart';
import '../constants/MyColors .dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageStState();
}

class _LoginPageStState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool isClicked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  buildTextField() => Column(
        children: [
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              isDense: false,
              hintText: 'Abdulla@gmail.com',
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: MyColors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text('كلمة المرور',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[800]))),
          TextField(
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            textAlign: TextAlign.center,
            obscureText: isVisible,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: '***********',
              contentPadding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: MyColors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      );

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
                      padding: const EdgeInsets.symmetric(
                        vertical: 60.0,
                        horizontal: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 5,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text('تسجيل الدخول',
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(color: MyColors.blue)),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text('البريد الإلكتروني',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[800]))),
                          buildTextField(),
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'هل نسيت كلمة المرور ؟',
                                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: MyColors.blue),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.9,
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
                                          AlahdanCubit.get(context)
                                              .signin(email: emailController.text, password: passwordController.text);
                                        }
                                      },
                                      child: const Text(
                                        'تسجيل الدخول',
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ))),
                          const SizedBox(
                            height: 210,
                          ),
                          Align(
                              child: Text('ليس لديك حساب؟',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(fontWeight: FontWeight.bold, color: MyColors.blue))),
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
