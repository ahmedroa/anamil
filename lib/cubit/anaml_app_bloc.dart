import 'package:anamil/cubit/anaml_app_state.dart';
import 'package:anamil/layout/widgets/message.dart';
import 'package:anamil/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlahdanCubit extends Cubit<AnamilStates> {
  AlahdanCubit() : super(AnamilInitialState());
  static AlahdanCubit get(context) => BlocProvider.of(context);

  signin({required String email, required String password}) async {
    try {
      emit(LoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccessful());
    } on FirebaseAuthException catch (exception) {
      emit(LoginFailed(errorMsg: ''));
      if (exception.code == 'user-not-found') {
        message(message: 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني', color: Colors.red);
      } else if (exception.code == 'wrong-password') {
        message(message: 'البريد الاكتروني وكلمة المرور غير متطابقان', color: Colors.red);
      }
    }
  }

  signUp(
      {context, required String email, required String password, required String name, required String phone}) async {
    emit(LoadingState());
    try {
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((userData) {
        UserModel model =
            UserModel(uId: userData.user!.uid, email: email, password: password, name: name, phone: phone);
        FirebaseFirestore.instance.collection('user').doc(userData.user!.uid).set(model.toJson());
        // navigateTo(context, const HomePage());
        emit(LoginSuccessful());
      });
    } on FirebaseAuthException catch (exception) {
      emit(LoginFailed(errorMsg: ''));
      debugPrint(exception.code);
      // if (exception.code == 'user-not-found') {
      //   message(message: 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني', color: Colors.red);
      // } else if (exception.code == 'wrong-password') {
      //   message(message: 'البريد الاكتروني وكلمة المرور غير متطابقان', color: Colors.red);
      // }
    }
  }
}
