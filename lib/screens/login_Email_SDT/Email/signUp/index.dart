import 'package:flutter/material.dart';
import 'package:shop_shoes/screens/login_Email_SDT/index.dart';
import 'package:shop_shoes/services/loginAPI.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({super.key});

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var userController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              width: 444.44,
              height: 460.64,
              top: 250,
              left: 20,
              child: Image.asset('assets/Ellipse-237.png'),
            ),
            Positioned(
              width: 491.77,
              height: 503.55,
              top: 80,
              right: 10,
              child: Image.asset('assets/Ellipse-238.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                    left: 30,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/back_login.png'),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Image.asset('assets/logo.png'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 0),
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 95, 103)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 0),
                  child: Text(
                    "to become a member",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color.fromARGB(255, 0, 95, 103)),
                  ),
                ),
                Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 30, bottom: 0)),
                              Text(
                                'Name',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 95, 103),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextField_Email_Password(
                          nameController,
                          Icons.text_fields,
                          'Enter your name',
                          false,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 30, bottom: 0)),
                              Text(
                                'Email',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 95, 103),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextField_Email_Password(
                          emailController,
                          Icons.mail_outline,
                          'Enter your email',
                          false,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 30, bottom: 0)),
                              Text(
                                'Username',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 95, 103),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextField_Email_Password(
                          userController,
                          Icons.account_circle_outlined,
                          'Enter your username',
                          false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30, bottom: 0),
                            ),
                            Text(
                              'Password',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 95, 103),
                              ),
                            ),
                          ],
                        ),
                        TextField_Email_Password(
                          passController,
                          Icons.lock_outline,
                          'Enter your password',
                          true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              if (nameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  userController.text.isEmpty ||
                                  passController.text.isEmpty == '') {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text('Please do not leave it blank'),
                                  ),
                                );
                              } else if (emailController.text.isEmpty ||
                                  userController.text.isEmpty) {
                                if (emailController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Email already exists'),
                                    ),
                                  );
                                } else if (userController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Username already exists'),
                                    ),
                                  );
                                }
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Email or username already exists'),
                                  ),
                                );
                              } else {
                                var data = {
                                  "name": nameController.text,
                                  "email": emailController.text,
                                  "username": userController.text,
                                  "password": passController.text,
                                };
                                LoginAPI.SignUp(data);
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => const LoginEmailPhone(),
                                ));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Sign Up Success !'),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 106, 215, 225),
                              minimumSize: const Size(250, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 10,
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 50),
                                ),
                                const Text(
                                  "Don't have an account ?",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 47, 47, 47),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 34, 97, 103),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Padding TextField_Email_Password(
    allController, IconData icon, String hintText, bool obscureText) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: TextFormField(
      controller: allController,
      obscureText: obscureText, // Đặt obscureText thành true
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(219, 251, 251, 251),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        prefixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 0, 95, 103),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
