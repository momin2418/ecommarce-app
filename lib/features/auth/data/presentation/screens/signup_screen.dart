import 'package:ecommerce_production/shared/widgets/custom_button.dart';
import 'package:ecommerce_production/shared/widgets/custom_divider.dart';
import 'package:ecommerce_production/shared/widgets/custom_google_buton.dart';
import 'package:ecommerce_production/shared/widgets/custom_text_button.dart';
import 'package:ecommerce_production/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ionicons/ionicons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final side = constraints.maxWidth > 500
                ? (constraints.maxWidth - 343) / 2
                : 35.0;
            return SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(side, 30, side, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h,),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    alignment: Alignment.centerLeft,
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff000000),
                      size: 28,
                    ),
                  ),
                  SizedBox(height: 18), // অ্যারো আর Register-এর মাঝের গ্যাপ
                  Text(
                    "Login",
                    style: GoogleFonts.inter(
                      color: const Color(0xff575DFB),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: -0.352,
                    ),
                  ),
                  SizedBox(height: 10.h,),

                  Text(
                      "Login now to track all your expenses and income at a place!",
                    maxLines: 2,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      letterSpacing: -0.365,
                      color: Colors.black,

                    ),
                  ),

                  SizedBox(height: 40.h,),

                  const CustomInputField(
                    label: 'Email',
                    hint: 'Ex: abc@example.com',
                    icon: Ionicons.at_outline,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 28.h),
                  const CustomInputField(
                    label: 'Your Password',
                    hint: 'Password',
                    icon: Ionicons.lock_closed_outline,
                    obscure: true,
                  ),

                  SizedBox(height: 10,),
                  CustomTextButton(
                      text: 'Forgot Password?', onPressed: (){}),


                  SizedBox(height: 30.h,),


                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      // তোমার কাজ
                    },
                  ),
                  SizedBox(height: 30.h,),
                  CustomDivider(),

                  SizedBox(height: 30.h,),
                  CustomGoogleButton(onPressed: (){}),

                  SizedBox(height: 20.h,),
                  AuthSwitchRow(
                    question: 'Already have an account?',
                    actionText: 'Register',
                    onPressed: () {
                      // Login স্ক্রিনে যাও
                    },
                  ),







                ],
              ),
            );
          },
        ),
      ),
    );
  }
}




