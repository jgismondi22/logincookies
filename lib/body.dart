import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:good_login/background.dart';
import 'package:good_login/constraints.dart';
import 'package:good_login/login_screen.dart';
import 'package:good_login/rounded_button.dart';
import 'package:good_login/signup_screen_signup.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // Size size = MediaQuery.of(context).size;//
//size provides a height and width of the screen
    return Background(
        child: SingleChildScrollView(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Center(
               child: Text(
            "WELCOME TO CONDOR",
            style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 17),
      ),
             ),
              SizedBox(
                  height: 20),
             // size.height * 0.05
              //Image.asset("assets/images/stork.png",
                //scale: .8,
             // ),
              SizedBox(
                  height: 70),
             // size.height * 0.05
              RoundedButton(
                text: "LOGIN",
                press: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    }),
                  );
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryColor,
                textColor: Colors.white,
                press: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
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


/*
 class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provides for total height and width of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png",
            width: size.width
            ),
        ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: 0.2,
            ),
            ),
          child
          ],
      ),
    );
  }
*/