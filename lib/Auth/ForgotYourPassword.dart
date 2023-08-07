import 'package:anamil/layout/widgets/MainButton.dart';
import 'package:flutter/material.dart';

import '../layout/widgets/buildTextField.dart';

class ForgotYourPassword extends StatelessWidget {
  const ForgotYourPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('نسيت كلمة المرور', style: Theme.of(context).textTheme.titleLarge!),
          buildTextField(
            // context: context,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter yout phone number!';
              }
              return null;
            },
            controller: emailController,
            icon: const Icon(Icons.person),
            fieldAddress: 'البريد الالكتروني',
            hintText: 'Abdulla@gmail.com',
          ),
          const SizedBox(
            height: 20,
          ),
          MainButton(text: 'إرسال', onTap: () {})
        ],
      ),
    );
  }
}
