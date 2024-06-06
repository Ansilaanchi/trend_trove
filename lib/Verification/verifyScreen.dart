import 'package:flutter/material.dart';
import 'package:trend_trove/Verification/shrtPage/verifyScrnShrt.dart';
import 'package:trend_trove/Verification/shrtPage/verifyShrt.dart';
// import 'package:http/http.dart' as http;

class VarificationScreen extends StatefulWidget {
  const VarificationScreen({super.key});

  @override
  State<VarificationScreen> createState() => _VarificationScreenState();
}

class _VarificationScreenState extends State<VarificationScreen> {

  // Future<void> verifyOTP(BuildContext context, String otp) async {
  //   try {
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     var userid = await prefs.get('userid');
  //     var response = await http.post(
  //       Uri.parse("http://192.168.29.154:3000/flutter/validate-otp"),
  //       headers: {"Content-Type": "application/x-www-form-urlencoded"},
  //       body: {
  //         'id': userid,
  //         'otp': otp, // No need to convert otp to string
  //       },
  //     );
  //     print(response.body);
  //     if (response.statusCode == 200) {
  //       var result = jsonDecode(response.body);
  //       print(response.body);

  //       // If the OTP is correct, navigate to the login page
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => LoginPage()),
  //       );
  //     } else {
  //       // Display error message if user id is not received
  //       showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text('User ID Error'),
  //             content: Text('Failed to retrieve user ID from the server.'),
  //           );
  //         },
  //       );
  //     }
  //   } catch (e) {
  //     // Display error message for exceptions
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Error'),
  //           content: Text('An error occurred: $e'),
  //         );
  //       },
  //     );
  //     print('Error occurred: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Verifyscrnshrt() );
  }
}
