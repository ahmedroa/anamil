// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../constants/MyColors .dart';

buildTextField(
        {required context,
        required String fieldAddress,
        required String hintText,
        String? Function(String?)? validator,
        required TextEditingController? controller,
        bool obscureText = false,
        required Widget icon}) =>
    Column(
      children: [
        Align(
            alignment: Alignment.centerRight,
            child:
                Text(fieldAddress, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[800]))),
        TextFormField(
          validator: validator,
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: icon,
            isDense: false,
            hintText: hintText,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.blue,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
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
