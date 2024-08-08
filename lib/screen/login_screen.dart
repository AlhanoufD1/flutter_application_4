import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen/Sign_up_Screen.dart';
import 'package:flutter_application_4/screen/home_screen.dart';

bool isSecured = true;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
          255,
          36,
          83,
          38,
        ),
        title: const Text("منصة عاون الخيرية",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 228, 239, 228),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login2.png",
              height: 250,
              width: 350,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Number"),
                      prefixIcon: Icon(Icons.add_ic_call_rounded, color: Colors.black),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: isSecured,
                    decoration: InputDecoration(
                      label: Text("Enter password"),
                      prefixIcon: Icon(Icons.lock, color: Colors.black),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured = !isSecured;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomeScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(
                            255,
                            36,
                            83,
                            38,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(0, 6),
                            ),
                          ]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.login, color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an acount?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextButton(
                         onPressed: () {
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),));
                        },
                        child: const Text('sign up',style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                     
                    ],
                  ),
                ],
              ),
              // ],
            ),
            // ),
          ],
        ),
      ),
    );
  }
}
