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
              const Text(
                'Welcome back',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color.fromRGBO(0, 0, 0, 1)),
              ),
              const Text('Please Enter your email and password to login',
                  style: kNormalFont),
              kHeight10,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  //key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        //controller: _emailController,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.black),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 3),
                          labelText: 'Email address',
                          labelStyle:
                              const TextStyle(fontSize: 14, color: kblack),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(222, 222, 222, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(222, 222, 222, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: Color.fromRGBO(
                                    222,
                                    222,
                                    222,
                                    1,
                                  )),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      kHeight30,
                      TextFormField(
                        // controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.black),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 3),
                          labelText: 'Password',
                          labelStyle:
                              const TextStyle(fontSize: 14, color: kblack),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(222, 222, 222, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(222, 222, 222, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(222, 222, 222, 1)),
                              borderRadius: BorderRadius.circular(15)),
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
                                      BorderRadiusDirectional.circular(20))),
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return const DashboardScreen();
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
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
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
