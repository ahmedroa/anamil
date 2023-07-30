// ignore_for_file: unused_local_variable

import 'package:anamil/bloc/anaml_app_bloc.dart';
import 'package:anamil/bloc/anaml_app_state.dart';
import 'package:anamil/layout/widgets/MainButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AlahdanCubit.get(context);

    return Scaffold(
      body: BlocConsumer<AlahdanCubit, AnamilStates>(
        listener: (context, state) {
          if (state is LoadingState) {}
          if (state is LoginSuccessful) {}
          if (state is LogoutFailed) {}
        },
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 25.0,
              ),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('تسجيل الدخول',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              // color: cubit.isDark ? MyColors.containerlight : MyColors.containerDark,
                              fontSize: 26,
                              fontWeight: FontWeight.bold)),
                      TextFormField(
                        controller: nameController,
                        textInputAction: TextInputAction.next,
                        validator: (val) => val!.isEmpty ? 'Please enter your name!' : null,
                        decoration: InputDecoration(
                          labelText: 'اسم المستخدم',
                          hintText: 'ادخل اسم مستخدم جديد',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: MyColors.purple,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        validator: (val) => val!.isEmpty ? 'Please enter your email!' : null,
                        decoration: InputDecoration(
                          labelText: 'البريد الالكتروني',
                          hintText: ' الرجاء ادخال البريد الالكتروني',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: MyColors.purple,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      TextFormField(
                        controller: passwordController,
                        validator: (val) => val!.isEmpty ? 'Please enter your password!' : null,
                        decoration: InputDecoration(
                          labelText: 'كلمة المرور',
                          // labelStyle: TextStyle(color: cubit.isDark ? MyColors.containerlight : MyColors.containerDark),
                          hintText: 'الرجاء ادخال كلمة مرور',
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: MyColors.purple,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      const SizedBox(height: 16.0),
                      MainButton(
                          text: 'تسجيل',
                          onTap: () {
                            if (formKey.currentState!.validate()) {}
                          }),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
