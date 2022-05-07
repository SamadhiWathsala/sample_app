import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    final size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: TextFormField(
              textAlign: TextAlign.center,
              onEditingComplete: () => _node.nextFocus(),
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.alternate_email),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              onChanged: (String? value)=> setState(() {
                _email = value;
              }),
              onSaved: (String? value) => setState(() {
                _email = value;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: TextFormField(
              textAlign: TextAlign.center,
              onEditingComplete: () => _node.unfocus(),
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              onChanged: (String? value)=> setState(() {
                _password = value;
              }),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
              onSaved: (String? value) => setState(() {
                _password = value;
              }),
            ),
          ),
          Row(
            children: [
              Padding(
                padding:  const EdgeInsets.only(left: 25,top: 10),
                child: Text('Forgot password',style: TextStyle(color: Colors.blue[900],fontSize: 16,decoration: TextDecoration.underline,fontWeight: FontWeight.w700),),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: 15, right: 15,top: size.height/30,bottom: 5),
            child: InkWell(
              // onTap: ()=>onSubmit(),
              onTap: (){},
              child: Container(
                width: double.maxFinite,
                height: size.width/8,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), right: Radius.circular(50)),
                  color: Colors.purple,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(4, 8)
                    )
                  ],
                ),
                child: const Center(child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width/20,vertical: size.height/20),
            child: const Divider(thickness: 2,),
          ),
          Text('OR',style: Theme.of(context).textTheme.subtitle1,),
          Padding(
            padding: const EdgeInsets.only(top:18),
            child: Text('SIGN IN WITH',style: Theme.of(context).textTheme.subtitle1,),
          )

        ],
      ),
    );
  }
}
