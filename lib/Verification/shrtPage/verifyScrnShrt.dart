import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class Verifyscrnshrt extends StatefulWidget {
   Verifyscrnshrt({super.key});

  @override
  State<Verifyscrnshrt> createState() => _VerifyscrnshrtState();

}

class _VerifyscrnshrtState extends State<Verifyscrnshrt> {
      final TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  icon: Icon(Icons.arrow_back),
                ),
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            'Please enter the code we just sent to email',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 136, 135, 135),
            ),
          ),
          Text(
            'example@email.com',
            style: TextStyle(
              color: Colors.red,
              fontSize: 11.1.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 6.h),

          //pinput package we will use here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              // width: width,
              child: Pinput(
                controller: otpController,
                length: 6,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                pinAnimationType: PinAnimationType.slide,
                defaultPinTheme: PinTheme(
                    height: 50.0,
                    width: 50.0,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 25,
                    ),
                    decoration: BoxDecoration(
                        // shape: BoxShape.rectangle,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                          width: 1.8,
                        ))),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Resend code',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  fontSize: 11.sp,
                  color: Colors.black,
                ),
              )),

          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () {
              // verifyOTP(context, otpController.text);
            },
            child: Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ) ,
    );
  }
}