import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_shoes/screens/home/index.dart';

class LoginEmail extends StatefulWidget {
  const LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 30, bottom: 0)),
                  Text(
                    'Username',
                    style: TextStyle(color: Color.fromARGB(255, 0, 95, 103)),
                  ),
                ],
              ),
            ),
            TextField_Email_Password(
                CupertinoIcons.mail_solid, 'Enter your username', false),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(left: 30, bottom: 0)),
                Text(
                  'Password',
                  style: TextStyle(color: Color.fromARGB(255, 0, 95, 103)),
                ),
              ],
            ),
            TextField_Email_Password(Icons.lock, 'Enter your password', true),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot password ?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 95, 103), fontSize: 13),
                ),
                Padding(padding: EdgeInsets.only(right: 30)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 106, 215, 225),
                  minimumSize: const Size(250, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 10,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Or login with",
                      style: TextStyle(color: Color.fromARGB(255, 47, 47, 47))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Facebook_48px.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/Twitter_48px.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/google_48px.png',
                      width: 33.5,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(color: Color.fromARGB(255, 47, 47, 47)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 106, 215, 225),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding TextField_Email_Password(
      IconData icon, String hintText, bool obscureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
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
}
