import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // final _formKey = GlobalKey<FormState>();
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight30,
              Center(
                child: Image.asset(
                  'assets/images/logo.png', // Adjust the path as per your actual file location
                  width: 150.0, // Adjust width as needed
                  height: 150.0, // Adjust height as needed
                ),
              ),
              kHeight30,
              Text(
                'Welcome back',
                style: kHeadingFont,
              ),
              Text('Please Enter your email and password to login',
                  style: kNormalFont),
              kHeight10,
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Form(
                  //key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        //controller: _emailController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                          labelText: 'Email address',
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter your email';
                        //   }
                        //   return null;
                        // },
                      ),
                      kHeight30,
                      TextFormField(
                        // controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter your password';
                        //   }
                        //   return null;
                        // },
                      ),
                      kHeight30,
                      ElevatedButton(
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                              ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(16))),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return DashboardScreen();
                            },
                          ));
                          // if (_formKey.currentState.validate()) {
                          //   // Process login functionality here
                          //   String email = _emailController.text;
                          //   String password = _passwordController.text;
                          //   print('Email: $email, Password: $password');
                          //   // Example: You can send this data to an authentication service
                          // }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
