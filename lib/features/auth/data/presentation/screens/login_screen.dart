import 'package:ecommerce_production/shared/widgets/custom_button.dart';
import 'package:ecommerce_production/shared/widgets/custom_text_button.dart';
import 'package:ecommerce_production/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:ionicons/ionicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    "Register",
                    style: GoogleFonts.inter(
                      color: const Color(0xff575DFB),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: -0.352,
                    ),
                  ),
                  SizedBox(height: 10.h,),

                  SizedBox(
                    width: 286,
                    child: Text.rich(
                      TextSpan(
                        style: GoogleFonts.inter(
                          fontSize: 16,

                          height: 19/16,
                          letterSpacing: -0.176,
                          color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: "Create an "
                          ),

                          TextSpan(
                            text: "account ",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff575DFB)
                            )
                          ),
                          TextSpan(text: 'to access all the features of '),

                          TextSpan(
                              text: "Maxpense!",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                wordSpacing: 2
                              ))

                        ]
                      )
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
                    label: 'Your Name',
                    hint: 'Ex. Saul Ramirez',
                    icon: Ionicons.person_outline,
                  ),
                   SizedBox(height: 28.h),
                  const CustomInputField(
                    label: 'Your Password',
                    hint: 'Password',
                    icon: Ionicons.lock_closed_outline,
                    obscure: true,
                  ),

                  SizedBox(height: 40.h,),


                  CustomButton(
                    text: 'Register',
                    onPressed: () {
                      // তোমার কাজ
                    },
                  ),
                  SizedBox(height: 30.h,),

                  AuthSwitchRow(
                    question: 'Already have an account?',
                    actionText: 'Login',
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




