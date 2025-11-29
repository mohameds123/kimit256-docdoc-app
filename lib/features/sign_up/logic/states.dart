class SignUpStates {}

class SignUpInitailState extends SignUpStates{}

class SignUpLoadingState extends SignUpStates{}

class SignUpSuccessState extends SignUpStates{}

class SignUpErrorState extends SignUpStates{
  String em;
  SignUpErrorState({required this.em});
}

