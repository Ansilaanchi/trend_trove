import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trend_trove/Verification/OtpVarify.dart';

import '../Verification/shrtPage/verifyShrt.dart';

class SignUp extends StatefulWidget {
   SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController phonenoController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children:  [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    // color: Colors.amber,
                  ),
                  Positioned(
                    child:               Image(image: AssetImage('assets/bubble 02 (4).png')),
          ),
                  // Positioned(
                  //   left: 320,
                  //   top: 160,
                  //   child: Image(image: AssetImage('assets/bubblle 03.png'))),
                    Positioned(
                      top: 120,
                      left: 50,
                      child: Text('Create \n Account', style: GoogleFonts.aleo(
                        textStyle: TextStyle(
                      fontSize: 40,
                      color: Colors.black,  
                    ),
                      ))),
                ],
              ),
          
           Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                        color: Color.fromARGB(255, 216, 219, 219),
          
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your name",
                          ),
                          validator: (input) => input!.trim().isEmpty
                              ? 'Please enter a valid name'
                              : null,
                          // onSaved: (input) => _name = input!,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                                              color: Color.fromARGB(255, 216, 219, 219),
          
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Email",
                          ),
                          validator: (input) => !input!.contains('@')
                              ? 'Please enter a valid email'
                              : null,
                          // onSaved: (input) => _email = input!,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                                              color: Color.fromARGB(255, 216, 219, 219),
          
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: phonenoController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Phone number",
                          ),
                          validator: (input) => input!.trim().isEmpty
                              ? 'Please enter a valid phoneNumber'
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(),
                                              color: Color.fromARGB(255, 216, 219, 219),
          
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: passwordController,
          
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your Password",
                          ),
                          validator: (input) => input!.length < 6
                              ? 'Must be at least 6 characters'
                              : null,
                          // onSaved: (input) => _password = input!,
                          obscureText: false,
                        ),
                      ),
                    ),
              
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: InkWell(
                  onTap: () {
   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => VerifyShrt()));
                                     },
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text('Sign Up', style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        
                      ) ,),
                    ),
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