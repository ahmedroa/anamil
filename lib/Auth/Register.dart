import 'package:anamil/constants/MyColors%20.dart';
import 'package:anamil/constants/Route.dart';
import 'package:anamil/constants/images.dart';
import 'package:anamil/cubit/anaml_app_bloc.dart';
import 'package:anamil/cubit/anaml_app_state.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/widgets/showProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../layout/widgets/buildTextField.dart';

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

  // @override
  String generateCountryFlag() {
    String countryCode = 'SA';

    String flag = countryCode.toUpperCase().replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397),
        );

    return flag;
  }

  Widget _buildPhoneFormField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(9)),
            ),
            child: TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter yout phone number!';
                } else if (value.length < 10) {
                  return 'Too short for a phone number!';
                }
                return null;
              },
              controller: phoneController,
              style: const TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
              ),
              decoration: const InputDecoration(border: InputBorder.none),
              cursorColor: Colors.black,

              onSaved: (value) {
                // phoneNumber = value!;
              },
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: MyColors.blue),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Text(
              // ignore: prefer_interpolation_to_compose_strings
              generateCountryFlag() + ' +966',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 16, letterSpacing: 1.0),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AlahdanCubit, AnamilStates>(
        listener: (context, state) {
          if (state is LoadingState) {
            showProgressIndicator(context);
          }
          if (state is LoginSuccessful) {
            navigateTo(context, const HomePage());
          }
          if (state is LoginFailed) {}
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
                        // vertical: 10.0,
                        horizontal: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height / 5,
                          // ),
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
                            child: Text('إنشاء الحساب',
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(color: MyColors.blue)),
                          ),
                          buildTextField(
                              context: context,
                              controller: nameController,
                              icon: const Icon(Icons.person),
                              fieldAddress: 'الاسم',
                              hintText: 'Abdulla'),
                          buildTextField(
                              context: context,
                              controller: emailController,
                              icon: const Icon(Icons.email),
                              obscureText: true,
                              fieldAddress: 'البريد الالكتروني',
                              hintText: 'Abdulla@gmail.com'),
                          buildTextField(
                              context: context,
                              controller: phoneController,
                              icon: const Icon(Icons.lock),
                              obscureText: true,
                              fieldAddress: 'كلمة المرور',
                              hintText: '***********'),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text('رقم الجوال ',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[800]))),
                          _buildPhoneFormField(),
                          const SizedBox(
                            height: 30,
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
                                        'تسجيل',
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ))),
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
