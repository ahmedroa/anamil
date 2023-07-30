import 'package:anamil/bloc/anaml_app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlahdanCubit extends Cubit<AnamilStates> {
  AlahdanCubit() : super(AnamilInitialState());
  static AlahdanCubit get(context) => BlocProvider.of(context);
}
