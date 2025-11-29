import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/widgets/app_button.dart';
import 'package:kimit256docdoc/core/widgets/app_form_field.dart';
import 'package:kimit256docdoc/core/models/user_model.dart';
import 'package:kimit256docdoc/features/login/logic/login_cubit.dart';
import 'package:kimit256docdoc/features/login/logic/login_state.dart';
import 'package:kimit256docdoc/features/login/presentation/widgets/welcome_widget.dart';
import 'package:kimit256docdoc/features/sign_up/logic/cubit.dart';
import '../../../../core/styling/text_style.dart';
import '../../../../routing/routes.dart';
import '../../../login/presentation/widgets/forget_pass.dart';
import '../../../login/presentation/widgets/fotter_widget.dart';
import '../../logic/states.dart';


class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passConfirmationController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            Navigator.pushReplacementNamed(context, Routes.home);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Sign Up in successfully!",
                  style: TextStyling.white600size16,
                ),
                backgroundColor: ColorsManager.primaryColor,
                duration: Duration(seconds: 2),
              ),
            );
          } else if (state is SignUpErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.em, style: TextStyling.white600size16),
                backgroundColor: ColorsManager.primaryColor,
                duration: Duration(seconds: 2),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeWidget(),
                    SizedBox(height: 32.h),
                    AppFormField(
                      textEditingController: emailController,
                      hintTxt: "Email",
                    ),
                    SizedBox(height: 12.h),
                    AppFormField(
                      textEditingController: passController,
                      hintTxt: "Password",
                    ),
                    SizedBox(height: 12.h),
                    AppFormField(
                      textEditingController: passConfirmationController,
                      hintTxt: "Password Confirmation",
                    ),
                    SizedBox(height: 12.h),
                    AppFormField(
                      textEditingController: nameController,
                      hintTxt: "name",
                    ),
                    SizedBox(height: 12.h),
                    AppFormField(
                      textEditingController: phoneController,
                      hintTxt: "phone",
                    ),
                    SizedBox(height: 12.h),
                    AppFormField(
                      textEditingController: genderController,
                      hintTxt: "gender",
                    ),
                    SizedBox(height: 12.h),

                    Center(
                      child: (state is LoginLoadingState)
                          ? CircularProgressIndicator()
                          : AppButton(
                        buttonTxt: "Register",
                        onPress: () {
                          context.read<SignUpCubit>().signUp(
                              UserModel(
                                  email: emailController.text,
                                  password: passController.text,
                                gender: genderController.text,
                                name: nameController.text,
                                passwordConfirmation: passConfirmationController.text,
                                phone: phoneController.text
                              ));

                        },
                      ),
                    ),
                    SizedBox(height: 12.h),

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
