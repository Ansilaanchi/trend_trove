import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trend_trove/registerPages/loginPage.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 220.0,
              left: 50,
            ),
            child: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image(image: AssetImage('assets/Ellipse.png')),
                Positioned(
                    left: 35,
                    top: 14,
                    child: Image(
                        image: AssetImage('assets/Group 1000004649.png'))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50,
              top: 10,
            ),
            child: Text(
              'Pop Cart',
              style: GoogleFonts.yatraOne(
                textStyle: TextStyle(
                    color: Colors.blue, letterSpacing: .5, fontSize: 40),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40, left: 15),
            child: Text(
              "Let's Start with your Destination",
              style: GoogleFonts.yantramanav(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: .5, fontSize: 25),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Let's Go",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ),

//          Padding(
//            padding: const EdgeInsets.only(top: 80),
//            child: InkWell(
//             onTap: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
//             },
//              child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                // ignore: prefer_const_literals_to_create_immutables
//                children: [
//                  Text('I already have an account', style: TextStyle(
//                   fontSize: 18, color: Colors.black,
//                  ),),
//                  Icon(Icons.login,)
//                ],
//              ),
//            ),
//          )
        ],
      ),
    );
  }
}
