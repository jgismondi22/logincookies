import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:good_login/already_have_an_account_acheck.dart';
import 'package:good_login/background_login.dart';
import 'package:good_login/constraints.dart';
import 'package:good_login/rounded_button.dart';
import 'package:good_login/rounded_input_field.dart';
import 'package:good_login/rounded_password_field.dart';
import 'package:good_login/signup_screen_signup.dart';
import 'package:good_login/text_field_container.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(
              height: size.height * .03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * .35,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
             RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * .03,),
            AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignUpScreen();
                        },
                    ),
                  );
                  },
            ),
          ],
        ),
      ),
    );
  }
}

