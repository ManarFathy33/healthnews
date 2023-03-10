import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  } //to not visable password

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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Color(0xff104c75),
                      //fontFamily: "DMSerifDisplay",
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    validator: (mail) {
                      if (mail != null && mail.isEmpty != true) {
                        return null;
                      }
                      return 'Enter your E-mail or Phone Number';
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff104c75),
                        ),
                      ),
                      labelText: "Email / Phone Number",
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  TextFormField(
                    validator: (pass) {
                      if (pass != null && pass.length > 7) {
                        return null;
                      }
                      return "Week, Password must be more than 7 character";
                    },
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff104c75),
                        ),
                      ),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        color: Color(0xff104c75),
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(95, 50),
                      backgroundColor: Color(0xff104c75),
                    ),
                    onPressed: () {
                      setState(() {
                        print(_formKey.currentState!.validate());
                      });
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamed("/home_page");
                        }
                      });
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password ?",
                      style: TextStyle(
                        color: Color(0xff104c75),
                      ),
                    ),
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
