import 'package:flutter/material.dart';
import 'package:freefentasy/screen/loginscreen.dart';
import 'package:velocity_x/velocity_x.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/bg.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 500),
          child: Column(
            children: [
              const Text(
                "Fantasy Cricket",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Choose the best 11 players and create a team",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "best team win",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * 0.052,
                width: size.width * 1,
                alignment: Alignment.center,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ));
                },
                child: Container(
                  height: size.height * 0.052,
                  width: size.width * 1,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
