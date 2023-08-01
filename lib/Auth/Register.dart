import 'package:anamil/constants/Route.dart';
import 'package:anamil/cubit/anaml_app_bloc.dart';
import 'package:anamil/cubit/anaml_app_state.dart';
import 'package:anamil/layout/screens/homePage.dart';
import 'package:anamil/layout/widgets/MainButton.dart';
import 'package:anamil/layout/widgets/showProgressIndicator.dart';
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
          return const Scaffold();
        },
      ),
    );
  }
}
