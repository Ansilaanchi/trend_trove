import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trend_trove/homePage.dart';
import 'package:trend_trove/registerPages/signUp.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
      key: _formKey,
      child: Column(children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              // color: Colors.blueGrey,
            ),
            Positioned(
              child: const Image(
                image: AssetImage('assets/bubble 02 (3).png'),
              ),
            ),
               Positioned(
              child: const Image(
                image: AssetImage('assets/bubble 01 (4).png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 180),
              child: Text(
                'Sign In',
                style: GoogleFonts.aleo(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 8, 0, 0),
                    letterSpacing: .5,
                    fontSize: 45,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 250),
              child: Text(
                'Good to see you back!',
                style: GoogleFonts.amiriQuran(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    letterSpacing: .5,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 350,
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText:
                    'Enter your Email', // label: Text('Email', selectionColor: Colors.blue,),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.grey)),
                fillColor:Color.fromARGB(255, 216, 219, 219),
                filled: true,
              ),
              validator: (input) =>
                  !input!.contains('@') ? 'Please enter a valid email' : null,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: 350,
            child: TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Colors.grey)),
                fillColor:Color.fromARGB(255, 216, 219, 219),
                filled: true,
              ),
              validator: (input) =>
                  input!.length < 6 ? 'Must be at least 6 characters' : null,
              obscureText: false,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () {
          emailController.text.toString();
          passwordController.text.toString();

          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          child: Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text('Login', style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              children: [
                Expanded(child: Divider()),
                Text(" Or Login with "),
                Expanded(child: Divider()),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              netCo("assets/Group 123.png"),
              // netCo("assets/cib_apple.png"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 60),
          child: Row(
            children: [
              Text(
                "Don’t have an account?",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  " Register Now",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    )));

    
  }

  Container netCo(String image) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(31, 5, 5, 5)),
        
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: Image(image: AssetImage(image)),
    );
  }
}


