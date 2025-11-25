import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kimit256docdoc/core/colors/colors_manager.dart';
import 'package:kimit256docdoc/core/widgets/app_button.dart';
import 'package:kimit256docdoc/core/widgets/app_form_field.dart';
import 'package:kimit256docdoc/features/login/presentation/widgets/welcome_widget.dart';

import '../../../../core/styling/text_style.dart';
import '../widgets/forget_pass.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeWidget(),
              SizedBox(height: 32.h,),
              AppFormField(textEditingController: emailController, hintTxt: "Email"),
              SizedBox(height: 12.h,),
              AppFormField(textEditingController: passController, hintTxt: "Password"),
              SizedBox(height: 12.h,),
              ForgetPass(),
              SizedBox(height: 12.h,),
              Center(child: AppButton(buttonTxt:"Login", onPress:  (){}))



            ],
          ),
        ),
      ),
    );
  }
}
