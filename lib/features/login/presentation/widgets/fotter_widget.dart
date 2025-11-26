import 'package:flutter/material.dart';

import '../../../../core/styling/text_style.dart';

class FotterWidget extends StatelessWidget{
  const FotterWidget ({super.key});

  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(

        children: [
          Row(
            children: [
              Text("By logging in you agree to our", style:TextStyling.gray400size11),
              SizedBox(width: 2,),
              Text("Terms & Conditions", style:TextStyling.black400size12),
              SizedBox(width: 2,),
              Text("and", style:TextStyling.gray400size11),


            ],
          ),
          SizedBox(height: 10,),
          Center(child: Text("PrivacyPolicy.", style:TextStyling.black400size12)),
          SizedBox(height: 25,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Row(
                children: [
                  Text("Aleady have an account? ", style:TextStyling.black400size12),
                  SizedBox(width: 1,),
                  Text("Sign Up", style:TextStyling.blue400size12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}