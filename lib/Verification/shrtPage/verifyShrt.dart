// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:trend_trove/Verification/NewPassword.dart';
import 'package:trend_trove/Verification/shrtPage/verifyScrnShrt.dart';
import 'package:trend_trove/Verification/varificationForm.dart';



class VerifyShrt extends StatelessWidget {
  const VerifyShrt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(

              padding: EdgeInsets.only(top: 5.5.h, left: 3.w),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        print('back button');
                      },
                      icon: Icon(Icons.arrow_back)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Center(
                child: Text(
                  'Verify Code',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Please enter the code we just sent to email',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 209, 207, 207)),
            ),
            Text(
              'example@email.com',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 11.1.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6.h,
            ),
            Form(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VerifyForm(),
                  VerifyForm(),
                  VerifyForm(),
                  VerifyForm(),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Didn't receivce OTP?",
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 209, 207, 207)),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(             
              'Resend code',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  fontSize: 11.sp,
                  color: Colors.black),
            ),
            SizedBox(
              height: 8.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  // return NewPassword();
                  return Verifyscrnshrt();
                }));
                print("OtpVarification");
              },
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ),
              // child: ContainerButton(
              // name: 'Verify',
              // )
            ),
          ],
        ),
      ) ,
    );
  }
}