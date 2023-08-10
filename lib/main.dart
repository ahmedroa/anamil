// ignore_for_file: unused_local_variable

import 'package:anamil/cubit/anaml_app_bloc.dart';
import 'package:anamil/layout/screens/details.dart';
import 'package:anamil/shared/bloc_observer.dart';
import 'package:anamil/shared/helper/cashHelper.dart';
import 'package:anamil/theme/app_theme_light.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'cubit/anaml_app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CashHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late bool islogin;
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      islogin = false;
    } else {
      islogin = true;
    }

    return BlocProvider(
      create: (context) => AlahdanCubit(),
      child: BlocConsumer<AlahdanCubit, AnamilStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [Locale("ar", "AE")],
            locale: const Locale("ar", "AE"),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: lightTheme,
            home: const Details(),
          );
        },
      ),
    );
  }
}
