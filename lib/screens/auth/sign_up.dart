import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/ui_component/sigin_in_form.dart';
import 'package:sample_app/ui_component/sign_up_form.dart';

class SignUp extends StatelessWidget {
  static const String routeName = '/sign-up';
  const SignUp({Key? key}) : super(key: key);

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
            const SignUpForm()
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        child: SizedBox(
          height: size.height/7,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text('OR SIGN UP WITH'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width/20),
                child: const Divider(
                  thickness: 2,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset('assets/images/google.svg'),
                  SvgPicture.asset('assets/images/facebook.svg'),
                  SvgPicture.asset('assets/images/stack-overflow.svg'),
                  SvgPicture.asset('assets/images/twitter.svg')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
