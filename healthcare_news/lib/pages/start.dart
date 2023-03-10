import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Colors.white.withOpacity(0.8),
                  BlendMode.modulate,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "’’",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Like Education,",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "healthcare",
                style: TextStyle(
                  color: Color(0xff104c75),
                  //fontFamily: "Pacifico",
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "also needs",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "to be given",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "importance.",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ",,",
                style: TextStyle(
                  color: Colors.white,
                  //fontFamily: "Pacifico",
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 60),
                      minimumSize: Size(100, 50),
                      backgroundColor: Color(0xff104c75),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/login_page");
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        //color: Color(0xff042d7d),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 60),
                      minimumSize: Size(100, 50),
                      backgroundColor: Color(0xffad051f),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/signup_page");
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        //color: Color(0xff042d7d),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
