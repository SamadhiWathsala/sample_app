import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/ui_component/sigin_in_form.dart';

class SignIn extends StatelessWidget {
  static const String routeName = '/sign-in';
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: size.height/20,
              backgroundColor: Colors.purple[50],
              child: Icon(Icons.lock_outline_rounded,size: size.height/20,),
            ),
            SizedBox(height: size.height/30,),
            const SignInForm()
          ],
        ),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.white,
            width: size.width/5,
            child: SvgPicture.asset('assets/images/google.svg'),
          ),
          Container(
            color: Colors.white,
            width: size.width/5,
            child: SvgPicture.asset('assets/images/facebook.svg'),
          ),
          Container(
            color: Colors.white,
            width: size.width/5,
            child: SvgPicture.asset('assets/images/stack-overflow.svg'),
          ),
          Container(
            color: Colors.white,
            width: size.width/5,
            child: SvgPicture.asset('assets/images/twitter.svg'),
          )
        ],
      ),
    );
  }
}
