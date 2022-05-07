import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/screens/auth/sign_in.dart';
import 'package:sample_app/screens/auth/sign_up.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ChallengeMe',style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.purple,fontWeight: FontWeight.w500),),
            SizedBox(
              height: size.height/20,
            ),
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 0.8,
              child: SvgPicture.asset('assets/images/wrapper.svg'),
            ),
            SizedBox(
              height: size.height/12,
            ),
            Text('Share Experiences',style: Theme.of(context).textTheme.headline4,)
          ],
        ),
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: size.width/2.4,
              child: ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, SignIn.routeName), child: const Text('SIGN IN')
              )
          ),
          SizedBox(
              width: size.width/2.4,
              child: ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, SignUp.routeName), child: const Text('SIGN UP')
              )
          )
        ],
      ),
    );
  }
}
