import 'package:flutter/material.dart';
import 'package:healthcare_news/pages/home.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/doctor.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4),
                    BlendMode.modulate,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xffad051f),
                      //fontFamily: "DMSerifDisplay",
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //
                  Spacer(
                    flex: 1,
                  ),
                  TextFormField(
                    validator: (name) {
                      if (name != null && name.isEmpty != true) {
                        return null;
                      }
                      return "Enter your name";
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff042d7d),
                        ),
                      ),
                      label: Text("Full name"),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    validator: (name) {
                      if (name != null && name.isEmpty != true) {
                        return null;
                      }
                      return "Enter your Phone number";
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff042d7d),
                        ),
                      ),
                      label: Text(" Phone Number "),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    validator: (mail) {
                      if (mail != null &&
                          mail.isEmpty != true &&
                          mail.contains("@") &&
                          mail.contains(".com")) {
                        return null;
                      }
                      return 'Error,your mail must contain (@) (.com)';
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff042d7d),
                        ),
                      ),
                      label: Text("Email Address"),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  TextFormField(
                    validator: (name) {
                      if (name != null && name.isEmpty != true) {
                        return null;
                      }
                      return "Enter your Password";
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff042d7d),
                        ),
                      ),
                      label: Text("Password"),
                    ),
                  ),

                  Spacer(
                    flex: 1,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(141, 54),
                      backgroundColor: Color(0xffad051f),
                    ),
                    onPressed: () {
                      setState(() {
                        print(_formKey.currentState?.validate());
                      });
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        }
                      });
                    },
                    child: Text(
                      "Login Now",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
