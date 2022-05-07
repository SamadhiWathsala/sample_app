import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? _age;
  String? _userName;
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
                labelText: 'Username',
                prefixIcon: Icon(Icons.person_outline),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required field';
                }
                return null;
              },
              onChanged: (String? value)=> setState(() {
                _userName = value;
              }),
              onSaved: (String? value) => setState(() {
                _userName = value;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
            child: TextFormField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              onEditingComplete: () => _node.nextFocus(),
              decoration: const InputDecoration(
                labelText: 'Age',
                prefixIcon: Icon(Icons.stacked_line_chart_outlined),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required field';
                }
                return null;
              },
              onChanged: (String? value)=> setState(() {
                _age = value;
              }),
              onSaved: (String? value) => setState(() {
                _age = value;
              }),
            ),
          ),
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
                  return 'Required field';
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
                  return 'Required field';
                }
                return null;
              },
              onSaved: (String? value) => setState(() {
                _password = value;
              }),
            ),
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
                child: const Center(child: Text('REGISTER',style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
