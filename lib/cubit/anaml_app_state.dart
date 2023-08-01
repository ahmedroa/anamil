abstract class AnamilStates {}

class AnamilInitialState extends AnamilStates {}

class LoadingState extends AnamilStates {}

class LoginSuccessful extends AnamilStates {}

class LoginFailed extends AnamilStates {
  final String errorMsg;

  LoginFailed({required this.errorMsg});
}
